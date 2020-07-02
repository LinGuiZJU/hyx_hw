primes <- c(2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 
            43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97)
x <- c(3, 4, 12, 19, 23, 51, 61, 63, 78)

# This is the first method to get the nonprime subvector from a vector.
non_prime_one <- c()
for (i in 1:length(x)) { # for (i in 1:9) {
  does_break <- 0
  for (p in 1:length(primes)) {
  # for (p in seq_along(primes)) {
    if (primes[p] == x[i]) {
      does_break <- 1
      break
    } 
  }
  if (does_break == 0) {
    non_prime_one <- c(non_prime_one, x[i])
  }
}
print(non_prime_one)

# This is the second method to get the nonprime subvector from a vector.
non_prime_two <- c()
  
for (i in 1:length(x)) {
  if (any(x[i] == primes) == FALSE) non_prime_two <- c(non_prime_two, x[i]) 
  # Decide whether the number x[i] is a prime number. If not, add it into non_prime_two.
}

print(non_prime_two)
