# Define the data vector
prices <- c(1, 1, 5, 5, 5, 5, 5, 8, 8, 10, 10, 10, 10, 12, 14, 14, 14, 15, 15, 15, 15, 15, 15, 18, 18, 18, 18, 18, 18, 18, 18, 20, 20, 20, 20, 20, 20, 20, 21, 21, 21, 21, 25, 25, 25, 25, 25, 28, 28, 30)

# Calculate the number of elements in each bin
n <- length(prices)
k <- 3  # Number of bins
bin_size <- ceiling(n / k)

# Create bins for equal-frequency partitioning
bins_equal_freq <- split(prices, ceiling(seq_along(prices) / bin_size))
cat("Equal-Frequency Bins:\n")
print(bins_equal_freq)

### Data Smoothing using Bin Means
# Apply smoothing by bin mean
smoothed_data_mean <- unlist(lapply(bins_equal_freq, function(bin) rep(mean(bin), length(bin))))
cat("Smoothed Data (Bin Means):\n")
print(smoothed_data_mean)

### Data Smoothing using Bin Boundaries
# Apply smoothing by bin boundaries
smoothed_data_boundaries <- unlist(lapply(bins_equal_freq, function(bin) {
  lower <- min(bin)
  upper <- max(bin)
  sapply(bin, function(x) ifelse(abs(x - lower) < abs(x - upper), lower, upper))
}))
cat("Smoothed Data (Bin Boundaries):\n")
print(smoothed_data_boundaries)

### Plot Histogram for the frequency division
# Original Data
hist(prices, breaks=seq(min(prices), max(prices), length.out=k+1), 
     main="Histogram of Original Data with Equal-Frequency Bins", 
     xlab="Price", col="lightblue", border="black")

# Smoothed Data (Bin Means)
hist(smoothed_data_mean, breaks=seq(min(smoothed_data_mean), max(smoothed_data_mean), length.out=k+1), 
     main="Histogram of Smoothed Data (Bin Means)", 
     xlab="Price", col="lightgreen", border="black")

# Smoothed Data (Bin Boundaries)
hist(smoothed_data_boundaries, breaks=seq(min(smoothed_data_boundaries), max(smoothed_data_boundaries), length.out=k+1), 
     main="Histogram of Smoothed Data (Bin Boundaries)", 
     xlab="Price", col="lightcoral", border="black")
