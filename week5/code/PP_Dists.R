require(tidyverse) 

MyDF <- read.csv("../data/EcolArchives-E089-51-D1.csv", stringsAsFactors = FALSE)

# Turn the feeding interaction column into a factor easy to classify
MyDF$Type.of.feeding.interaction <- as.factor(MyDF$Type.of.feeding.interaction)

# Convert mg to g and adjust mass values
MyDF$Prey.mass[MyDF$Prey.mass.unit == "mg"] <- MyDF$Prey.mass[MyDF$Prey.mass.unit == "mg"] / 1000
MyDF$Prey.mass.unit[MyDF$Prey.mass.unit == "mg"] <- "g"

# Get list of feeding interactions
feeding_interactions <- levels(MyDF$Type.of.feeding.interaction)
num_interactions <- length(feeding_interactions)

pdf(file = "../results/Pred_Subplots.pdf", width = 12, height = 11)

par(mfcol = c(ceiling(num_interactions / 2), 2))  # Set up plotting area

# Create a separate plot for each feeding interaction
for (i in 1:num_interactions) {
  interaction <- feeding_interactions[i]
  subset_df <- filter(MyDF, Type.of.feeding.interaction == interaction)


  # Basic scatter plot with log10 axes
    hist(log10(subset_df$Predator.mass),xlab="log10(Predator Mass (g))",ylab="Count", 
    col = "lightblue", border = "#ab3044") # Change bar and borders colors 
}

graphics.off()

pdf(file = "../results/Prey_Subplots.pdf", width = 12, height = 11)

par(mfcol = c(ceiling(num_interactions / 2), 2))  # Set up plotting area

# Create a separate plot for each feeding interaction
for (i in 1:num_interactions) {
  interaction <- feeding_interactions[i]
  subset_df <- filter(MyDF, Type.of.feeding.interaction == interaction)


  # Basic scatter plot with log10 axes
    hist(log10(subset_df$Prey.mass),xlab="log10(Prey Mass (g))",ylab="Count", 
    col = "lightblue", border = "#b8384d") # Change bar and borders colors 
}

graphics.off()

pdf(file = "../results/SizeRatio_Subplots.pdf", width = 12, height = 11)

par(mfcol = c(ceiling(num_interactions / 2), 2))  # Set up plotting area

# Create a separate plot for each feeding interaction
for (i in 1:num_interactions) {
  interaction <- feeding_interactions[i]
  subset_df <- filter(MyDF, Type.of.feeding.interaction == interaction)


  # Basic scatter plot with log10 axes
    hist(log10(subset_df$Prey.mass/subset_df$Predator.mass),xlab="log10(Prey Mass / Predator Mass)",ylab="Count", 
    col = "lightblue", border = "#ac2e43") # Change bar and borders colors 
}

graphics.off()

## create csv file with data from each interaction

#initialize empty data frame to store results
PP_results <- data.frame(
  Feeding.type = feeding_interactions,
  Mean.log.Predator.mass = NA_real_,
  Median.log.Predator.mass = NA_real_,
  Mean.log.Prey.mass = NA_real_,
  Median.log.Prey.mass = NA_real_,
  Mean.log.Size.ratio = NA_real_,
  Median.log.Size.ratio = NA_real_,
  stringsAsFactors = FALSE
)


# Calculate means and medians for each feeding interaction
for (i in 1:num_interactions) {
  interaction <- feeding_interactions[i]
  subset_df <- filter(MyDF, Type.of.feeding.interaction == interaction)

  PP_results$Mean.log.Predator.mass[i] <- mean(log10(subset_df$Predator.mass), na.rm = TRUE)
  PP_results$Median.log.Predator.mass[i] <- median(log10(subset_df$Predator.mass), na.rm = TRUE)
  PP_results$Mean.log.Prey.mass[i] <- mean(log10(subset_df$Prey.mass), na.rm = TRUE)
  PP_results$Median.log.Prey.mass[i] <- median(log10(subset_df$Prey.mass), na.rm = TRUE)
  PP_results$Mean.log.Size.ratio[i] <- mean(log10(subset_df$Prey.mass / subset_df$Predator.mass), na.rm = TRUE)
  PP_results$Median.log.Size.ratio[i] <- median(log10(subset_df$Prey.mass / subset_df$Predator.mass), na.rm = TRUE)
} 

# create human friendly csv file header
colnames(PP_results) <- c(
  "Feeding type",
  "Mean log10 Predator mass",
  "Median log10 Predator mass",
  "Mean log10 Prey mass",
  "Median log10 Prey mass",
  "Mean log10 Size ratio",
  "Median log10 Size ratio"
)

# Prevent row names from being written to the csv
write.csv(PP_results, file = "../results/PP_Results.csv", row.names = FALSE)