# Today I'm going to start my journey with R! 
# YYYY-MM-DD 

### --- here's my first conversation with R --- ###
"Hello World!"

# --- heres a nother way to print in R --- #
print("Hello World!")

# ---------- Practice Make Perfect, especially for Math ---------- #
# here's an example of addition
3 + 5  

# Simple subtraction
145632 - 67424

# Fancy Multiplication
6*5

# some more fancy multiplication
6 * 5 * 3 * 2

# and even more fancy multiplication
(5 * 2) * 3 * 6

# Simple Division
50 / 5

# More Division
50 / (3/4)

# An exponent: method 1
10**2

# Exponents: method 2
10^2

# ---------- Logical Operators in R ---------- #

# greater than 
10 > 3

# greater than
3 > 10

# less than
3 < 10

# less than
10 < 3

# is equal to
5 == 5

# is equal to
5 == 6

# is not equal to
5 != 6

# is not equal to
5 != 5

# ---------- Working with Variables: Addition ---------- #
# Let's declare a variable called "weather" and assign it to the value of 1
weather = 1

# let's declare another variable called "salmon" and assign it a value of 7
salmon = 8

# Let's declare another variable called salmonWeather and assign it to the sum of 'weather' and 'salmon'
salmonWeather = salmon + weather
salmonWeather # this will print the value to the console

# ---------- Working with Variables: Multiplication ---------- #
# Let's declare a variable called "joeysEnthusiasm" and assign it to the value of 1
joeysEnthusiasm = 100

# let's declare another variable called "classEnthusiasm" and assign it to the product of joeysEnthusiasm * 2
classEnthusiasm = joeysEnthusiasm * 2
classEnthusiasm 

# ---------- Data: Vectors ---------- #
# here's our first vector of integers
ourFirstIntVector = c(1,2,3,4,5,6,7,8,9,10)
ourFirstIntVector 

# here's our first vector of floats
ourFirstFloatVector = c(1.01, 2.04, 3.30, 4.0, 5.0, 6.30, 7.50, 8.0 ,9.0, 10.0)
ourFirstFloatVector

# naming  vector elements:
ourFirstNamedVector = c(vancouver = 1, toronto = 2, montreal=3, whistler=5)
ourFirstNamedVector

# naming vector elements with the names() function
ourSecondNamedVector = c(1,2,3,4,5)
names(ourSecondNamedVector) = c("vancouver", "toronto", "montreal", "whistler", "chicago" )
ourSecondNamedVector

# Method 1: accessing individual elements:
ourSecondNamedVector[1] 
ourSecondNamedVector[2]

# Method 1: accessing a range of elements:
ourSecondNamedVector[1:2]  

# Method 2: accessing individual elements by name (if it has a name):
ourSecondNamedVector["vancouver"]

# Method 2: accessing multiple elements by name:
ourSecondNamedVector[c("vancouver", "whistler", "montreal")]

# here's our first vector of strings
ourFirstStringVector = c("joey", "is", "a", "dork")
print(ourFirstStringVector)

# Here's an attempt at fooling R with a mixed type vector
ourMixedTypeVector = c(1, 2, 3, "joey", "is", "a", "dork")
print(ourMixedTypeVector)

# ---------- Vectors: understanding what makes them "recursive" ---------- #
# so we have our variable "ourFirstFloatVector" - let's print it to the console just to check what's inside
print(ourFirstFloatVector)

# Next let's multiply ourFirstFloatVector by 3
ourFirstFloatVector * 3

# now let's assign a new variable with the product of ourFirstFloatVector and 3
newFloatVector = ourFirstFloatVector * 3
print(newFloatVector)

# let's introduce our super awesome plotting function: plot() - let's look at our data!
plot(x = newFloatVector, y = ourFirstFloatVector)

# ---------- Vectors: understanding what makes them "recursive" ---------- #
# so we have our variable "ourFirstFloatVector" - let's print it to the console just to check what's inside
ourFirstFloatVector = c(1.01, 2.04, 3.30, 4.0, 5.0, 6.30, 7.50, 8.0 ,9.0, 10.0)
print(ourFirstFloatVector)

# Next let's multiply ourFirstFloatVector by 3
ourFirstFloatVector * 3

# now let's assign a new variable with the product of ourFirstFloatVector and 3
newFloatVector = ourFirstFloatVector * 3
print(newFloatVector)

# let's introduce our super awesome plotting function: plot() - let's look at our data!
plot(x = newFloatVector, y = ourFirstFloatVector)

