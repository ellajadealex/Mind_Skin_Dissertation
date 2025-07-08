#!/bin/bash

# Paths
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PROJECT_ROOT="$(dirname "$(dirname "$SCRIPT_DIR")")"
RAW_DIR="$PROJECT_ROOT/data/raw"
ID_MAP="$PROJECT_ROOT/data/processed/metadata/id_map.csv"
mkdir -p "$(dirname "$ID_MAP")"

# Header
echo "participant_id,visit,date_start,time_start,date_end,time_end,night_folder,edf_filename,hypnogram_filename,quality_flag" > "$ID_MAP"

# Functions
format_date() {
    local input="$1"
    echo "${input:6:2}/${input:4:2}/${input:0:4}"
}

format_time() {
    local input="$1"
    echo "${input:0:2}:${input:2:2}"
}

# Loop over raw data
for PARTICIPANT_DIR in "$RAW_DIR"/MS*/; do
    PARTICIPANT_ID=$(basename "$PARTICIPANT_DIR")

    for VISIT_DIR in "$PARTICIPANT_DIR"/*Visit*/; do
        [[ -d "$VISIT_DIR" ]] || continue
        VISIT_NUM=$(echo "$VISIT_DIR" | grep -oE 'Visit_([0-9]+)' | grep -oE '[0-9]+')
        VISIT_NUM=${VISIT_NUM:-1}

        for NIGHT_DIR in "$VISIT_DIR"/*/; do
            [[ -d "$NIGHT_DIR" ]] || continue
            NIGHT=$(basename "$NIGHT_DIR")

            EDF_FILE=$(find "$NIGHT_DIR/edf" -type f -name "*.edf" | head -n 1)
            HYPNO_FILE=$(find "$NIGHT_DIR/hypnogram" -type f -name "*.txt" | head -n 1)

            [[ -f "$EDF_FILE" && -f "$HYPNO_FILE" ]] || continue

            # Extract components from NIGHT
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

            [[ -z "$DATE_END" ]] && DATE_END="$DATE_START"
            [[ -z "$QUALITY_FLAG" || "$QUALITY_FLAG" == "DREEM" ]] && QUALITY_FLAG="good"

            echo "$PARTICIPANT_ID,$VISIT_NUM,$(format_date "$DATE_START"),$(format_time "$TIME_START"),$(format_date "$DATE_END"),$(format_time "$TIME_END"),$NIGHT,$(basename "$EDF_FILE"),$(basename "$HYPNO_FILE"),$QUALITY_FLAG" >> "$ID_MAP"
        done
    done
done

echo "Metadata extracted to: $ID_MAP"

