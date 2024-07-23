age <- c(13, 15, 16, 16, 19, 20, 20, 21, 22, 22, 25, 25, 25, 25, 30, 33, 33, 35, 35, 35, 35, 36, 40, 45, 46, 52, 70)
mean_age <- mean(age)
median_age <- median(age)
cat("Mean of the data:", mean_age, "\n")
cat("Median of the data:", median_age, "\n")
mode_age <- as.numeric(names(sort(table(age), decreasing=TRUE)[1]))
frequency_table <- table(age)
modality <- sum(frequency_table == max(frequency_table))
cat("Mode of the data:", mode_age, "\n")
cat("The data is", ifelse(modality == 1, "unimodal", ifelse(modality == 2, "bimodal", "multimodal")), "\n")
midrange_age <- (min(age) + max(age)) / 2
cat("Midrange of the data:", midrange_age, "\n")

Q1 <- quantile(age, 0.25)
Q3 <- quantile(age, 0.75)

cat("First Quartile (Q1):", Q1, "\n")
cat("Third Quartile (Q3):", Q3, "\n")
