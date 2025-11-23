## This week we continue with [Biological Computing in Python](https://mulquabio.github.io/MQB/notebooks/Python.html)

### `LV1.py`
This script provide Lotka-Volterra predator-prey model implementation using numerical integration to simulate population dynamics. And saved results as PDF in two plots.

### `LV2.py`
This script extend the Lotka-Volterra model by adding a carrying capacity (K).

### `profileme.py`
This file using two function profiling performance to identify bottlenecks in Python operations. Executed once with 1000 iterations and a test string.

### `profileme2.py`
This script is identical to profileme.py but runs with a much larger iteration count. Making it more suitable for profiling computational performance and memory usage. 


##  [Biological Computing in R](https://mulquabio.github.io/MQB/notebooks/R.html#)

### `browse.R`
The `browser()` call inside the loop enables interactive debugging. Finally, it plots the resulting exponential growth curve as a line graph.

### `Florida.R`
Then using Florida.tex produce Florida.pdf for Florida temperature analysis.

### `try.R`
This script demonstrates error handling in R. Using try() to catch and suppress errors when this condition fails. If an error occurs, it captures the error and allows the script to continue running instead of terminating the entire execution.

## [Data Management and Visualization](https://mulquabio.github.io/MQB/notebooks/Data_R.html)

### `DataWrang.R` 
This script loads the Pound Hill dataset and its metadata, then cleans the main data by transposing it and replacing empty strings with zeros. It proceeds to convert the data from a wide matrix format into a tidy, long-format data frame using the reshape2 package. 

### `DataWrangTidy.R`
This file use gather() method from tidyr to replace melt method use in reshape2. Because the pipe operator that could be used in tidyr is more straight forward.

