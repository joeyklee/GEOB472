install.packages('GISTools')
library(GISTools)

vancouver = readShapeSpatial("/Users/Jozo/Dropbox/UBC/_RA/GEOB472/workshops/02_PiratesCodeInR/data/shp/metrovan.shp")
blocks = readShapeSpatial("/Users/Jozo/Dropbox/UBC/_RA/GEOB472/workshops/02_PiratesCodeInR/data/shp/vanparcels.shp")

plot(vancouver, col="grey", border=F, bg="light grey", xlim=c(-123.27, -123.0), ylim = c(49.25, 49.26) )
plot(blocks, col="white", border=F, add=T)
