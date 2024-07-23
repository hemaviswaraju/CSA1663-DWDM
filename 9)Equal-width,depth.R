marks <- c(55, 60, 71, 63, 55, 65, 50, 55, 58, 59, 61, 63, 65, 67, 71, 72, 75)

sorted_marks <- sort(marks)

n <- length(sorted_marks)
bin_size <- ceiling(n / 3)
bins_equal_freq <- split(sorted_marks, ceiling(seq_along(sorted_marks) / bin_size))
cat("Equal-Frequency Bins:\n")
print(bins_equal_freq)

hist(sorted_marks, breaks=c(min(sorted_marks), max(unlist(bins_equal_freq[1])), 
                            max(unlist(bins_equal_freq[2])), max(unlist(bins_equal_freq[3]))), 
     main="Equal-Frequency Partitioning", xlab="Marks", col="lightblue", border="black")
grid()

range_marks <- range(marks)
bin_width <- ceiling((range_marks[2] - range_marks[1]) / 3)
breaks_equal_width <- seq(range_marks[1], range_marks[2] + bin_width, by=bin_width)
cat("Equal-Width Breaks:\n")
print(breaks_equal_width)

hist(marks, breaks=breaks_equal_width, main="Equal-Width Partitioning",
     xlab="Marks", col="lightgreen", border="black")
grid()
