# Today I'm going to learn R
# 2015-09-DD

### --- here's my first conversation with R --- ###
"Hello World!"

# --- heres a nother way to print in R --- #
print("Hello World!")

# ---------- Practice Make Perfect, even for Math ---------- #
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

# An exponent 
10**2

# another version
10^2

# Simple Division
50 / 5

# More Division
50 / (3/4)

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
names(ourSecondNamedVector) = c("vancouver", "toronto", "montreal", "whistler" )
ourSecondNamedVector

# Method 1: accessing individual elements:
ourSecondNamedVector[1] 
ourSecondNamedVector[2]

# Method 2: accessing a range of elements:
ourSecondNamedVector[1:2]  

ourSecondNamedVector["vancouver"]
ourSecondNamedVector[c("vancouver", "whistler", "montreal")]


# here's our first vector of strings
ourFirstStringVector = c("joey", "is", "a", "dork")
ourFirstStringVector

# Here's an attempt at fooling R with a mixed type vector
ourMixedTypeVector = c(1, 2, 3, "joey", "is", "a", "dork")
print(ourMixedTypeVector)

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

# Let's define a 2 new vectors
# vector_x is the months of the year
vector_x = c(1,2,3,4,5,6,7)
# vector_y is the  precipitation in mm
vector_y = c(186, 94, 118, 85, 60, 59, 38)

# Let's calculate declare a variable x_mean and assign it the mean value of vector_y
y_mean = mean(vector_y)
print(y_mean)

# let's plot the vector_x and vector_y
plot(x = vector_x, y = vector_y)

# and add the mean precipitation value as a line to the plot
abline(h = y_mean)


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


# ----------- Reading in Data from a csv ---------- #
crime = read.csv(file = "/Users/Jozo/Dropbox/UBC/_RA/GEOB472/workshops/02_PiratesCodeInR/data/van_crime_2013_geo.csv", header = TRUE) 
print(crime)
print(colnames(crime))

#  Plot the crime latitude and longitude coordinates just to check out what's inside. 
plot(x= crime$lon , y = crime$lat) 

unique(crime$TYPE)

# subset crimes that are "Mischief Over $5000" or "Mischief Under $5000".
mischief = subset(crime, crime$TYPE == "Mischief Over $5000" | crime$TYPE == "Mischief Under $5000")

# subset crimes that are commericial break and enter
breakins = subset(crime, crime$TYPE == "Commercial Break and Enter")

# subset auto crimes
autocrimes = subset(crime, crime$TYPE == "Theft Of Auto Over $5000" | crime$TYPE == "Theft Of Auto Under $5000" | crime$TYPE == "Theft From Auto Over $5000" | crime$TYPE == "Theft From Auto Under $5000" )

# First set the canvas by plotting of the three classes of crimes. In this case, let's first use the auto crimes and color them red.
plot(x = autocrimes$lon, y =autocrimes$lat, col=rgb(1, 0, 0, 0.5), pch=16, cex=0.5, ann=FALSE)

# Use the points() function to add the "commercial break & enter" and "mischeif"
# breakins are green
points(x= breakins$lon, y=breakins$lat, col=rgb(0, 1, 0, 0.75), pch=16, cex = 0.5)

# mischief is blue
points(x= mischief$lon, y = mischief$lat, col=rgb(0, 0, 1, 0.5), pch=16, cex=0.5)



# First set the canvas by plotting of the three classes of crimes. In this case, let's first use the auto crimes and color them red.
plot(x = autocrimes$lon, y =autocrimes$lat, col=rgb(1, 0, 0, 0.5), pch=16, cex=0.5,ann=FALSE)

# Use the points() function to add the "commercial break & enter" and "mischeif"
# breakins are green
points(x= breakins$lon, y=breakins$lat, col=rgb(0, 1, 0, 0.75), pch=16, cex = 0.5)

# mischief is blue
points(x= mischief$lon, y = mischief$lat, col=rgb(0, 0, 1, 0.5), pch=16, cex=0.5)

# a legend that includes our color coordination.
legend( x="topleft", 
        legend=c("Auto Crimes","Commerical Breakins", "Mischief"),
        col=c("red","green", "blue"), pch=16, bty = "n", cex=.5)

# title, axis labels:
title(main="Vancouver Crime Data",
      xlab="longitude (decimal degrees)", ylab="latitude (decimal degrees)")

# --------------------- cdark colors -----------------------#
library(maptools)
vancity = readShapeSpatial("/Users/Jozo/Dropbox/UBC/_RA/GEOB472/workshops/02_PiratesCodeInR/data/shp/metrovan.shp")
parcels = readShapeSpatial("/Users/Jozo/Dropbox/UBC/_RA/GEOB472/workshops/02_PiratesCodeInR/data/shp/vanparcels.shp")

plot(vancity, xlim=c(-123.27, -123.0), ylim = c(49.25, 49.26), col="#414141", border=F, bg="#6f8093")
plot(parcels, add=T, col="#414141", border="#545454")
# plot(roads, add=T, col="#4f4f4f")

