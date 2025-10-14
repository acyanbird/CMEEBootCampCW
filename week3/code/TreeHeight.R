# This function calculates heights of trees given distance of each tree 
# from its base and angle to its top, using  the trigonometric formula 
#
# height = distance * tan(radians)
#
# ARGUMENTS
# degrees:   The angle of elevation of tree
# distance:  The distance from base of tree (e.g., meters)
#
# OUTPUT
# The heights of the tree, same units as "distance"

TreeHeight <- function(degrees, distance) {
  radians <- degrees * pi / 180
  height <- distance * tan(radians)
  print(paste("Tree height is:", height))
  
  return (height)
}

TreeHeight(37, 40)

TreeData <- read.csv("../data/trees.csv", header = TRUE) # import with headers

TreeData$Tree.Height.m <- TreeHeight(TreeData$Angle.degrees, TreeData$Distance.m)

cat("First few calculated heights:\n")
print(TreeData$Tree.Height.m)
cat("\n")

write.csv(TreeData, file = "../results/TreeDataHeight.csv", row.names = FALSE)

