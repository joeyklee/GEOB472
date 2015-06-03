# Geo With R: Getting Comfy with R 

### About
For those of us familiar with using GIS tools like QGIS, ArcGIS, or __GIS, we know the general formula is:

	data in --> perform functions (buffer, clip, spatial join, merge, rasterize, etc) --> visualize

[insert image of gis buttons]

We nagivate the graphical user interface (GUI), clicking on the functions we want to use and applying the functions on our data to eventually get to our final output. 

Software like ArcGIS are great and extremely powerful (great customer service, an innumerable amount of geoprocessing and visualization functionality, and large user base), however they are proprietary, meaning - YOU HAVE TO PAY, and sometimes the license costs are NOT TRIVIAL. 

Even if your GIS software of choice is free and opensource, navigating a GUI to perform your data processing means that we have to click and click and click, over and over and over to perform the same tasks that we perform regularly. The point-and-click style data processing is perfectly great for one-off tasks and exploratory data analysis, but breaks down quickly once we need to start automating or repeating tasks and when we want to document our data processing steps in a clear and intuitive way. Furthermore, the point-and-click style data process also requires us to store dozens of outputs of data to perform functions on sequentially - taking up lots of hard drive space and testing our ability to come up with new data version names.
 

We can overcome the limitations of the point-and-click style data processing and the massive costs of proprietary software licenses using free and opensource programming languages like [R](http://www.r-project.org/) to do our data processing using **code**. The formula is the same except, instead of clicking, we are typing! 

	data in --> perform functions (buffer, clip, spatial join, merge, rasterize, etc) --> visualize
	

[insert image of code equivalent of above]

Remember the Processing workshop on shapes and code? Using R to perform GIS functionality is roughly the same - You type in a function and you get an output. The best part of it all is that you can string commands together sequentially just as you would if you were pointing-and-clicking, and the data will be processed in that order, every time. 

A summary of the the advantages? 

+ free, open source, and accepted by the community.
+ generally data processing is fast and efficient - the people who write the functions, write them to be efficient! 
+ automation and repeition - you can repeat tasks simply
+ iteration - because your data processing steps are laid out and run sequentially, you can make adjustments to parts of the code easily and get different results
+ documentation and accountability - based on your code, you will always be able to look back and know how you got from your input data to your output. In all communities - whether in academia or industry, people will always ask you for your code and raw data (e.g. Your science papers can get retracted even after being accepted if something looks fishy in your data and code! ). 


### What we'll cover

+ Why use R?
+ The Basics of R programming 
+ Using GIS functions as our metaphor for learning R 
+ Plotting in R


### What you'll need

** Be sure to download R first, then R studio. 

+ The latest version of [R](http://www.r-project.org/) 
+ The latest version of [R Studio](http://www.rstudio.com/)
+ [QGIS](http://www.qgis.org/en/site/)
+ A nice text editor such as sublime text, text wrangler, etc.
+ The confidence, curiosity and enthusiasm to learn and the drive to teach yourself and the patience to help those around you.


### Assignment (to be started in class)
+ perform each of the gis processing functions on a new dataset
+ create a plot for each function that you do and describe what that function did to your data
+ neatly comment your code and format it so that it is readable and runs every time - test it on a friend's computer to make sure it works.