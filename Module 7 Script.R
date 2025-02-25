# Load necessary libraries
library(ggplot2)
library(methods)  # Needed for S4

# Load the mtcars dataset
data("mtcars")

# View the first 6 rows
head(mtcars, 6)

# Check dataset structure
str(mtcars)

# --------------------------------------------
# Step 2: Check if Generic Functions Apply
# --------------------------------------------

# Summary function (generic)
summary(mtcars)

# Plot function (generic)
plot(mtcars$mpg, mtcars$hp, main="MPG vs HP", xlab="MPG", ylab="HP")

# Checking base type
typeof(mtcars)  # Should return "list"
class(mtcars)   # Should return "data.frame"
mode(mtcars)    # Should return "list"

# --------------------------------------------
# Step 3: Assigning S3 and S4 to mtcars
# --------------------------------------------

# ------------------ S3 Example ------------------
# Create an S3 object for a car
car_s3 <- list(model = "Mazda RX4", mpg = 21, hp = 110)
class(car_s3) <- "car"

# Define an S3 print method
print.car <- function(x) {
  cat("Car Model:", x$model, "\nMPG:", x$mpg, "\nHorsepower:", x$hp, "\n")
}

# Test the S3 method
print(car_s3)

# Checking if the object is S3
class(car_s3)  # Returns "car" -> S3

# ------------------ S4 Example ------------------
# Define an S4 class for a car
setClass("Car",
         slots = list(
           model = "character",
           mpg = "numeric",
           hp = "numeric"
         ))

# Create an S4 object
car_s4 <- new("Car", model = "Mazda RX4", mpg = 21, hp = 110)

# Print S4 object
car_s4

# Checking if the object is S4
isS4(car_s4)  # Returns TRUE -> S4

