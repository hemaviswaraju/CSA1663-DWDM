min_max_norm <- function(x, min, max) {
  (x - min) / (max - min)
}

z_score_norm <- function(x, mean, sd) {
  (x - mean) / sd
}

decimal_scaling_norm <- function(x, max_digits) {
  x / 10^max_digits
}

age <- c(23, 23, 27, 27, 39, 41, 47, 49, 50, 52, 54, 54, 56, 57, 58, 58, 60, 61)

min_age <- min(age)
max_age <- max(age)
normalized_age_min_max <- min_max_norm(35, min_age, max_age)

mean_age <- mean(age)
normalized_age_z_score <- z_score_norm(35, mean_age, sd_age)

max_digits_age <- floor(log10(max(age))) + 1
normalized_age_decimal_scaling <- decimal_scaling_norm(35, max_digits_age)

cat("Min-max normalized value:", normalized_age_min_max, "\n")
cat("Z-score normalized value:", normalized_age_z_score, "\n")
cat("Decimal scaling normalized value:", normalized_age_decimal_scaling, "\n")