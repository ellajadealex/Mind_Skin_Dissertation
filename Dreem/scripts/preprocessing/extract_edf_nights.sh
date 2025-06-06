#!/bin/bash

# Set up paths
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PROJECT_ROOT="$(dirname "$(dirname "$SCRIPT_DIR")")"
RAW_EDF_DIR="$PROJECT_ROOT/data/raw"
META_DIR="$PROJECT_ROOT/data/processed/metadata"
TMP_LST="$META_DIR/all_raw_edf.lst"
HEADER_DB="$META_DIR/edf_headers.db"
EDF_TIME_CSV="$META_DIR/edf_start_times.csv"

mkdir -p "$META_DIR"

# Step 1: Build list of all raw EDFs
find "$RAW_EDF_DIR" -type f -name "*.edf" > "$TMP_LST"

# Step 2: Build temporary EDF header database
luna --build "$RAW_EDF_DIR" -ext=.edf > "$TMP_LST"
luna "$TMP_LST" -o "$HEADER_DB" -s HEADERS

# Step 3: Extract start times and assign night based on heuristic
# Heuristic: if start time hour < 12, assign to previous date

# Output CSV header
echo "filename,start_time,assigned_night" > "$EDF_TIME_CSV"

# Parse destrat output
while IFS=$'\t' read -r ID DATE TIME; do
    if [[ "$TIME" =~ ^([0-9]{2}):([0-9]{2}) ]]; then
        HOUR=${BASH_REMATCH[1]}
        if (( 10#$HOUR < 12 )); then
            NIGHT_DATE=$(date -j -f "%Y-%m-%d" "$DATE" -v -1d +%Y-%m-%d)
        else
            NIGHT_DATE="$DATE"
        fi
        echo "$ID,$DATE $TIME,$NIGHT_DATE" >> "$EDF_TIME_CSV"
    fi
# Use destrat to pull from headers
done < <(destrat "$HEADER_DB" +HEADERS -r CHRONO | awk '{print $1, $2, $3}')

# Report
echo "✅ EDF start times extracted and night assigned."
echo "→ Output: $EDF_TIME_CSV"
echo "→ Header DB: $HEADER_DB"

