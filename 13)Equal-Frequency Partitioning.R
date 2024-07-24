prices <- c(1, 1, 5, 5, 5, 5, 5, 8, 8, 10, 10, 10, 10, 12, 14, 14, 14, 15, 15, 15, 15, 15, 15, 18, 18, 18, 18, 18, 18, 18, 18, 20, 20, 20, 20, 20, 20, 20, 21, 21, 21, 21, 25, 25, 25, 25, 25, 28, 28, 30)

n <- length(prices)
k <- 3  
bin_size <- ceiling(n / k)

bins_equal_freq <- split(prices, ceiling(seq_along(prices) / bin_size))
cat("Equal-Frequency Bins:\n")
print(bins_equal_freq)

smoothed_data_mean <- unlist(lapply(bins_equal_freq, function(bin) rep(mean(bin), length(bin))))
cat("Smoothed Data (Bin Means):\n")
print(smoothed_data_mean)

smoothed_data_boundaries <- unlist(lapply(bins_equal_freq, function(bin) {
  lower <- min(bin)
  upper <- max(bin)
  sapply(bin, function(x) ifelse(abs(x - lower) < abs(x - upper), lower, upper))
}))
cat("Smoothed Data (Bin Boundaries):\n")
print(smoothed_data_boundaries)

hist(prices, breaks=seq(min(prices), max(prices), length.out=k+1), 
     main="Histogram of Original Data with Equal-Frequency Bins", 
     xlab="Price", col="lightblue", border="black")

hist(smoothed_data_mean, breaks=seq(min(smoothed_data_mean), max(smoothed_data_mean), length.out=k+1), 
     main="Histogram of Smoothed Data (Bin Means)", 
     xlab="Price", col="lightgreen", border="black")

hist(smoothed_data_boundaries, breaks=seq(min(smoothed_data_boundaries), max(smoothed_data_boundaries), length.out=k+1), 
     main="Histogram of Smoothed Data (Bin Boundaries)", 
     xlab="Price", col="lightcoral", border="black")
