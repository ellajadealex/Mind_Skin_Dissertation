library(readr)

# Define file paths
raw_data_path <- "data/raw/MindSkinVer40_DATA_2025-01-22_1418.csv"
labels_data_path <- "data/raw/MindSkinVer40_DATA_LABELS_2025-01-22_1419.csv"
output_path <- "data/cleaned/redcap_combined_export.csv"

# Read in the datasets
raw_data <- read_csv(raw_data_path, show_col_types = FALSE)
labels_data <- read_csv(labels_data_path, col_names = FALSE, skip = 1, show_col_types = FALSE)

# Apply the raw column names to the human-readable label data
colnames(labels_data) <- colnames(raw_data)

# Save the cleaned result
write_csv(labels_data, output_path)