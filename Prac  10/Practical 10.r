library(tibble)
before <- c(80, 75, 90, 85, 95, 70, 88, 92, 78, 83)
after  <- c(78, 73, 88, 82, 93, 68, 85, 90, 76, 80)

# combine into a data frame
data <- tibble(before, after)
data

# null hypothesis : The program has no effect, mean difference = 0
# calculate difference
diff <- before - after

# perform one-sample t-test on difference
t_test <- t.test(diff, mu = 0, alternative = "two.sided")
t_test

# extract t-value
t_test$statistic

# extract p-value
t_test$p.value

# number of observations
length(diff)
