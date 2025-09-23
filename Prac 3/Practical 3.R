students <- c("SK", "KG", "AS", "SD", "JC")
selected <- sample(students, size = 3, replace = FALSE)
print(selected)

fruits <- c("Apple", "Banana", "Mango", "Orange", "Grapes", "Pineapple")
sf <- sample(fruits, size = 5, replace = TRUE, prob = c(0.2, 0.1, 0.25, 0.15, 0.2, 0.1))
print(sf)

lvl <- c(88, 78, NA, 94, 97, NA)
median(lvl)
median(lvl, na.rm = TRUE)


atk <- c(1, 4, 9, 16, 25)  
median(atk)
median(atk, na.rm = TRUE)
