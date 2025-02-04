# Create the data vectors (10 observations)
Freq <- c(0.6, 0.3, 0.4, 0.4, 0.2, 0.6, 0.3, 0.4, 0.9, 0.2)
bloodp <- c(103, 87, 32, 42, 59, 109, 78, 205, 135, 176)
first <- c(1, 1, 1, 1, 0, 0, 0, 0, NA, 1)  # "bad" = 1, "good" = 0
second <- c(0, 0, 1, 1, 0, 0, 1, 1, 1, 1)  # "low" = 0, "high" = 1
finaldecision <- c(0, 1, 0, 1, 0, 1, 0, 1, 1, 1)  # "low" = 0, "high" = 1

# Create a data frame
hospitalData <- data.frame(Freq, bloodp, first, second, finaldecision)

# Display the data frame (optional)
print(hospitalData)

# Plot a histogram of blood pressure
hist(hospitalData$bloodp,
     main = "Histogram of Patient Blood Pressure",
     xlab = "Blood Pressure",
     col = "lightblue",
     border = "black")

# Create a side-by-side boxplot of blood pressure by first MD's assessment (0 = good, 1 = bad)
boxplot(bloodp ~ first, data = hospitalData,
        main = "Blood Pressure by First MD Assessment",
        xlab = "First MD Assessment (0 = Good, 1 = Bad)",
        ylab = "Blood Pressure",
        col = c("lightgreen", "salmon"))
