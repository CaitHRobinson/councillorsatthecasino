# Install libraries
library(ggplot2)
library(beeswarm)
library(graphics)

# Import LA investment data
investment_income <- read.csv("InterestandInvestmentIncome_byType.csv")

# Bee swarm plots
beeswarm(InterestandInvestment_PerCapita ~ LA_type, 
         data= investment_income, 
         pch=20, 
         method="compactswarm", 
         col = c("#808080", "#000000", "#D3D3D3","#808080", "#000000"),
         corral = c("wrap"))
