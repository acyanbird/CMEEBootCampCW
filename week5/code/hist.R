MyDF <- read.csv("../data/EcolArchives-E089-51-D1.csv", stringsAsFactors = FALSE)

# hist(log10(MyDF$Predator.mass), xlab = "log10(Predator Mass (g))", ylab = "Count") # include labels

# hist(log10(MyDF$Prey.mass), xlab = "log10(Prey Mass (g))", ylab = "Count") # include labels

# gather all data so we could find the overall min and max

all_data <- c(log10(MyDF$Predator.mass), log10(MyDF$Prey.mass))

min_val <- floor(min(all_data, na.rm = TRUE))
max_val <- ceiling(max(all_data, na.rm = TRUE))

# create breaks from min to max with interval of 0.5

breaks_seq <- seq(from = min_val, to = max_val, by = 0.5)

hist(log10(MyDF$Predator.mass), xlab = "log10(Predator Mass (g))", ylab = "Count", breaks = breaks_seq, xlim = c(min_val, max_val)) # include labels

hist(log10(MyDF$Prey.mass), xlab = "log10(Prey Mass (g))", ylab = "Count", breaks = breaks_seq, xlim = c(min_val, max_val)) # include labels