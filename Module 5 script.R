# Define matrices A and B
A <- matrix(1:100, nrow=10)
B <- matrix(1:1000, nrow=10)

# Compute determinant of A
A_det <- det(A)

# Compute inverse of A (if possible)
A_inv <- try(solve(A), silent = TRUE)

# Compute determinant of B (not possible for non-square matrices)
B_det <- try(det(B), silent = TRUE)

# Compute inverse of B (not possible for non-square matrices)
B_inv <- try(solve(B), silent = TRUE)

# Print results
print("Determinant of A:")
print(A_det)

print("Inverse of A:")
print(A_inv)

print("Determinant of B (not possible):")
print(B_det)

print("Inverse of B (not possible):")
print(B_inv)
