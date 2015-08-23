# --------------------------------------------------
# An R Primer
# Created: 2015-06-01
# For: GEOB 472 - Data Visualization and Cartography
# Author: Joey Lee
# --------------------------------------------------


# ----------------- The building blocks ------------

# # ---- data types --- #
# Most commonly used R data types: 
# (> help(type) #for more documentation)
# + character
	# as.character
# + numeric
	# as.numeric()
# + factor
	# as.factor()
# + integer
# + double
# + Null / Na

# ------ data structures ------ # 
# + lists & vectors
# 	list()
# 	c()
# 	as.vector()
# 	as.list()
# + matrix

# ---- basic functions ---- #
# print()
# plot()

# --- control structures ---- #
# --- conditionals --- #
# # if 
# if (condition is true/false ){
# 	...do something here
# }

# # if/else
# if (condition is true/false ){
# 	...do something here
# } else(){
# 	...do something here
# }

# # if / else if / else
# if (condition is true/false ){
# 	...do something here
# } else if ( condition is true/false) {
# 	... do something here
# }else(){
# 	...do something here
# }

# --- loops --- #
# for 
# while
# apply


# --- r packages --- #
# install.packages()
# library()
# require()



# intro to the R environment
# structure: R scripts --> run line by line or in entirety
# R = interpreted language, means we can build, test, and 
# get feedback interactively. REPL --> Read, evaluate, P, and loop

x = 1:10; y = 11:20
# or 
x = 1:10
y = 11:20

plot(1:100,1:100, pch="")
text(x,y, paste("hello", as.character(c(1:length(x)))))

points(x+5, y, col="red")


' --- try R --- '
'http://tryr.codeschool.com/levels/1/challenges/5'
# Expressions
1 + 1

"Arr, matey!"

6 * 7

# logical values
3<4

2 + 2 == 5

T == TRUE

# variables
x <- 42

'x can now be used in expressions in place of the original result. Try dividing x by 2 (/ is the division operator)'
x / 2

x <- "Arr, matey!"
x


 x <- TRUE


 # functions

 sum(1, 3, 5)

 rep("Yo ho!", times = 3)

 sqrt(16)

 help(sum)
 example(sum)
 help(plot)
 example(plot)

 # files

 list.file()

 'To run a script, pass a string with its name to the source function. Try running the "bottle1.R" script:'
 source("bottle1.R")


 # vectors
 
























