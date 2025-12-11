## [Data Management and Visualization](https://mulquabio.github.io/MQB/notebooks/Data_R.html)


### Adjust hist
Firstly combine prey and predator data together, find the min and max value. Then create a sequence of breaking point. Then use it as parameter to draw plot again.

### Firstly is practical `Body mass distributions`.

We create a `PP_Dists.R` script read data from a csv file. For the first 3 pdf file of plots, we get group name of interaction. Then using them into for loop create plot for each interaction (by create a subset of each interaction), and using par combine them together. Histogram is used to display distribution.

For the csv file, an empty frame is provided and go through every feeding interaction. Calculate mean and median of prey, predator and ratio.

Seperate for loop is used to create each file. It could be improve afterwards.

### Second practical Visualizing Regression analyses

Read the csv data and using facetting print multiple image share same x axis.

Firstly turn mg into g, let all data use same unit. Then set scatter point in shape of `+`. Set the axes into log using scientfic notation. Then use facetting function split image by interaction type. 

Then get every unique grouping combination. Using for loop to get each row of data that is belong to that group with more than 2 points. Using linear model and broom package to get every data require. Finally combine all data into a data frame. Write into single csv file.

### `PP_Regress.R`
This file read csv file and perform linear regression on data. Grouping by feeding interaction and use ggplot draw figure. Also save regression coefficients (intercept, slope), R-squared, F-statistic, and p-value, then exports all results to a CSV file.

### `PP_Dists.R`
This script analyzes predator-prey mass relationships from ecological data. Creating histograms of log10-transformed predator mass, prey mass, and size ratios, organized by feeding interaction type.
To fix bug, Add one message to silent load tidyverse. `suppressPackageStartupMessages(library(tidyverse))` 

### `GPDD_Data.R`
This one load Rdata and label the location on the world map.

### `MyBars.R`
This program reads data from Results.txt and creates a bar chart visualization using ggplot2. Display sets of vertical line segments in different colors. Using filter add text labels below if not NA.

### `Griko.R`
This script demonstrates Girko's circular law by generating a large random matrix. And computing the eigenvalues and plotting them in the complex plane as a scatter plot. It overlays a circle with radius √N to show that eigenvalues of random matrices concentrate within this boundary.

### `SQLinR.R`
This script demonstrates how to create and manipulate SQLite databases in R using the sqldf package. I change the code a bit so when the table exist delete it at first.

### `plotLin.R`
It uses ggplot to draw data fit linear regression and save it to MyLinReg.pdf.