# ---------- Vectors: understanding what makes them "recursive" - part 2 ---------- #	

# Let's define 2 new vectors
# vector_x is the months of the year
vector_x = c(1,2,3,4,5,6,7)
# vector_y is the  precipitation in mm
vector_y = c(186, 94, 118, 85, 60, 59, 38)

# Let's declare a variable x_mean and assign it the mean value of vector_y
y_mean = mean(vector_y)
print(y_mean)

# let's plot the vector_x and vector_y
plot(x = vector_x, y = vector_y)

# and use the abline() function to add the mean precipitation value as a horizontal line to the plot
abline(h = y_mean)

# -------- Lists in R: a list with no keys ---------- #
myFirstList = list("joey", "is", "a", "nerd", 1, 2, 3, 4)
print(myFirstList)

# -------- Lists in R: a list with keys ---------- #
listDict = list(apples = 10, instagramFollowers = 5, facebookLikes = 100, supermarket = TRUE, vegetables = "delicious")
listDict

# ---------- accessing data objects in a list ---------- #
listDict$instagramFollowers

# ---- a list of lists ---- #

twitterLikes = list( 
  Ellie = list(
    Handle = "@smellyEllie", 
    Posts = 134,
    Location = "Vancouver, BC",
    Description = "Maps are my lyfe"
  ),
  Joey = list(
    Handle = "@leejoeyk", 
    Posts = 365,
    Location = "Vancouver, BC",
    Description = "Maps are my lyfe"
  ),
  Sally = list(
    Handle = "@sallyseashore", 
    Posts = 15,
    Location = "Vancouver, BC",
    Description = "Loving Maps since day 1")
)
print(twitterLikes)

# select Joey's data
twitterLikes$Joey

# select Joey's locaiton data
twitterLikes$Joey$Location

# select Joey's data and store it to a new variable just for fun
joeysProfile = twitterLikes$Joey

# Let's access Joey's location from joeysProfile
joeysProfile$Location

# --------- Our First Dataframe Example -------- #

# a vector of fruits
fruits = c("apples", "oranges", "mangosteens", "lychees", "blueberries")

# a vector of colors of each fruit
color = c("red", "orange", "purple", "red-green", "blue")

# a vector of descriptions
descriptions = c("crunchy", "juicy", "wonderful", "exotic", "the best")

# a vector of how many I've eaten this week
quantityEaten = c(0, 2, 0, 0, 1000)

# a dataframe of the fruit related vectors
fruitBasket = data.frame(fruits, color, descriptions, quantityEaten)

# get the fruits in the dataframe:
fruitBasket$fruits

# get the quantityEaten in the dataframe:
fruitBasket$quantityEaten		

# use the plot() function on the data you selected:
plot(fruitBasket$fruits, fruitBasket$quantityEaten)

# ----------- Reading in Data from a csv ---------- #
crime = read.csv(file = "/Users/Jozo/Dropbox/UBC/_RA/GEOB472/workshops/02_PiratesCodeInR/data/van_crime_2013_geo.csv", header = TRUE) 
print(crime)

#  Plot the crime latitude and longitude coordinates just to check out what's inside. 
plot(x= crime$lon , y = crime$lat) 

# For all of the records in crime$TYPE, give me the unqiue ones.
unique(crime$TYPE)

# subset crimes that are "Mischief Over $5000" or "Mischief Under $5000".
mischief = subset(crime, crime$TYPE == "Mischief Over $5000" | crime$TYPE == "Mischief Under $5000")

# subset crimes that are commericial break and enter
breakins = subset(crime, crime$TYPE == "Commercial Break and Enter")

# subset auto crimes
autocrimes = subset(crime, crime$TYPE == "Theft Of Auto Over $5000" | crime$TYPE == "Theft Of Auto Under $5000" | crime$TYPE == "Theft From Auto Over $5000" | crime$TYPE == "Theft From Auto Under $5000" )

# First set the canvas by plotting of the three classes of crimes. In this case, let's first use the auto crimes and color them red.
plot(x = autocrimes$lon, y =autocrimes$lat, col="red", pch=21)

# Use the points() function to add the "commercial break & enter" and "mischeif"
# breakins
points(x= breakins$lon, y=breakins$lat, col = "green", pch=21)

# mischief
points(x= mischief$lon, y = mischief$lat, col = "blue", pch=21)


