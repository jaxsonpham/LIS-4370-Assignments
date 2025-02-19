# 1. Define matrices A and B
A <- matrix(c(2,0,1,3), ncol=2)
B <- matrix(c(5,2,4,-1), ncol=2)

# a) Find A + B
A_plus_B <- A + B
print(A_plus_B)

# b) Find A - B
A_minus_B <- A - B
print(A_minus_B)

# 2. Create a 4x4 diagonal matrix with the given diagonal values
D <- diag(c(4,1,2,3))
print(D)

# 3. Generate the specified matrix
M <- diag(3, 5)  # Create a 5x5 diagonal matrix with 3s on the diagonal
M[ ,1] <- c(3,2,2,2,2)  # Modify the first column
M[1, 2:5] <- 1
print(M)
