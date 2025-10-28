library(ggplot2)
library(dplyr)
library(scales) # use 10^x format on log axes

MyDF <- read.csv("../data/EcolArchives-E089-51-D1.csv", stringsAsFactors = FALSE)

# Turn the feeding interaction column into a factor easy to classify
MyDF$Type.of.feeding.interaction <- as.factor(MyDF$Type.of.feeding.interaction)

# Convert mg to g and adjust mass values
MyDF$Prey.mass[MyDF$Prey.mass.unit == "mg"] <- MyDF$Prey.mass[MyDF$Prey.mass.unit == "mg"] / 1000
MyDF$Prey.mass.unit[MyDF$Prey.mass.unit == "mg"] <- "g"

p <- ggplot (
    MyDF,
    # use mass as axes and color by life stage
    aes(x = Prey.mass, 
        y = Predator.mass, 
        color = Predator.lifestage)
    ) +
    # Add scatter points
    geom_point(shape = 3, alpha = 0.7) +
    # Add linear regression line with confidence interval
    geom_smooth(method = "lm", se = TRUE, fullrange = TRUE) +
    # Set log axes with scientific labels
    scale_x_log10(
        #force scientific labels
      labels = scales::label_scientific()
    ) +
    scale_y_log10(
      labels = scales::label_scientific()
    ) +
    # Add facetting by feeding interaction type
    # All interactions in rows, single column
    facet_grid(Type.of.feeding.interaction ~ .) +
    # Add labels
    labs(
      x = "Prey Mass in grams",
      y = "Predator mass in grams",
      color = "Predator.lifestage"
    ) +
    # Add theme
    theme_bw() +
    theme(
      legend.position = "bottom"
    )

# Save as PDF
ggsave("../results/PP_Regress.pdf", p, width = 5, height = 20)


# Get unique grouping combinations for regression analysis
# and filter to only those with more than 2 data points
unique_groups <- data_for_plot %>%
  filter(n() > 2) %>% 
  distinct(Type.of.feeding.interaction, Predator.lifestage)

results_list <- list()

# iterate over each unique group
for (i in 1:nrow(unique_groups)) {
  
  current_type <- unique_groups$Type.of.feeding.interaction[i]
  current_lifestage <- unique_groups$Predator.lifestage[i]
  
  # get subset of data for current group
  subset_df <- data_for_plot %>%
    filter(
      Type.of.feeding.interaction == current_type,
      Predator.lifestage == current_lifestage
    )
    
  # double check we have enough data points
  if (nrow(subset_df) > 2) {
    
    # Get the linear model
    model <- lm(log10(Predator.mass.g) ~ log10(Prey.mass.g), data = subset_df)
    
    # Using broom to get tidy coefficients and glance stats
    coeffs <- broom::tidy(model)
    glance_stats <- broom::glance(model)
    
    intercept_val <- coeffs$estimate[coeffs$term == "(Intercept)"]
    slope_val <- coeffs$estimate[coeffs$term == "log10(Prey.mass.g)"]
    r_squared_val <- glance_stats$r.squared
    f_stat_val <- glance_stats$statistic
    p_val <- glance_stats$p.value
    
    # Get result row as data frame
    result_row <- data.frame(
      Type.of.feeding.interaction = current_type,
      Predator.lifestage = current_lifestage,
      intercept = intercept_val,
      slope = slope_val,
      r.squared = r_squared_val,
      statistic = f_stat_val,
      p.value = p_val
    )
    
    # Append the result row to the list
    results_list[[i]] <- result_row
  }
}

# Get final results table by binding all rows together
final_results_table <- dplyr::bind_rows(results_list)


write.csv(
  final_results_table, 
  file = "../results/PP_Regress_Results_forloop.csv", 
  row.names = FALSE
)