# ---------- Making our plot more readable by adding transparency ---------- #
# First set the canvas by plotting of the three classes of crimes. In this case, let's first use the auto crimes and color them red.
plot(x = autocrimes$lon, y =autocrimes$lat, col=rgb(1, 0, 0, 0.5), pch=21, cex=0.5, ann=FALSE)

# Use the points() function to add the "commercial break & enter" and "mischeif"
# breakins are green
points(x= breakins$lon, y=breakins$lat, col=rgb(0, 1, 0, 0.75), pch=21, cex = 0.5)

# mischief is blue
points(x= mischief$lon, y = mischief$lat, col=rgb(0, 0, 1, 0.5), pch=21, cex=0.5)

# a legend that includes our color coordination.
legend( x="topleft", 
        legend=c("Auto Crimes","Commerical Breakins", "Mischief"),
        col=c("red","green", "blue"), pch=21, bty = "n", cex=0.75)

# title, axis labels:
title(main="Vancouver Crime Data", sub="a first exploration",
      xlab="longitude (decimal degrees)", ylab="latitude (decimal degrees)")

# ---------- Using our first R package to display a shapefile! ---------- #
# install the maptools library
install.packages("maptools")

# import the maptools functions by calling the library() function
library(maptools)

# read in our baselayer shapefules with the readShapeSpatial() function
# metro vancouver shapefule
vancity = readShapeSpatial("/Users/Jozo/Dropbox/UBC/_RA/GEOB472/workshops/02_PiratesCodeInR/data/shp/metrovan.shp")
# the block outlines - gives the effect of roads
parcels = readShapeSpatial("/Users/Jozo/Dropbox/UBC/_RA/GEOB472/workshops/02_PiratesCodeInR/data/shp/vanparcels.shp")

# plot the metrovancouver shapefile as our baselayer
plot(vancity, 
     xlim=c(-123.27, -123.0), 
     ylim = c(49.25, 49.26), 
     col="#FFFFFF", 
     border=FALSE, 
     bg="#000000")

# plot the parcels as our faux-street effect
plot(parcels, 
     add=TRUE, 
     col="#FFFFFF", 
     border="#000000")

#autotheft
points(x = autocrimes$lon, 
       y =autocrimes$lat, 
       col=rgb(1, 0, 0, 0.75), 
       bg=rgb(1, 0, 0, 0.15), 
       pch=21, 
       cex=0.75)

#breakins
points(x= breakins$lon, 
       y=breakins$lat, 
       col=rgb(0, 1, 0, 0.75), 
       bg=rgb(0, 1, 0, 0.15), 
       pch=21, 
       cex = 0.75)

# mischief is blue
points(x= mischief$lon, 
       y = mischief$lat, 
       col=rgb(0, 0, 1, 0.75), 
       bg=rgb(0, 0, 1, 0.15), 
       pch=21, 
       cex=0.75)

# a legend that includes our color coordination.
legend( x="topleft", 
        legend=c("Auto Crimes","Commerical Breakins", "Mischief"),
        col=c("red","green", "blue"), pch=21, cex=.75)

# title, axis labels:
title(main="Vancouver Crime Data",
      xlab="longitude (decimal degrees)", ylab="latitude (decimal degrees)")



#--------------------------- experimental ---------------------- #
require(MASS)
dens = kde2d(crime$lon, crime$lat, n=100)

# filled.contour(dens, color.palette = terrain.colors )

plot(vancity, 
     xlim=c(-123.27, -123.0), 
     ylim = c(49.25, 49.26), 
     col="#FFFFFF", 
     border=FALSE, 
     bg="#000000")

plot(vancity, 
     xlim=c(-123.27, -123.0), 
     ylim = c(49.25, 49.26), 
     col="white", 
     border="grey", 
     bg="#FFFFFF")

contour(dens, 
#         col= colorRampPalette(colors=c("red", "yellow"))(20),
#         levels = seq(0,1000, 50), 
# levels = seq(0,1000, 25),
    levels = c(0,10, 25, 50, 100, 200, 500, 800),
        add=T)
persp(dens, expand=0.3, theta =0, phi=75, box=F, shade=0.75)

install.packages('leaflet')
library(leaflet)

m <- leaflet() %>%
  addTiles() %>%  # Add default OpenStreetMap map tiles
  addMarkers(lng=174.768, lat=-36.852, popup="The birthplace of R")
m  # Print the map

m <- leaflet()
m <- addTiles(m)
m <- addMarkers(m, lng=123.0, lat=49.2, popup="The birthplace of R")
m
