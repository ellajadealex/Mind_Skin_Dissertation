#!/bin/bash

# Build a Luna DB from all valids EDF recordings

# Set directory paths
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PROJECT_ROOT="$(dirname "$(dirname "$SCRIPT_DIR")")"
EDF_DIR="$PROJECT_ROOT/data/processed/edf_data"
LST_FILE="$PROJECT_ROOT/data/processed/sample_list/min_4hr_edf.lst"
CMD_FILE="$PROJECT_ROOT/scripts/luna_cmds/dreem_initial_db.txt"
OUTPUT_DB="$PROJECT_ROOT/data/processed/luna_outputs/dreem_initial.db"
LOG_DIR="$PROJECT_ROOT/logs/db_build"
LOG_FILE="$LOG_DIR/dreem_db_build_log.txt"

mkdir -p "$(dirname "$OUTPUT_DB")" "$LOG_DIR"

# Log start time
NOW=$(date '+%Y-%m-%d %H:%M:%S')
echo "=== Luna DB Build Log: $NOW ===" >> "$LOG_FILE"

# Safety checks
if [[ ! -f "$CMD_FILE" ]]; then
    echo "Command file not found: $CMD_FILE" | tee -a "$LOG_FILE"
    exit 1
fi

if [[ ! -f "$LST_FILE" ]]; then
    echo "Sample list not found: $LST_FILE" | tee -a "$LOG_FILE"
    exit 1
fi

echo "Running Luna on sample list: $LST_FILE" | tee -a "$LOG_FILE"
echo "Using command file: $CMD_FILE" | tee -a "$LOG_FILE"
echo "Output database: $OUTPUT_DB" | tee -a "$LOG_FILE"

# Run Luna and log output
luna "$LST_FILE" -o "$OUTPUT_DB" < "$CMD_FILE" >> "$LOG_FILE" 2>&1

# Check Luna exit status
if [[ $? -eq 0 ]]; then
    FILE_COUNT=$(wc -l < "$LST_FILE")
    echo "Successfully created database with $FILE_COUNT EDFs" | tee -a "$LOG_FILE"
else
    echo "Luna command failed. Check logs for details." | tee -a "$LOG_FILE"
    exit 1
fi

echo "" >> "$LOG_FILE"
