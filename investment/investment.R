# Install libraries
library(ggplot2)
library(beeswarm)
library(graphics)

# Import LA investment data
investment <- read.csv("Investments_LA_bytype.csv")

# Bee swarm plots
beeswarm <- beeswarm(DepositsBanks_PopWeighted ~ Class, 
         data= investment, 
         pch=20, 
         method="compactswarm", 
         col = c("#808080", "#000000", "#D3D3D3","#808080", "#000000"),
         corral = c("wrap"))

beeswarm <- beeswarm(DepositsBanks_PopWeighted ~ Class, 
                     data= investment, 
                     pch=20, 
                     method="compactswarm", 
                     col = c("#808080", "#000000", "#D3D3D3","#808080", "#000000"),
                     corral = c("wrap"))

beeswarm <- beeswarm(OtherInvestments_PopWeighted ~ Class, 
                     data= investment, 
                     pch=20, 
                     method="compactswarm", 
                     col = c("#808080", "#000000", "#D3D3D3","#808080", "#000000"),
                     corral = c("wrap"))
