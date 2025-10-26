rm(list=ls())

library(ggplot2)

load("../data/KeyWestAnnualMeanTemperature.RData")
# ls()
# class(ats)
# head(ats)
p1 <- ggplot(ats, aes(x = Year, y = Temp)) +
  geom_point(color = "blue") + geom_smooth(method = "lm", color = "#ae1c1c", se = FALSE) +
  labs(title = "Florida Temperature Over Years",
       x = "Year",
       y = "Temperature (°C)")

# print(p1)
ggsave("../data/FloridaTemp.png", plot = p1, width = 8, height = 6)
# For PDF report usage


correlation_coefficient <- cor(ats$Year, ats$Temp)
print(correlation_coefficient)
# 0.5331784

set.seed(12345)  # set seed for reproducibility
permutations_num <- 100000
permutations <- numeric(permutations_num)  # number of permutations

for (i in 1:permutations_num) {
    shuffled_temp <- sample(ats$Temp)  # shuffle Temp values
    permutations[i] <- cor(ats$Year, shuffled_temp)  # calculate correlation with shuffled Temp
}

# Plot the histogram of permutation results
p2 <- ggplot(data.frame(permutations), aes(x = permutations)) +
  geom_histogram(bins = ceiling(log2(length(permutations)) + 1), fill = "lightblue", color = "#994bb348") +
  labs(title = "Permutation Test: Correlation Coefficients",
       x = "Correlation Coefficient",
       y = "Frequency")

# print(p2)
ggsave("../data/FloridaPermutations.png", plot = p2, width = 8, height = 6)

# Calculate p-value
p_value <- sum(permutations >= correlation_coefficient) / permutations_num

print(p_value)