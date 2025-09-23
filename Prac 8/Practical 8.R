# 8 #

pets <- data.frame(
  Name = c("Flipper", "Bromley", "Nox", "Orion", "Dagger", "Zizi", "Carrie"),
  Months_old = c(53, 19, 34, 41, 84, 140, 109),
  Size = c("medium", "small", "medium", "large", "small", "extra small", "large"),
  Weight = c(21, 8, 4, 6, 7, 2, 36),
  Breed = c("dog", "dog", "cat", "cat", "dog", "cat", "dog"),
  stringsAsFactors = FALSE
)
print(pets)


pets$Breed <- factor(pets$Breed, levels = c("dog", "cat"), labels = c("cat", "dog"))
print(pets)

print(pets$Breed)
print(pets[, 5])

pets$Age <- pets$Months_old / 12
print(pets$Age)

table(pets$Breed)

table(pets$Breed, pets$Size)

aggregate(Weight~Breed, data = pets, FUN = mean)

boxplot(Weight ~ Breed, data = pets,
        main = "Weight by Breed",
        col = c("pink", "lightblue"))

install.packages("ggplot2")
library(ggplot2)
ggplot(boxplot, aes(x=Breed, y=Weight), color="lightblue")
