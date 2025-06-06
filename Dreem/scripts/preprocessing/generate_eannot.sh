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

# Loop through all hypnogram files
for HYPNO_FILE in "$HYPNO_DIR"/*.txt; do
    BASENAME=$(basename "$HYPNO_FILE" .txt)
    EANNOT_FILE="$ANNOT_DIR/${BASENAME}.eannot"

    # Skip if already exists
    if [[ -f "$EANNOT_FILE" ]]; then
        echo "⏭️  Skipping $BASENAME — .eannot already exists" >> "$LOG_FILE"
        continue
    fi

    echo "✅ Processing $BASENAME"

    # Remove header and keep only first column
    sed '1,/^Sleep Stage/d' "$HYPNO_FILE" | cut -f1 > "$EANNOT_FILE"

    # Convert stage labels to Luna format
    sed -i '' -e 's/SLEEP-S0/W/' \
              -e 's/SLEEP-S1/N1/' \
              -e 's/SLEEP-S2/N2/' \
              -e 's/SLEEP-S3/N3/' \
              -e 's/SLEEP-REM/R/' \
              -e 's/SLEEP-MT/MT/' "$EANNOT_FILE"

    echo "PROCESSED: $BASENAME" >> "$LOG_FILE"
done

echo -e "\n✅ Done generating .eannot files."
echo "   → Output: $ANNOT_DIR"
echo "   → Log file: $LOG_FILE"
