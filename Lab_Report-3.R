head(iris)# Load and inspect the iris dataset
str(iris)
summary(iris)# Get a comprehensive summary
mean(iris$Sepal.Length)# Calculate mean
median(iris$Sepal.Length)# Calculate median
freq_table <- table(iris$Sepal.Length)# To find the mode, create a table of frequencies
names(freq_table)[which.max(freq_table)]# Find the name of the most frequent value
range_val <- range(iris$Sepal.Length)# Calculate the range
max(range_val) - min(range_val)
var(iris$Sepal.Length)# Calculate variance
sd(iris$Sepal.Length)# Calculate standard deviation
IQR(iris$Sepal.Length)# Calculate the Interquartile Range
quantile(iris$Sepal.Length, probs = c(0.25, 0.75))# Get specific quantiles (e.g., 25th and 75th percentiles)
install.packages("dplyr")
library(dplyr)
iris %>%# Calculate mean, sd, and count for each speciess
  group_by(Species) %>%
  summarise(
    count = n(),
    mean_sepal_length = mean(Sepal.Length),
    sd_sepal_length = sd(Sepal.Length),
    mean_petal_length = mean(Petal.Length),
    sd_petal_length = sd(Petal.Length)
  )
pairs(iris[, 1:4], main = "Scatterplot Matrix of Iris Data", col = iris$Species)