class_intervals <- data.frame(
  lower_bound = c(1, 5, 15, 20, 50, 80),
  upper_bound = c(5, 15, 20, 50, 80, 110),
  frequency = c(200, 450, 300, 1500, 700, 44)
)

class_intervals$cumulative_frequency <- cumsum(class_intervals$frequency)

N <- sum(class_intervals$frequency)

median_class_index <- which(class_intervals$cumulative_frequency >= N/2)[1]

L <- class_intervals$lower_bound[median_class_index]
CF <- if (median_class_index == 1) 0 else class_intervals$cumulative_frequency[median_class_index - 1]
f <- class_intervals$frequency[median_class_index]
h <- class_intervals$upper_bound[median_class_index] - class_intervals$lower_bound[median_class_index]

median <- L + ((N/2 - CF) / f) * h

print(paste("Approximate Median:", median))
