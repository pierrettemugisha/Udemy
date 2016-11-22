### First coding steps

# R as a calculator
4 + 4 + 5

# Space doesn't matter

# Operators: + - / * ^

# Using several operators and round brackets
(5-3)^3

# Creating objects
x <- c(4, 5, 6)

c(4, 5.2, 76) -> y # arrows work both directions
y

x = c(4, 5, 6)

assign("x", c(4.2, 1, 5)) # function assign

# c for concatenate

x = c(4, 5, 6)

x # display in console

x = c(4,5,6); x # semicolon indicates a new row of code

# See which objects are already created
ls()

objects()

# Removing an objecet
rm("x")
   
# Working with vectors
x = c(y,5,y)
x

# Sum and roots
sum(x)

sqrt(x)

# Values at a given position within the vector
x[1]

newobject <- x < 5; newobject

x # Comparison against original values



## Types of brackets

# () round brackets as the standard

#[] box brackets for index posisitons

#{} curled brackets for functions and loops


### Functions: seq, paste, rep

?seq # starting with the seq function

seq() # just using the default settings

# simpple sequence from 3 to 5
seq(3, 5)

seq(from = 3, to = 5)

# using length
seq(from = 3, length = 3)

#step manipulations
seq(from = 3, length = 3, by = 0.5)

seq(from = 3, by = 0.5, length.out = 3) # change order

?paste #next function

paste(1:4)

class(paste(1:4)) # check the class

paste("xyz", 1:10)

paste("xyz", c(2,5,7, "test", 4.5)) # random vector with numbers and characters

paste("xyz", 1:10, sep = "") # modify the separator



?rep #newxt function

rep(c(3,4,5), 3)

rep(1:10, times = 3)

x = c(1,2,3) # creating x

rep(x, each = 3) #using each

rep(x, each = 3, times = 3) # combining argumets

## Working with index positions

x = 4:20 # our data

which(x == 10) # double equal sign, logical operation

x[3]




### Exercise

# 1. Crate the object "myobject' and assign the values 1:10
# in at least 3 different ways

myobject = 1:10; myobject
myobject <- c(1:10); myobject
seq(from = 1, length = 10) -> myobject; myobject
myobject <- (1:10); myobject
assign("myobject", 1:10); myobject

# 2. Get the sum of your object
sum(myobject)

# 3. Create the following vector by using the paste function
"R is great 4 and I will love it"
"R is great 7 and I will love it"
"R is great 45 and I will love it"
x1 <- paste("R is great"); x1; paste("and I will love it") -> x2; x2
paste(x1, 4, x2)
paste(x1, 7, x2)
paste(x1, 45, x2)
paste(x1, c(4, 7, 45), x2)
paste("R is great", c(4, 7, 45), "and I will love it")


# 4. Vector of 1,2,3 : repeat the vector to get 11 x 1, x 2, and 10 x 3
vec=c(1,2,3); vec; rep(vec, each = 10, 1) -> myvec; myvec
myvec <- rep(1:3, length = 31); myvec

# 5. What is the value of this vector on position 7
myvec[7]





### WOrking with data.frames

?airmiles

head(airmiles) # first 6 rows

tail(airmiles) # las t 6 rows

summary(mtcars)

plot(mtcars) # simple xy plot function of R Base

hist(airmiles) # histogram

head(mtcars)

sum(mtcars$wt)

attach(mtcars) # attach to R session environment

sum(wt) # now R knows which data.frame to use since it is attached

detach(mtcars) # remove it from environment

sum(wt) # Error message since mtcars is not attached anymore

mtcars[2,6]
