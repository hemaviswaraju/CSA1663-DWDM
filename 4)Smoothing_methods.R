data <- c(11, 13, 13, 15, 15, 16, 19, 20, 20, 20, 21, 21, 22, 23, 24, 30, 40, 45, 45, 45, 71, 72, 73, 75)

bin_size <- 4

bins <- split(data, ceiling(seq_along(data) / bin_size))

smoothed_data_mean <- unlist(lapply(bins, function(bin) rep(mean(bin), length(bin))))
cat("Smoothing by Bin Mean:\n")
print(smoothed_data_mean)

smoothed_data_median <- unlist(lapply(bins, function(bin) rep(median(bin), length(bin))))
cat("Smoothing by Bin Median:\n")
print(smoothed_data_median)

smoothed_data_boundaries <- unlist(lapply(bins, function(bin) {
  lower <- min(bin)
  upper <- max(bin)
  sapply(bin, function(x) ifelse(abs(x - lower) < abs(x - upper), lower, upper))
}))
cat("Smoothing by Bin Boundaries:\n")
print(smoothed_data_boundaries)
