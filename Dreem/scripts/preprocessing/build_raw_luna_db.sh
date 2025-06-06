#!/bin/bash

# Paths
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PROJECT_ROOT="$(dirname "$(dirname "$SCRIPT_DIR")")"
EDF_DIR="$PROJECT_ROOT/data/processed/edf_data"
LST_FILE="$PROJECT_ROOT/data/processed/sample_list/min_4hr_edf.lst"
CMD_FILE="$PROJECT_ROOT/scripts/luna_cmds/luna_db_raw.txt"
OUTPUT_DB="$PROJECT_ROOT/data/processed/luna_outputs/dreem_raw.db"
LOG_DIR="$PROJECT_ROOT/logs/preprocessing"
LOG_FILE="$LOG_DIR/luna_db_build_log.txt"

mkdir -p "$(dirname "$OUTPUT_DB")" "$LOG_DIR"

# Log start
NOW=$(date '+%Y-%m-%d %H:%M:%S')
echo "=== Luna DB Build Log: $NOW ===" >> "$LOG_FILE"

if [[ ! -f "$CMD_FILE" ]]; then
    echo "❌ Command file not found: $CMD_FILE" | tee -a "$LOG_FILE"
    exit 1
fi

if [[ ! -f "$LST_FILE" ]]; then
    echo "❌ Sample list not found: $LST_FILE" | tee -a "$LOG_FILE"
    exit 1
fi

echo "Running Luna on $LST_FILE using $CMD_FILE" | tee -a "$LOG_FILE"

# Run Luna to generate database and append output to log
luna "$LST_FILE" -o "$OUTPUT_DB" < "$CMD_FILE" >> "$LOG_FILE" 2>&1

if [[ $? -eq 0 ]]; then
    FILE_COUNT=$(wc -l < "$LST_FILE")
    echo "✅ Successfully created database with $FILE_COUNT EDFs" | tee -a "$LOG_FILE"
    echo "→ Output DB: $OUTPUT_DB" | tee -a "$LOG_FILE"
else
    echo "❌ Luna command failed" | tee -a "$LOG_FILE"
fi

echo "" >> "$LOG_FILE"
