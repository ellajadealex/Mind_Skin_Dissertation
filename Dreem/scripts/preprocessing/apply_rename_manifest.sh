#!/bin/bash

# Paths
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PROJECT_ROOT="$(dirname "$(dirname "$SCRIPT_DIR")")"
MANIFEST="$PROJECT_ROOT/data/processed/metadata/rename_manifest.csv"
RAW_DIR="$PROJECT_ROOT/data/raw"
EDF_OUT="$PROJECT_ROOT/data/processed/edf_data"
HYPNO_OUT="$PROJECT_ROOT/data/processed/hypnogram"
LOG_FILE="$PROJECT_ROOT/logs/preprocessing/rename_manifest_log.txt"

mkdir -p "$EDF_OUT" "$HYPNO_OUT" "$(dirname "$LOG_FILE")"

echo "# Rename Manifest Log - $(date)" >> "$LOG_FILE"

# Initialize failure tracking
FAILED_IDS=()

tail -n +2 "$MANIFEST" | while IFS=',' read -r STANDARD_ID PARTICIPANT_ID VISIT DATE_START TIME_START DATE_END TIME_END NIGHT EDF_FILE HYPNO_FILE QUALITY_FLAG; do
    EDF_SRC="$RAW_DIR/$PARTICIPANT_ID/Visit_$VISIT/$NIGHT/edf/$EDF_FILE"
    HYPNO_SRC="$RAW_DIR/$PARTICIPANT_ID/Visit_$VISIT/$NIGHT/hypnogram/$HYPNO_FILE"

    EDF_DST="$EDF_OUT/${STANDARD_ID}.edf"
    HYPNO_DST="$HYPNO_OUT/${STANDARD_ID}.txt"

    if [[ -f "$EDF_SRC" && -f "$HYPNO_SRC" ]]; then
        cp "$EDF_SRC" "$EDF_DST"
        cp "$HYPNO_SRC" "$HYPNO_DST"
        echo "$STANDARD_ID: Copied and renamed" >> "$LOG_FILE"
    else
        echo "$STANDARD_ID: Missing source file(s):" >> "$LOG_FILE"
        echo "  EDF:    $EDF_SRC" >> "$LOG_FILE"
        echo "  Hypno:  $HYPNO_SRC" >> "$LOG_FILE"
        FAILED_IDS+=("$STANDARD_ID")
    fi
done

# Always print summary
echo ""
echo "Output EDFs:  $EDF_OUT"
echo "Output TXT:   $HYPNO_OUT"
echo "Log file:     $LOG_FILE"

# Error summary
if (( ${#FAILED_IDS[@]} > 0 )); then
    echo ""
    echo "Some files were not found or not renamed:"
    for ID in "${FAILED_IDS[@]}"; do
        echo "  - $ID"
    done
    exit 1
else
    echo ""
    echo "All entries processed successfully."
fi
