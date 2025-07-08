#!/bin/bash

# Set paths
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PROJECT_ROOT="$(dirname "$(dirname "$SCRIPT_DIR")")"
HYPNO_DIR="$PROJECT_ROOT/data/processed/hypnogram"
ANNOT_DIR="$PROJECT_ROOT/data/processed/edf_data"
LOG_FILE="$PROJECT_ROOT/logs/preprocessing/eannot_log.txt"

mkdir -p "$ANNOT_DIR" "$(dirname "$LOG_FILE")"
echo "# Eannot Generation Log - $(date)" >> "$LOG_FILE"
echo "" >> "$LOG_FILE"

# Enable nullglob so for loop doesn't use literal *.txt if empty
shopt -s nullglob
HYPNO_FILES=("$HYPNO_DIR"/*.txt)

# Check if any hypnogram files exist
if [[ ${#HYPNO_FILES[@]} -eq 0 ]]; then
    echo "Warning: No hypnogram .txt files found in $HYPNO_DIR"
    exit 1
fi

PROCESSED_COUNT=0
SKIPPED_COUNT=0
INVALID_COUNT=0

# Loop through hypnogram files
for HYPNO_FILE in "${HYPNO_FILES[@]}"; do
    BASENAME=$(basename "$HYPNO_FILE" .txt)
    EANNOT_FILE="$ANNOT_DIR/${BASENAME}.eannot"

    # Skip if already exists
    if [[ -f "$EANNOT_FILE" ]]; then
        echo "Skipping $BASENAME — .eannot already exists" >> "$LOG_FILE"
        ((SKIPPED_COUNT++))
        continue
    fi

    echo "Processing $BASENAME"

    # Remove header and keep only first column
    sed '1,/^Sleep Stage/d' "$HYPNO_FILE" | cut -f1 > "$EANNOT_FILE"

    # Convert stage labels to Luna format
    sed -i '' -e 's/SLEEP-S0/W/' \
              -e 's/SLEEP-S1/N1/' \
              -e 's/SLEEP-S2/N2/' \
              -e 's/SLEEP-S3/N3/' \
              -e 's/SLEEP-REM/R/' \
              -e 's/SLEEP-MT/MT/' "$EANNOT_FILE"

    # Validate stage labels
    if grep -qvE '^(W|N1|N2|N3|R|MT)$' "$EANNOT_FILE"; then
        echo "Warning: $BASENAME.eannot contains unknown stage labels" >> "$LOG_FILE"
        ((INVALID_COUNT++))
    fi

    echo "PROCESSED: $BASENAME" >> "$LOG_FILE"
    ((PROCESSED_COUNT++))
done

# Summary
echo ""
echo "Processed: $PROCESSED_COUNT file(s)"
echo "Skipped:   $SKIPPED_COUNT existing .eannot file(s)"
echo "Invalid:   $INVALID_COUNT file(s) with unknown labels (check log)"

echo ""
echo "Done generating .eannot files."
echo "Output: $ANNOT_DIR"
echo "Log file: $LOG_FILE"
