# Load the original file
df <- read.csv("sleepdevices_dates.csv", check.names = FALSE, row.names = 1)

# Transpose
df_t <- t(df)

# Save to new file
write.csv(df_t, "sleepdevices_dates_transposed.csv", quote = TRUE)