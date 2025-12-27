#if 
x <- 10
if (x > 5) {
  print("x is greater than 5")
}

#if…else 
x <- 3
if (x > 5) {
  print("x is greater than 5")
} else {
  print("x is 5 or less")
}

#if…else if…else Ladder
score <- 75
if (score >= 90) {
  print("Grade A")
} else if (score >= 80) {
  print("Grade B")
} else if (score >= 70) {
  print("Grade C")
} else {
  print("Grade F")
}

#for Loop
for (i in 1:5) {
  print(paste("Iteration", i))
}

#repeat Loop (with break)
i <- 1
repeat {
  print(i)
  i <- i + 1
  if (i > 5) break
}

#next Statement (skip to next iteration)
for (i in 1:5) {
  if (i == 3) next
  print(i)
}

#break Statement (exit the loop)
for (i in 1:5) {
  if (i == 4) break
  print(i)
}

#mean()
numbers <- c(10, 20, 30, 40, 50)
mean(numbers)  
sum(numbers) 
length(numbers) 

#round()
pi_val <- 3.14159
round(pi_val, 2)  
paste("Hello", "World")  

#Simple function to add two numbers
 add_numbers <- function(a, b) {
 return(a + b)
 }
 add_numbers(5, 3) 
 
 #Function to check if a number is even
 is_even <- function(x) {
   if (x %% 2 == 0) {
     return(TRUE)
   } else {
     return(FALSE)
   }
 }
 is_even(4)
 
 #Function with default parameter
 greet <- function(name = "User") {
   paste("Hello", name)
 }
 greet() 
 greet("Abir")
 
 #Anonymous (Lambda) Function with sapply()
 numbers <- 1:5
 squared <- sapply(numbers, function(x) x^2)
 print(squared) 
 
 #Reading a CSV File
 data <- read.csv("C:/Users/Asus/Downloads/archive/Iris.csv")
 head(data) 
 
 #Reading a Text File (tab-delimited)
 data <- read.table("C:/Users/Asus/Downloads/archive/Iris.csv", header = TRUE, sep = "\t")
 head(data)
 
 #Reading Data from a URL
 url <- "C:/Users/Asus/Downloads/archive/Iris.csv"
 data <- read.csv(url)
 head(data)
 
 # Exercise-1:
 score <- 82 
 if (score >= 90) {
   print("Excellent")
 } else if (score >= 75) {
   print("Good")
 } else if (score >= 50) {
   print("Pass")
 } else {
   print("Fail")
 }
 
 # Exercise-2
 numbers <- 1:10
 for (num in numbers) {
   print(paste(num, "squared is", num^2))
 }
 
 # Exercise-3
 count <- 2  
 while (count < 20) {
   print(count)
   count <- count + 2
 }
 
 # Exercise 4
 multiply <- function(a, b) {
   return(a * b)
 }
 multiply(5, 7)
 
 # Exercise-5
 calculate_stats <- function(vec) {
   stats <- list(
     Mean = mean(vec),
     Median = median(vec),
     Std_Dev = sd(vec)
   )
   return(stats)
 }
 vec <- c(10, 20, 30, 40, 50)
 calculate_stats(vec)
 
 # Exercise-6
 grade_result <- function(score) {
   if (score >= 90) {
     print("A")
   } else if (score >= 75) {
     print("B")
   } else if (score >= 50) {
     print("C")
   } else {
     print("F")
   }
 }
 
 grade_result(95)  
 grade_result(80)  
 grade_result(60)  
 grade_result(40) 
 
 # Exercise-7
 students_data <- read.csv("C:/Users/Asus/Downloads/students.csv")
 head(students_data, 5)
 str(students_data)
 
