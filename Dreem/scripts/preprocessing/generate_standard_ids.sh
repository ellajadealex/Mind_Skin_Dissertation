#!/bin/bash

# Set paths relative to the script location
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PROJECT_ROOT="$(dirname "$(dirname "$SCRIPT_DIR")")"
RAW_DIR="$PROJECT_ROOT/data/raw"
PROCESSED_EDF_DIR="$PROJECT_ROOT/data/processed/edf_data"
PROCESSED_HYPNO_DIR="$PROJECT_ROOT/data/processed/hypnogram"
ID_MAP="$PROJECT_ROOT/data/processed/metadata/id_map.csv"
LOG_FILE="$PROJECT_ROOT/logs/preprocessing/rename_log.txt"

mkdir -p "$PROCESSED_EDF_DIR" "$PROCESSED_HYPNO_DIR" "$(dirname "$ID_MAP")" "$(dirname "$LOG_FILE")"

# Initialize or append to id_map.csv and log file
if [[ ! -f "$ID_MAP" ]]; then
    echo "standard_id,participant_id,visit,night_folder,edf_filename,hypnogram_filename,date_start,time_start,date_end,time_end,quality_flag" > "$ID_MAP"
fi

echo "# Rename Log - $(date)" >> "$LOG_FILE"
echo "" >> "$LOG_FILE"

SKIPPED_ENTRIES=()

# Function to convert date to DD/MM/YYYY
format_date() {
    local input_date="$1"
    echo "${input_date:6:2}/${input_date:4:2}/${input_date:0:4}"
}

# Function to convert time to HH:MM
format_time() {
    local input_time="$1"
    echo "${input_time:0:2}:${input_time:2:2}"
}

# Loop over all participants and visits
for PARTICIPANT_DIR in "$RAW_DIR"/MS*/; do
    PARTICIPANT_ID=$(basename "$PARTICIPANT_DIR")

    for VISIT_DIR in "$PARTICIPANT_DIR"/*Visit*/; do
        [[ -d "$VISIT_DIR" ]] || continue
        VISIT_NAME=$(basename "$VISIT_DIR")
        VISIT_NUM=$(echo "$VISIT_NAME" | grep -oE 'Visit_([0-9]+)' | grep -oE '[0-9]+')
        VISIT_NUM=${VISIT_NUM:-1}  # Default to 1 if not found

        NIGHT_FOLDERS=()
        while IFS= read -r line; do
            NIGHT_FOLDERS+=("$line")
        done < <(find "$VISIT_DIR" -mindepth 1 -maxdepth 1 -type d -exec basename {} \; | sort)

        NIGHT_NUM=1
        for NIGHT in "${NIGHT_FOLDERS[@]}"; do
            NIGHT_DIR="$VISIT_DIR/$NIGHT"
            EDF_DIR="$NIGHT_DIR/edf"
            HYPNO_DIR="$NIGHT_DIR/hypnogram"

            EDF_FILE=$(find "$EDF_DIR" -type f -name "*.edf" | head -n 1)
            HYPNO_FILE=$(find "$HYPNO_DIR" -type f -name "*.txt" | head -n 1)

            STANDARD_ID="${PARTICIPANT_ID}_V${VISIT_NUM}_N$NIGHT_NUM"

            if [[ -z "$EDF_FILE" || -z "$HYPNO_FILE" ]]; then
                echo "⚠️  Skipping $NIGHT_DIR — missing EDF or hypnogram file"
                echo "SKIPPED: $STANDARD_ID — missing EDF or hypnogram file at $NIGHT_DIR" >> "$LOG_FILE"
                SKIPPED_ENTRIES+=("$STANDARD_ID")
                continue
            fi

            # Extract segments based on patterns
            PARTS=($(echo "$NIGHT" | tr '_' ' '))
            DATE_START=""; TIME_START=""; DATE_END=""; TIME_END=""; QUALITY_FLAG=""

            for PART in "${PARTS[@]}"; do
                if [[ "$PART" =~ ^[0-9]{8}$ && -z "$DATE_START" ]]; then
                    DATE_START="$PART"
                elif [[ "$PART" =~ ^[0-9]{4}$ && -z "$TIME_START" ]]; then
                    TIME_START="$PART"
                elif [[ "$PART" =~ ^[0-9]{8}$ && -n "$DATE_START" && -z "$DATE_END" ]]; then
                    DATE_END="$PART"
                elif [[ "$PART" =~ ^[0-9]{4}$ && -n "$TIME_START" && -z "$TIME_END" ]]; then
                    TIME_END="$PART"
                elif [[ "$PART" =~ ^[a-zA-Z]+$ ]]; then
                    QUALITY_FLAG="$PART"
                fi
            done

            # Fallback if date_end is missing (same day)
            if [[ -z "$DATE_END" ]]; then
                DATE_END="$DATE_START"
            fi

            # Default quality to 'good' if missing or misparsed as 'DREEM'
            if [[ -z "$QUALITY_FLAG" || "$QUALITY_FLAG" == "DREEM" ]]; then
                QUALITY_FLAG="good"
            fi

            DATE_START_FMT=$(format_date "$DATE_START")
            TIME_START_FMT=$(format_time "$TIME_START")
            DATE_END_FMT=$(format_date "$DATE_END")
            TIME_END_FMT=$(format_time "$TIME_END")

            NEW_EDF="$PROCESSED_EDF_DIR/${STANDARD_ID}.edf"
            NEW_HYPNO="$PROCESSED_HYPNO_DIR/${STANDARD_ID}.txt"

            if [[ -f "$NEW_EDF" && -f "$NEW_HYPNO" ]]; then
                echo "⏭️  Skipping $STANDARD_ID — already processed"
                echo "SKIPPED: $STANDARD_ID — already processed" >> "$LOG_FILE"
                SKIPPED_ENTRIES+=("$STANDARD_ID")
                ((NIGHT_NUM++))
                continue
            fi

            echo "✅ Processing $STANDARD_ID"
            cp "$EDF_FILE" "$NEW_EDF"
            cp "$HYPNO_FILE" "$NEW_HYPNO"

            echo "$STANDARD_ID,$PARTICIPANT_ID,$VISIT_NUM,$NIGHT,$(basename "$EDF_FILE"),$(basename "$HYPNO_FILE"),$DATE_START_FMT,$TIME_START_FMT,$DATE_END_FMT,$TIME_END_FMT,$QUALITY_FLAG" >> "$ID_MAP"
            echo "PROCESSED: $STANDARD_ID" >> "$LOG_FILE"

            ((NIGHT_NUM++))
        done
    done
done

if (( ${#SKIPPED_ENTRIES[@]} > 0 )); then
    echo -e "\n⚠️  Summary of Skipped Entries:" >> "$LOG_FILE"
    for SKIPPED in "${SKIPPED_ENTRIES[@]}"; do
        echo " - $SKIPPED" >> "$LOG_FILE"
    done
    echo -e "\n⚠️  ${#SKIPPED_ENTRIES[@]} entries were skipped. See log: $LOG_FILE"
else
    echo "\n✅ All entries processed successfully."
fi

echo "✅ Done. Files copied and renamed."
echo "   → EDFs:       $PROCESSED_EDF_DIR"
echo "   → Hypnograms: $PROCESSED_HYPNO_DIR"
echo "   → ID map:     $ID_MAP"
echo "   → Log file:   $LOG_FILE"
