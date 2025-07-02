#!/bin/bash

# Set base project directory
if [[ $(basename "$PWD") == "setup" ]]; then
    DREEM_DIR=$(realpath "$PWD/../..")
else
    DREEM_DIR=$(pwd)
fi

echo "Setting up Dreem project at: $DREEM_DIR"

# --------------------------
# Core directory structure
# --------------------------
mkdir -p "$DREEM_DIR/data/raw"
mkdir -p "$DREEM_DIR/data/processed/edfs"
mkdir -p "$DREEM_DIR/data/processed/annotations"
mkdir -p "$DREEM_DIR/data/processed/sample_list"
mkdir -p "$DREEM_DIR/data/processed/metadata"
mkdir -p "$DREEM_DIR/data/processed/luna_outputs"
mkdir -p "$DREEM_DIR/analysis"
mkdir -p "$DREEM_DIR/scripts/preprocessing"
mkdir -p "$DREEM_DIR/scripts/analysis"
mkdir -p "$DREEM_DIR/scripts/luna_cmds"
mkdir -p "$DREEM_DIR/documentation/references"
mkdir -p "$DREEM_DIR/documentation/slides"
mkdir -p "$DREEM_DIR/logs"

# --------------------------
# Migrate participant folders to data/raw/
# --------------------------
echo "Organizing participant data under data/raw/"
for subject in "$DREEM_DIR"/MS*; do
    if [[ -d "$subject" ]]; then
        subject_id=$(basename "$subject")
        target_subject_dir="$DREEM_DIR/data/raw/$subject_id"
        mkdir -p "$target_subject_dir"

        for visit_pattern in "Visit_1" "Visit_2" "${subject_id}_Visit_1" "${subject_id}_Visit_2"; do
            if [[ -d "$subject/$visit_pattern" ]]; then
                visit_num=${visit_pattern##*_}
                new_visit_dir="$target_subject_dir/Visit_$visit_num"
                mkdir -p "$new_visit_dir"
                echo "Processing $visit_pattern for $subject_id"

                for night in "$subject/$visit_pattern"/*; do
                    [[ -d "$night" ]] || continue
                    night_name=$(basename "$night")
                    target_night_dir="$new_visit_dir/$night_name"

                    mkdir -p "$target_night_dir/edf"
                    mkdir -p "$target_night_dir/hypnogram"
                    mkdir -p "$target_night_dir/reports"

                    for file in "$night"/*; do
                        [[ -f "$file" ]] || continue
                        filename=$(basename "$file")

                        case "$file" in
                            *.edf)
                                mv -n "$file" "$target_night_dir/edf/$filename"
                                ;;
                            *_hypnogram.txt)
                                mv -n "$file" "$target_night_dir/hypnogram/$filename"
                                ;;
                            *.h5|*.csv|*.tar.gz)
                                mv -n "$file" "$target_night_dir/reports/$filename"
                                ;;
                        esac
                    done

                    [[ -z "$(find "$night" -type f)" ]] && rm -rf "$night"
                done

                [[ -z "$(find "$subject/$visit_pattern" -mindepth 1 -type d)" ]] && rm -rf "$subject/$visit_pattern"
            fi
        done

        # Handle loose nights (no visit folder)
        loose_night_found=0
        for night in "$subject"/*; do
            [[ -d "$night" ]] || continue
            night_name=$(basename "$night")
            [[ "$night_name" =~ Visit_ ]] && continue
            loose_night_found=1
            break
        done

        if [[ $loose_night_found -eq 1 ]]; then
            loose_visit_dir="$target_subject_dir/Visit_1"
            mkdir -p "$loose_visit_dir"
            echo "No visits found for $subject_id, assigning nights to Visit_1"

            for night in "$subject"/*; do
                [[ -d "$night" ]] || continue
                night_name=$(basename "$night")
                [[ "$night_name" =~ Visit_ ]] && continue
                target_night_dir="$loose_visit_dir/$night_name"

                mkdir -p "$target_night_dir/edf"
                mkdir -p "$target_night_dir/hypnogram"
                mkdir -p "$target_night_dir/reports"

                for file in "$night"/*; do
                    [[ -f "$file" ]] || continue
                    filename=$(basename "$file")

                    case "$file" in
                        *.edf)
                            mv -n "$file" "$target_night_dir/edf/$filename"
                            ;;
                        *_hypnogram.txt)
                            mv -n "$file" "$target_night_dir/hypnogram/$filename"
                            ;;
                        *.h5|*.csv|*.tar.gz)
                            mv -n "$file" "$target_night_dir/reports/$filename"
                            ;;
                    esac
                done

                [[ -z "$(find "$night" -type f)" ]] && rm -rf "$night"
            done
        fi

        # Clean up empty original subject directory
        if [[ -z "$(find "$subject" -type f)" ]]; then
            echo "Removing empty subject folder: $subject"
            rm -rf "$subject"
        fi
    fi

done

# --------------------------
# README files
# --------------------------
[[ ! -f "$DREEM_DIR/README.md" ]] && echo "# Dreem Sleep Study Project" > "$DREEM_DIR/README.md"
[[ ! -f "$DREEM_DIR/data/processed/README.md" ]] && echo "# Processed data (.edf, .eannot, dbs)" > "$DREEM_DIR/data/processed/README.md"
[[ ! -f "$DREEM_DIR/analysis/README.md" ]] && echo "# Analysis outputs (figures, stats)" > "$DREEM_DIR/analysis/README.md"
[[ ! -f "$DREEM_DIR/scripts/README.md" ]] && echo "# Scripts for preprocessing and analysis" > "$DREEM_DIR/scripts/README.md"
[[ ! -f "$DREEM_DIR/documentation/README.md" ]] && echo "# Project documentation, slides, references" > "$DREEM_DIR/documentation/README.md"

# Final cleanup: remove original MS## folders if empty (ignore hidden files)
echo "Cleaning up top-level participant folders..."

for subject in "$DREEM_DIR"/MS*; do
    if [[ -d "$subject" ]]; then
        # Check for visible or hidden files
        if [[ -z "$(find "$subject" -type f ! -name '.*')" ]]; then
            echo "Removing empty folder: $subject"
            rm -rf "$subject"
        else
            echo "⚠️ Folder not empty (skipped): $subject"
            find "$subject" -type f
        fi
    fi
done


echo "✅ Project directory setup complete."

