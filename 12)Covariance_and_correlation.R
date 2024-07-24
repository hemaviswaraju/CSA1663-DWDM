preferences <- matrix(c(22, 28, 10, 20, 40, 40), ncol = 3, byrow = TRUE)

rownames(preferences) <- c("5-6 years", "7-8 years")
colnames(preferences) <- c("A", "B", "C")

cov_bc <- cov(preferences[, "B"], preferences[, "C"])
cat("Sample Covariance between B and C:\n")
print(cov_bc)

cov_matrix <- cov(preferences)
cat("Sample Covariance Matrix for Preferences:\n")
print(cov_matrix)

cor_bc <- cor(preferences[, "B"], preferences[, "C"])
cat("Sample Correlation between B and C:\n")
print(cor_bc)

cor_matrix <- cor(preferences)
cat("Sample Correlation Matrix for Preferences:\n")
print(cor_matrix)
