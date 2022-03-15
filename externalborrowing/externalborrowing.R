# Install libraries
library(ggplot2)
library(beeswarm)
library(graphics)

# Import LA investment data
external_borrowing <- read.csv("ExternalBorrowing_ByType.csv")

# Bee swarm plots
tiff("GrossExternalBorrowing_ByType.tiff", width = 4500, height = 4500, res=600)
beeswarm(GrossExternalBorrowing_percapita ~ LA_type, 
         data= external_borrowing, 
         pch=20, 
         method="compactswarm", 
         col = c("#808080", "#000000", "#D3D3D3","#808080", "#000000"),
         corral = c("wrap"))
dev.off()
