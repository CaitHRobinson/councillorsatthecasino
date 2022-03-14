# Install libraries
library(ggplot2)
library(beeswarm)
library(graphics)

# Import LA investment data
investment <- read.csv("Investments_LA_bytype.csv")

# Bee swarm plots
beeswarm(DepositsBanks_PopWeighted ~ Class, # Variable partitioned by Local Government class
                  data= investment, 
                  pch=20, # Change to a point symbol
                  method="compactswarm", # Make the swarm compact
                  col = c("#808080", "#000000", "#D3D3D3","#808080", "#000000"), #m Black and white colour palette for printing
                  corral = c("wrap")) # Wrap so that points cluster

beeswarm(DepositsBanks_PopWeighted ~ Class, 
                     data= investment, 
                     pch=20, 
                     method="compactswarm", 
                     col = c("#808080", "#000000", "#D3D3D3","#808080", "#000000"),
                     corral = c("wrap"))

beeswarm(OtherInvestments_PopWeighted ~ Class, 
                     data= investment, 
                     pch=20, 
                     method="compactswarm", 
                     col = c("#808080", "#000000", "#D3D3D3","#808080", "#000000"),
                     corral = c("wrap"))
