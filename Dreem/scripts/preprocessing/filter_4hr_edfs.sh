#!/bin/bash

# Filter EDF recordings ≥ 4 hours and generate sample list

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PROJECT_ROOT="$(dirname "$(dirname "$SCRIPT_DIR")")"
PROCESSED_DIR="$PROJECT_ROOT/data/processed"
EDF_DIR="$PROCESSED_DIR/edf_data"
ANNOTATION_DIR="$PROCESSED_DIR/edf_data"
SAMPLE_LIST_DIR="$PROCESSED_DIR/sample_list"
DB_DIR="$SAMPLE_LIST_DIR"
LOG_DIR="$PROJECT_ROOT/logs/preprocessing"
LOG_FILE="$LOG_DIR/4hr_edfs_log.txt"

mkdir -p "$SAMPLE_LIST_DIR" "$DB_DIR" "$LOG_DIR"

LST_FILE="$SAMPLE_LIST_DIR/all_edf.lst"
DB_FILE="$DB_DIR/headers_4hr_lst.db"
FILTERED_LST="$SAMPLE_LIST_DIR/min_4hr_edf.lst"

# Check that EDFs have matching .eannot files
EDF_FILES=("$EDF_DIR"/*.edf)
MATCHING_IDS=()
for EDF_FILE in "${EDF_FILES[@]}"; do
    BASENAME=$(basename "$EDF_FILE" .edf)
    if [[ -f "$EDF_DIR/$BASENAME.eannot" ]]; then
        MATCHING_IDS+=("$BASENAME")
    fi
done

if [[ ${#MATCHING_IDS[@]} -eq 0 ]]; then
    echo "Error: No EDFs with matching .eannot files found in $EDF_DIR"
    exit 1
fi

# Use Luna to build sample list correctly
echo "Building Luna sample list from: $EDF_DIR"
luna --build "$EDF_DIR" -ext=.eannot > "$LST_FILE"

# Run HEADERS
echo "Running Luna HEADERS on all samples"
luna "$LST_FILE" -o "$DB_FILE" -s HEADERS

# Filter for recordings ≥ 4 hours
echo "Filtering EDFs with duration ≥ 4 hours"
destrat "$DB_FILE" +HEADERS -v ID TOT_DUR_SEC \
  | awk '$2 >= 14400 {print $1}' > "$SAMPLE_LIST_DIR/tmp_ids.txt"

awk 'NR==FNR {filter[$1]; next} $1 in filter' \
    "$SAMPLE_LIST_DIR/tmp_ids.txt" "$LST_FILE" > "$FILTERED_LST"

# Check if any files passed filter
if [[ ! -s "$FILTERED_LST" ]]; then
    echo "Error: No EDFs ≥ 4 hours found. Exiting."
    exit 1
fi

# Log summary
NOW=$(date '+%Y-%m-%d %H:%M:%S')
echo "=== Run on $NOW ===" >> "$LOG_FILE"

TOTAL_FILES=$(wc -l < "$LST_FILE")
KEPT_FILES=$(wc -l < "$FILTERED_LST")
EXCLUDED_FILES=$((TOTAL_FILES - KEPT_FILES))

echo "Total EDFs processed: $TOTAL_FILES" >> "$LOG_FILE"
echo "Files meeting 4hr threshold: $KEPT_FILES" >> "$LOG_FILE"
echo "Files excluded: $EXCLUDED_FILES" >> "$LOG_FILE"
echo "" >> "$LOG_FILE"
echo "Participant breakdown:" >> "$LOG_FILE"

cut -d '_' -f1 "$LST_FILE" | sort | uniq | while read -r PARTICIPANT; do
  TOTAL_P=$(grep "^$PARTICIPANT" "$LST_FILE" | wc -l)
  KEPT_P=$(grep "^$PARTICIPANT" "$FILTERED_LST" | wc -l)
  EXCLUDED_P=$((TOTAL_P - KEPT_P))
  echo "$PARTICIPANT: kept=$KEPT_P, excluded=$EXCLUDED_P" >> "$LOG_FILE"
done

rm "$SAMPLE_LIST_DIR/tmp_ids.txt"

echo "Done. Filtered sample list saved to: $FILTERED_LST"