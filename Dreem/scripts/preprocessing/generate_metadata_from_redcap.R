# Load required libraries
library(dplyr)
library(readr)
library(stringr)

# === Paths (relative to this script) ===
redcap_path  <- "../../../Redcap/data/cleaned/redcap_cleaned.csv"
lst_path     <- "../../data/processed/sample_list/min_4hr_edf.lst"
output_path  <- "../../data/processed/metadata/db_metadata.csv"

# === Load REDCap data ===
redcap <- read_csv(redcap_path, show_col_types = FALSE) %>%
  select(subject_id, reg_grp) %>%                           # Use reg_grp instead of group
  mutate(
    subject_id = toupper(trimws(subject_id)),               # Clean IDs
    group = case_when(
      str_detect(reg_grp, "Group 1") ~ "severe AE",
      str_detect(reg_grp, "Group 2") ~ "mild AE",
      str_detect(reg_grp, "Group 3") ~ "healthy controls",
      TRUE ~ NA_character_
    )
  ) %>%
  filter(!is.na(group)) %>%
  distinct(subject_id, group)

# === Load list of EDFs ===
lst <- read_lines(lst_path)

# === Extract metadata from filenames ===
standard_ids   <- str_remove(basename(lst), "\\.(edf|eannot)$")
participant_ids <- str_extract(standard_ids, "MS\\d+")
visit_nums     <- str_extract(standard_ids, "V\\d+")
night_nums     <- str_extract(standard_ids, "N\\d+")

# === Combine and join ===
metadata <- tibble(
  standard_id = standard_ids,
  subject_id  = participant_ids,
  visit       = visit_nums,
  night       = night_nums
) %>%
  left_join(redcap, by = "subject_id") %>%
  select(standard_id, subject_id, group, visit, night)

# === Write output ===
write_csv(metadata, output_path)
cat("Metadata written to:", output_path, "\n")