#autotheft
points(x = autocrimes$lon, y =autocrimes$lat, col=rgb(1, 0, 0, 0.15), bg=rgb(1, 0, 0, 0.75), pch=16, cex=0.75)

#breakins
points(x= breakins$lon, y=breakins$lat, col=rgb(0, 1, 0, 0.15), bg=rgb(0, 1, 0, 0.75), pch=16, cex = 0.75)

# mischief is blue
points(x= mischief$lon, y = mischief$lat, col=rgb(0, 0, 1, 0.15), bg=rgb(0, 0, 1, 0.75), pch=16, cex=0.75)
# a legend that includes our color coordination.
legend( x="topleft", 
        legend=c("Auto Crimes","Commerical Breakins", "Mischief"),
        col=c("red","green", "blue"), pch=16, bty="n", cex=.75)

# title, axis labels:
title(main="Vancouver Crime Data",
      xlab="longitude (decimal degrees)", ylab="latitude (decimal degrees)")

# --------------------- black and white -------------------- #
library(maptools)
vancity = readShapeSpatial("/Users/Jozo/Dropbox/UBC/_RA/GEOB472/workshops/02_PiratesCodeInR/data/shp/metrovan.shp")
parcels = readShapeSpatial("/Users/Jozo/Dropbox/UBC/_RA/GEOB472/workshops/02_PiratesCodeInR/data/shp/vanparcels.shp")

plot(vancity, xlim=c(-123.27, -123.0), ylim = c(49.25, 49.26), col="#FFFFFF", border=F, bg="#000000")
plot(parcels, add=T, col="#FFFFFF", border="#000000")
# plot(roads, add=T, col="#4f4f4f")

#autotheft
points(x = autocrimes$lon, y =autocrimes$lat, col=rgb(1, 0, 0, 0.15), bg=rgb(1, 0, 0, 0.5), pch=21, cex=0.75)

#breakins
points(x= breakins$lon, y=breakins$lat, col=rgb(0, 1, 0, 0.15), bg=rgb(0, 1, 0, 0.5), pch=21, cex = 0.75)

# mischief is blue
points(x= mischief$lon, y = mischief$lat, col=rgb(0, 0, 1, 0.15), bg=rgb(0, 0, 1, 0.5), pch=21, cex=0.75)

# a legend that includes our color coordination.
legend( x="topleft", 
        legend=c("Auto Crimes","Commerical Breakins", "Mischief"),
        col=c("red","green", "blue"), pch=16, cex=.75)

# title, axis labels:
title(main="Vancouver Crime Data",
      xlab="longitude (decimal degrees)", ylab="latitude (decimal degrees)")



# --------------------- just mischief -------------------- #
library(maptools)
vancity = readShapeSpatial("/Users/Jozo/Dropbox/UBC/_RA/GEOB472/workshops/02_PiratesCodeInR/data/shp/metrovan.shp")
parcels = readShapeSpatial("/Users/Jozo/Dropbox/UBC/_RA/GEOB472/workshops/02_PiratesCodeInR/data/shp/vanparcels.shp")

plot(vancity, xlim=c(-123.27, -123.0), ylim = c(49.25, 49.26), col="#FFFFFF", border=F, bg="#000000")
plot(parcels, add=T, col="#FFFFFF", border="#000000")
# plot(roads, add=T, col="#4f4f4f")

#autotheft
# points(x = autocrimes$lon, y =autocrimes$lat, col=rgb(1, 0, 0, 0.15), bg=rgb(1, 0, 0, 0.5), pch=21, cex=0.75)

#breakins
# points(x= breakins$lon, y=breakins$lat, col=rgb(0, 1, 0, 0.15), bg=rgb(0, 1, 0, 0.5), pch=21, cex = 0.75)

# # mischief is blue
points(x= mischief$lon, y = mischief$lat, col=rgb(0, 0, 1, 0.15), bg=rgb(0, 0, 1, 0.5), pch=21, cex=0.75)

# a legend that includes our color coordination.
legend( x="topleft", 
        legend=c("Mischief"),
        col=c("blue"), pch=16, cex=.75)

# title, axis labels:
title(main="Vancouver Crime Data",
      xlab="longitude (decimal degrees)", ylab="latitude (decimal degrees)")


# --------------------- auto related -------------------- #
library(maptools)
vancity = readShapeSpatial("/Users/Jozo/Dropbox/UBC/_RA/GEOB472/workshops/02_PiratesCodeInR/data/shp/metrovan.shp")
parcels = readShapeSpatial("/Users/Jozo/Dropbox/UBC/_RA/GEOB472/workshops/02_PiratesCodeInR/data/shp/vanparcels.shp")

