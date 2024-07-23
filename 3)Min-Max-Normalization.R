# Ensure that the base functions are used by explicitly referring to the namespace
data <- c(200, 300, 400, 600, 1000)

# (a) Min-Max Normalization
min_val <- 0
max_val <- 1
data_min <- base::min(data)
data_max <- base::max(data)

min_max_normalized <- (data - data_min) / (data_max - data_min) * (max_val - min_val) + min_val

# Print the Min-Max Normalized data
cat("Min-Max Normalized Data:\n")
print(min_max_normalized)

# (b) Z-Score Normalization
mean_data <- base::mean(data)
sd_data <- base::sd(data)  # This line should work if no conflict exists

# Check if sd_data was successfully created
if (exists("sd_data")) {
  z_score_normalized <- (data - mean_data) / sd_data
  
  # Print the Z-Score Normalized data
  cat("Z-Score Normalized Data:\n")
  print(z_score_normalized)
} else {
  cat("Error: Standard deviation calculation failed.\n")
}
