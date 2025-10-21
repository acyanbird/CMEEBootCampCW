rm(list=ls())

load("../data/KeyWestAnnualMeanTemperature.RData")
ls()
class(ats)
head(ats)
plot(ats)

# Pearson as default, input Year and Temp columns from ats data frame
correlation_coefficient <- cor(ats$Year, ats$Temp)
print(correlation_coefficient)