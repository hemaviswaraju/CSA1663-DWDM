# Creating a matrix with the provided preference data
preferences <- matrix(c(22, 28, 10, 20, 40, 40), ncol = 3, byrow = TRUE)

# Ensure the matrix has the correct dimensions
rownames(preferences) <- c("5-6 years", "7-8 years")
colnames(preferences) <- c("A", "B", "C")

# Calculate the sample covariance between B and C
cov_bc <- cov(preferences[, "B"], preferences[, "C"])
cat("Sample Covariance between B and C:\n")
print(cov_bc)

# Calculate the sample covariance matrix for the preferences
cov_matrix <- cov(preferences)
cat("Sample Covariance Matrix for Preferences:\n")
print(cov_matrix)

# Calculate the sample correlation between B and C
cor_bc <- cor(preferences[, "B"], preferences[, "C"])
cat("Sample Correlation between B and C:\n")
print(cor_bc)

# Calculate the sample correlation matrix for the preferences
cor_matrix <- cor(preferences)
cat("Sample Correlation Matrix for Preferences:\n")
print(cor_matrix)
