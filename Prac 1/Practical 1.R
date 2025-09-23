x <- 10:20
print(x)
y <- x + 2
print(y)
z <- y * 3
print(z)
temp <- (z - 6) / 3
print(temp)

answer <- ((10:20 + 2) * 3 - 6) / 3
print(answer)

seq1 <- seq(1, 12, 0.5)    
seq2 <- seq(1,10)^3
print(seq1)
print(seq2)

v <- c(2, 3, 4, 3, 2, 3, 5)
value <- 3
count <- sum(v == value)
print(paste("Count is:", count))

v1 <- c(1, 2, 3, 4)
v2 <- c(3, 4, 5, 6)
common <- (intersect(v1, v2))
print("Common elements:")
print(common)

pattern <- c(1:20, 19:1)
print(pattern)

quotes <- c("Data is the new oil",
            "Big data means big responsibility",
            "Clean data is gold")
contains_data <- grepl("data", quotes, ignore.case = TRUE)
print(contains_data)
