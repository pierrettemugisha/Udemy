#### Functions in R

# brief descriptio: R functions are OBJECTS
# they do calculations for you

# R function structure: name <- function(arguments) {statements}
# the arguments specify the components to be used in the function


myfirstfn <- function(x) { x + x }
myfirstfn(10)

# stepwise working functions

mysecondfn <- function(t,z) {
  value = z * 3
  value = value * t
  print(value)
}

t = 5
z = 9

mysecondfn(t,z)



#### Loops - loops and function are a crucial part in programming

# FOR loops allow a certain operation to b repeated a fixed number of times
# this is opposed to the while loop where therep nr is not prefixed
# the syntax looks like this: for (name in vector) { commands }

for (i in 1:15) {print(i)}
for (z in 1:15) {print(z)}
# variable name does not matter although you will see 'i' quite often


# Can be used for wuite complex calculations
# Example calculation of primes with the Eratosthemes method (the oldest know)
PrimVec = function(n){
  # to start from 2
  if (n >= 2) {
    # to further specify the sequence we want to work with
    s = seq(2, n)
    # numbers will be moved from s to p step by step if they meet the criteria
    p = c()
    # we start the loop
    for (i in seq(2, n)) {
      # we use any to check that 'i' (of this loo round) is still in s, multiple
      if (any(s == i)) {
        # we store i if meets our criteria in p together with the previous 
        p = c(p, i)
        # to search for numbers with a remainder at modulus division
        s = c(s[(s%%i) != 0], i)
      }
    }
    return(p)
  }
  # to specify the output if n < 2 (optional)
  else{
    stop("Input at least 2")
  }
}
PrimVec(100)