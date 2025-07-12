#!/bin/bash

# Run this after renaming the EDF and hypnogram files
# (extract_file_metadata.sh, manual renaming to rename_manifest.csv, apply_rename_manifest.sh)

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PROJECT_ROOT="$(dirname "$(dirname "$SCRIPT_DIR")")"
LOG_MASTER="$PROJECT_ROOT/logs/preprocessing/post_rename_master_log.txt"
NOW=$(date '+%Y-%m-%d %H:%M:%S')

mkdir -p "$(dirname "$LOG_MASTER")"
echo "=== Post-Rename Pipeline Log: $NOW ===" >> "$LOG_MASTER"

# Step 1: Generate .eannot files
echo "--- Step 1: Generate .eannot files ---" | tee -a "$LOG_MASTER"
"$PROJECT_ROOT/scripts/preprocessing/generate_eannot.sh" >> "$LOG_MASTER" 2>&1

# Step 2: Filter EDFs ≥ 4 hours
echo "--- Step 2: Filter EDFs ≥ 4 hours ---" | tee -a "$LOG_MASTER"
"$PROJECT_ROOT/scripts/preprocessing/filter_4hr_edfs.sh" >> "$LOG_MASTER" 2>&1

# Step 3: Build raw Luna DB
echo "--- Step 3: Build Luna raw DB ---" | tee -a "$LOG_MASTER"
"$PROJECT_ROOT/scripts/preprocessing/build_initial_dreem_db.sh" >> "$LOG_MASTER" 2>&1

echo "Preprocessing pipeline complete. Review log at: $LOG_MASTER" | tee -a "$LOG_MASTER"
