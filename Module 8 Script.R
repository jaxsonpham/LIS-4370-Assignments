# Load necessary libraries
library(plyr)
library(data.table)

# Step 1: Import the dataset (CSV-formatted text file with commas)
assignment_data <- read.table("Assignment 6 Dataset.txt", header = TRUE, sep = ",", stringsAsFactors = FALSE)

# Ensure the data is loaded correctly
print(head(assignment_data))  # Check the first few rows

# Calculate mean grade by Sex category
students_gendered_mean <- ddply(assignment_data, "Sex", transform, Grade.Average = mean(Grade))

# Write the resulting output to a file
write.table(students_gendered_mean, "Students_Gendered_Mean.txt", row.names = FALSE, sep = ",")

# Step 2: Filter dataset for names containing the letter "i"
i_students <- subset(assignment_data, grepl("i", Name, ignore.case = TRUE))

# Step 3: Write the filtered dataset to a CSV file
write.csv(i_students, "Filtered_Students.csv", row.names = FALSE)
