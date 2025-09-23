install.packages("tidyverse")

library(tidyverse)

data <- tibble(
  size  = c(650, 800, 1000, 1200, 1500, 1700, 2000, 2200, 2500, 3000),
  price = c(200000, 250000, 280000, 320000, 360000, 400000, 450000, 480000, 520000, 600000)
)


print(data)

summary(data)

ggplot(data, aes(x = size, y = price)) +
  geom_point() +
  geom_smooth(method = "lm", se = FALSE, color = "blue") +
  labs(title = "Scatter Plot of Size vs Price",
       x = "Size",
       y = "Price")

model <- lm(price ~ size, data = data)

ggplot(data, aes(x = size, y = price)) +
  geom_point() +
  geom_abline(intercept = coef(model)[1], slope = coef(model)[2], color = "red") +
  labs(title = "Regression Line of Price on Size",
       x = "Size",
       y = "Price")


summary(model)

n_obs <- nobs(model)
cat("Number of observations used in regression:", n_obs, "\n")

r_squared <- summary(model)$r.squared
cat("R-squared:", r_squared, "\n")
cat("R-squared tells us the proportion of variance in the dependent variable (price) explained by the independent variable (size).\n")

p_value <- summary(model)$coefficients[2, 4]
cat("P-value for 'size':", p_value, "\n")
if (p_value < 0.05) {
  cat("'size' is a statistically significant predictor of price.\n")
} else {
  cat("'size' is NOT a statistically significant predictor of price.\n")
}

intercept <- coef(model)[1]
slope <- coef(model)[2]
cat("Regression equation: price =", round(intercept, 3), "+", round(slope, 3), "* size\n")





















