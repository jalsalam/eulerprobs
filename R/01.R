#01.R

# If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
# Find the sum of all the multiples of 3 or 5 below 1000.

# brute

brute <- function() {

nums <- c(1:999)

m3 <- nums %% 3 == 0
m5 <- nums %% 5 == 0  

m3_or_5 <- m3 | m5

sum(nums[m3_or_5])
}

brute()


# fast?

fast <- function() {

sum_to_n <- function(n) (n+1)*(n/2)

sum_to_n(999.9 %/% 3)*3 + sum_to_n(999.9 %/% 5)*5 - sum_to_n(999.9 %/% 15)*15
}

fast()


library("microbenchmark")
microbenchmark(
  brute(),
  fast()
)