plot(vancity, xlim=c(-123.27, -123.0), ylim = c(49.25, 49.26), col="#FFFFFF", border=F, bg="#000000")
plot(parcels, add=T, col="#FFFFFF", border="#000000")
# plot(roads, add=T, col="#4f4f4f")

#autotheft
points(x = autocrimes$lon, y =autocrimes$lat, col=rgb(1, 0, 0, 0.15), bg=rgb(1, 0, 0, 0.5), pch=21, cex=0.75)

# #breakins
# points(x= breakins$lon, y=breakins$lat, col=rgb(0, 1, 0, 0.15), bg=rgb(0, 1, 0, 0.5), pch=21, cex = 0.75)
# 
# # mischief is blue
# points(x= mischief$lon, y = mischief$lat, col=rgb(0, 0, 1, 0.15), bg=rgb(0, 0, 1, 0.5), pch=21, cex=0.75)

# a legend that includes our color coordination.
legend( x="topleft", 
        legend=c("Auto Crimes"),
        col=c("red"), pch=16, cex=.75)

# title, axis labels:
title(main="Vancouver Crime Data",
      xlab="longitude (decimal degrees)", ylab="latitude (decimal degrees)")


# --------------------- break and neter -------------------- #
plot(vancity, xlim=c(-123.27, -123.0), ylim = c(49.25, 49.26), col="#FFFFFF", border=F, bg="#000000")
plot(parcels, add=T, col="#FFFFFF", border="#000000")
# plot(roads, add=T, col="#4f4f4f")

#autotheft
# points(x = autocrimes$lon, y =autocrimes$lat, col=rgb(1, 0, 0, 0.15), bg=rgb(1, 0, 0, 0.5), pch=21, cex=0.75)

# #breakins
points(x= breakins$lon, y=breakins$lat, col=rgb(0, 1, 0, 0.15), bg=rgb(0, 1, 0, 0.5), pch=21, cex = 0.75)
# 
# # mischief is blue
# points(x= mischief$lon, y = mischief$lat, col=rgb(0, 0, 1, 0.15), bg=rgb(0, 0, 1, 0.5), pch=21, cex=0.75)

# a legend that includes our color coordination.
# a legend that includes our color coordination.
legend( x="topleft", 
        legend=c("Commerical Breakins"),
        col=c("green"), pch=16, cex=.75)

# title, axis labels:
title(main="Vancouver Crime Data",
      xlab="longitude (decimal degrees)", ylab="latitude (decimal degrees)")




# install.packages('rworldmap')
# install.packages('rworldxtra')
# require(rworldmap)
# require(rworldxtra)
# newmap <- getMap(resolution = "high")
# plot(newmap, xlim = c(-123.24, -123.0), ylim = c(49.25, 49.27), asp = 1)
# #autotheft
# points(x = autocrimes$lon, y =autocrimes$lat, col=rgb(1, 0, 0, 0.5), pch=16, cex=0.25)
# 
# #breakins
# points(x= breakins$lon, y=breakins$lat, col=rgb(0, 1, 0, 0.75), pch=16, cex = 0.25)
# 
# # mischief is blue
# points(x= mischief$lon, y = mischief$lat, col=rgb(0, 0, 1, 0.5), pch=16, cex=0.25)




# 
# # load the ggplot2 package
# library(ggplot2)
# 
# # load the ggmap package
# library(ggmap)

# # load the data points to be plotted
# gps <- read.csv("/Users/chrisralbon/cra/cra_projects/code_r/data/earthquakes.csv", header = TRUE)
# 
# # get the map from google maps, centered on the median long/lat. 
# mapImageData <- get_googlemap(
#   center = c(lon = median(crime$lon), lat = median(crime$lat)),
#   zoom=11,
#   maptype = c("terrain")
# )
# ggmap(mapImageData, extent = "device")
# 
# mapImageData <- get_googlemap(
#   center = c(lon = median(crime$lon), lat = median(crime$lat)),
#   zoom=11,
#   maptype = c("terrain")
# )
# ggmap(mapImageData, extent = "device")

# stamap = get_stamenmap(bbox = c(left = -123.38, bottom = 49.15, right = -122.9,
#                        top = 49.35), zoom = 11, maptype = c("toner"))
# 
# ggmap(stamap, extent = "device")
# ggmap(stamap, extent = "device", legend="topleft") +
#   geom_point(inherit.aes = FALSE, aes(x = autocrimes$lon, y = autocrimes$lat),
#              data = autocrimes,
#              colour = rgb(1,0,0, 0.15),
#              size = 2,
#              pch = 16
#   ) +
# geom_point(inherit.aes = FALSE, aes(x = breakins$lon, y = breakins$lat),
#            data = breakins,
#            colour = rgb(0,1,0, 0.15),
#            size = 2,
#            pch = 16
# ) +
# geom_point(inherit.aes = FALSE, aes(x = mischief$lon, y = mischief$lat),
#            data = mischief,
#            colour = rgb(0,0,1, 0.15),
#            size = 2,
#            pch = 16
# )
