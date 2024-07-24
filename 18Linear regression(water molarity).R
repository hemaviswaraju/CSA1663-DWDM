water_data <- read.csv("water.csv")

str(water_data)

plot(water_data$hardness, water_data$mortality,
     xlab = "Hardness", ylab = "Mortality",
     main = "Scatter Plot of Mortality vs. Hardness")

linear_model <- lm(mortality ~ hardness, data = water_data)

summary(linear_model)
new_data <- data.frame(hardness = 88)
predicted_mortality <- predict(linear_model, newdata = new_data)
cat("Predicted Mortality for Hardness = 88:", predicted_mortality)
