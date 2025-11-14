# Load required packages
#install.packages("maps")  # Uncomment this line if 'maps' package is not installed

library(maps)


# Load the GPDD data
load("../data/GPDDFiltered.RData")

# Save the plot to PDF
pdf("../results/GPDD_map.pdf")

# Create a world map
map("world", col = "#a79a9a", fill = TRUE, border = "#070707", 
    bg = "#1f80a1", ylim = c(-60, 90))

# Superimpose data points showing GPDD locations
points(gpdd$long, gpdd$lat, col = "red")

# Close the PDF device
dev.off()
