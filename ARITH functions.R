# Some arithmetic functions
1+2
1000^2
sqrt(64)

# right way to find mean is 
mean(1,10,100)
c(1,10,100)
mean(c(1,10,100))

# Storing values in a file
a <-c(1,10,100)
a 
sum(a)
median(a)
max(a)
min(a)

# Storing values in a as 1
a = 1
a

# to find our what is there in a number
str(a)
class(a)
typeof(a)

# to represnt in the form of string
a="x1"
str(a)
class(a)
typeof(a)
a

# Series of values
a <- 1:10
str(a)

# more irregular series
a <- c(1, 3, 5, 654)
a
a[2] ## gives us the 2nd number
a[3:4] ## gives us the 3rd and 4th number

a[c(1,3)] # alternatively we can also write in this way

# To convert integer as numbers
c(1,3.829,5.172,651)
as.integer(c(1,3.829,5.172,651))

# to round off
round(c(1,3.829,5.172,651)) 

#
a<-c(1,3.829,5.172,651)
a
str(a)
str(as.integer(a))

# 
a<- c("1", "3", "5", "564")
sum(a) # wont work
as.numeric(a)
sum(as.numeric(a))

# to as true or false
is.numeric(a)
is.character(a)

#
a<-as.numeric(a)
is.numeric(a)

is.vector(a)
is.list(a)

# Let's create a list
as.list(c(1,3.871, 5.214, 654)) # 1st way to create a list
list(1,3.871, 5.214, 654) # 2nd way to create a list
