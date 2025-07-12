# Load required libraries
library(dplyr)
library(readr)
library(stringr)

# === Paths (relative to this script) ===
redcap_path  <- "../../../Redcap/data/cleaned/redcap_clean.csv"
lst_path     <- "../../data/processed/sample_list/min_4hr_edf.lst"
output_path  <- "../../data/processed/metadata/id_group_map.csv"

# === Load REDCap data ===
redcap <- read_csv(redcap_path, show_col_types = FALSE) %>%
  select(subject_id, group) %>%                      # Keep only ID and group
  mutate(subject_id = toupper(trimws(subject_id))) %>%  # Clean: uppercase & remove spaces
  distinct()                                         # Drop any duplicate rows

# === Load list of EDFs ===
lst <- read_lines(lst_path)

# === Extract IDs ===
standard_ids <- str_remove(basename(lst), "\\.(edf|eannot)$")
participant_ids <- str_extract(standard_ids, "MS\\d+")   # Extract MS ID (e.g., MS01)

# === Join with REDCap data ===
metadata <- tibble(
  standard_id = standard_ids,
  subject_id  = participant_ids
) %>%
  left_join(redcap, by = "subject_id") %>%     # Add group from REDCap
  filter(!is.na(group)) %>%                    # Drop entries not found in REDCap
  select(standard_id, group)

# === Write output ===
write_csv(metadata, output_path)
cat("Metadata written to:", output_path, "\n")
