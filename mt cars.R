# maniplation with data frames

# inbuilt data frame
data(mtcars)
mtcars

# 
mtcars$mpg

# 
boxplot(mtcars)

# 
mtcars[rows,cols]
mtcars[2,1]
mtcars[, 1]
mtcars[1:5, 1]
mtcars[1:5, "mpg"]
mtcars[, c(3,1,8)]
mtcars[, c(1,8,3)]
mtcars[1:4, 1:4]

# Filtering Data Frame
subset(mtcars, mpg>20)
subset(mtcars, cyl==6) # == for comparison
mtcars$cyl == 6
mtcars_cp <- mtcars
mtcars_cp = 6 # = here is the substuituted values which is wrong
head(mtcars_cp)

# Remove data set
remove(mtcars_cp)

#
subset(mtcars, cyl!=6)
subset(mtcars, cyl>6)
subset(mtcars, cyl<6)

nrow(mtcars) # change in rows
nrow(subset(mtcars, cyl <= 6)) # change in rows with condtition of cyl <= 6  

subset(mtcars, mpg >20 & cyl >5) # condition 1 AND 2 need to be satisfied
subset(mtcars, mpg >20 | cyl >5) # condition 1 OR 2 need to be satisfied

# Square bracet notation
mtcars$mpg > 20 # equivalent command
mtcars[,1] > 20 # equivalent command
which(mtcars$mpg > 20) # which all are true
mtcars[ c(1:4, 8, 9), ]
mtcars[which(mtcars$mpg > 20), ] # sub-setting 
mtcars[which(mtcars$mpg == 6), ]

# ordering or sorting the data
sort(mtcars$mpg) # not actually works
sort(mtcars, mpg) # not actually works
order(mtcars$mpg) # not actually works as well
mtcars[order(mtcars$mpg), ] # This actually works
mtcars[order(~mtcars$mpg), ] # ~ sign reverses the values

mtcars_ordered <- mtcars[order(mtcars$mpg), ] # new value of sorted data frame is created
mtcars_ordered

# ordering alphabetically
mtcars[ order( rownames(mtcars)), ]

# corelation coeficient
mtcars[, 1:2]
cor( mtcars[, 1:2])

# Ploting the data 
pairs(mtcars[, 1:2]) 
plot(mtcars$cyl, mtcars$mpg)
plot(mtcars$cyl, 1/mtcars$mpg, xlab="no of cylinders", ylab="gallons per mile", main="no of cylinders and fuel econony")

# trendline
mylm <- lm(1/mpg ~ cyl, data=mtcars) # use ~ not -
str(mylm)
summary(mylm)
summary(mylm)$r.squared # pick up the r-squared value there
signif(summary(mylm)$r.squared, 3) # rounding off of figures
abline(mylm)
abline(mylm,lty=2,lwd=2,col="red") #lty means types of line, lwt means the dashed line

INT = signif(mylm$coefficients[1], 3)
SLOPE = signif(mylm$coefficients[2], 3)
MYR2 = signif(summary(mylm)$r.squared, 3)
MYTEXT = paste("Intercept:",INT, "slope:",SLOPE, "R2:",MYR2)
mtext( MYTEXT )


