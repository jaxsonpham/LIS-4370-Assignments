#Candidates Names Data
Name <- c("Jeb", "Donald", "Ted", "Marco", "Carly", "Hillary", "Bernie")

#Poll Results Data
ABC_political_poll_results <- c(4, 62, 51, 21, 2, 14, 15)
CBS_political_poll_results <- c(12, 75, 43, 19, 1, 21, 19)

# Create a data frame
poll_results <- data.frame(Name, 
                           ABC_political_poll_results, 
                           CBS_political_poll_results)

# Print the data frame
print(poll_results)
