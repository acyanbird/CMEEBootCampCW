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