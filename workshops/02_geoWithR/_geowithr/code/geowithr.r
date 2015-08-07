# --------------------------------------------------
# Workshop: Geo with R
# About: Introduction to spatial functions in r 
# Adapted from: R workshop from Matthew 
# For: GEOB 472 - Data Visualization and Cartography
# By: Joey Lee
# --------------------------------------------------


'---------- Install packages ----------'
'We install libraries (aka packages) in R
using the "install.packages()" function. 
If you want to install one package at a time, use:'
# install.packages(XML)
# install.packages(raster)
# install.packages(dismo)
# install.packages(rgdal)
# install.packages(rgeos)
# install.packages(maptools)

'If you want to install multiple packages at one time, use:
the "c()" function to make a list of the names of the packages'
# install.packages(c("dismo", "rgeos", "XML", "raster", "rgdal", "maptools", "sp")) 

'---------- Load libraries/packages ----------'
library(XML)
library(raster)
library(dismo)
library(rgdal)
library(rgeos)
library(maptools)


'--- set working directory ---'
# assign the data path to a variable 
ipath = '/Users/Jozo/Dropbox/_Projects/_temp/R_mapping_tutorial_20150331/R_map_workshop_remix/layers/'
# set the working directory
setwd(ipath)
# call "list.files()" to show all files in the data folder
list.files()

'---------- Data input ----------'
'we are going to work with vector shapefiles and 
raster files. Vectors and rasters are different 
formats, therefore we need to use different
functions to read in vectors versus rasters.'

'--- Vectors: Shapefiles ---'
'We read in shapefiles using the "readOGR()" function.
To help make our script cleaner, store the path to your 
layers in a variable. I called my path variable, "ipath".'
# set folder path
ipath = '/Users/Jozo/Dropbox/_Projects/_temp/R_mapping_tutorial_20150331/R_map_workshop_remix/layers/'
# read in shapefiles:
admin0 = readOGR(ipath,'CAN_adm0')
admin1 = readOGR(ipath,'CAN_adm1')

' --- Rasters ---'



