#!/bin/bash

# Get the current directory
curr_dir=$(basename "$PWD")

# Determine base directory
if [ "$curr_dir" == "scripts" ]; then
    base_dir="../"
elif [ "$curr_dir" == "Redcap" ]; then
    base_dir="./"
else
    echo "Please run this script from either the 'Redcap' or 'Redcap/scripts' directory."
    exit 1
fi

# Create core directories
mkdir -p "${base_dir}data"
mkdir -p "${base_dir}scripts"

# Create data subdirectories
mkdir -p "${base_dir}data/cleaned"
mkdir -p "${base_dir}data/collated"
mkdir -p "${base_dir}data/intermediate"
mkdir -p "${base_dir}data/metadata"
mkdir -p "${base_dir}data/raw"

# Create scripts subdirectories
mkdir -p "${base_dir}scripts/clean_collate"
mkdir -p "${base_dir}scripts/database_build"

echo "Folder structure created relative to '${base_dir}'"
