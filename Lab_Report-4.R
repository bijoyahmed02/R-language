data("mtcars")#Dataset Description
head(mtcars)

ggplot(mtcars, aes(x = hp, y = mpg)) +#Trend Analysis: Horsepower vs. Miles per Gallon
  geom_point() +
  geom_smooth(method = "lm", se = FALSE, color = "blue") +
  labs(title = "HP vs MPG", x = "Horsepower", y = "Miles per Gallon")

ggplot(mtcars, aes(y = mpg)) +#Detecting Outliers with Boxplot
  geom_boxplot(fill = "tomato") +
  labs(title = "Boxplot of Miles per Gallon", y = "MPG")

ggcorr(mtcars, label = TRUE)#Correlation Heatmap

# Check how many NA values are in each column
colSums(is.na(mtcars))

mtcars_clean <- na.omit(mtcars)# Create a new dataframe with rows containing NA values removed
cat("Total NA values after cleaning:", sum(is.na(mtcars_clean)), "\n")
mtcars_clean <- mtcars_clean[!duplicated(mtcars_clean), ]

mtcars_filtered <- mtcars_clean %>% filter(mpg > 20)

mtcars_selected <- mtcars_filtered %>% select(mpg, hp, wt)

mtcars_mutated <- mtcars_selected %>%
  mutate(power_to_weight = hp / wt)

mtcars_scaled <- mtcars_selected %>%#Normalization and Scaling
  mutate(across(c(mpg, hp, wt), ~ scale(.)[,1]))
head(mtcars_scaled)
