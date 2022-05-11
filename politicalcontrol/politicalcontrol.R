```{r}
library(ggplot2)
library(tidyr)
library(RColorBrewer)
library(dplyr)
library(ggrepel) # For labels
library(viridis) # For colour palettes
library(ggpubr) # Arrange multiple plots on the same page
library(beeswarm)
```

# Graphs of financial indicators by political control 
## Upload political control and financial indicators from csv file
```{r}
control_data <- read.csv("PoliticalControl_FinancialIndicators.csv", check.names=FALSE, fileEncoding = 'UTF-8-BOM')
control_data
```

## Plot swarm chart
```{r}
tiff('PoliticalControl_InterestandInvestment.tiff', units = "in", res = 600, height = 6, width = 6)
beeswarm(InterestandInvestment_PerCapita ~ Political_control,
         data = control_data,
         pch = 20,
         method = "compactswarm",
         col = c("#808080", "#000000", "#D3D3D3", "#808080", "#000000"),
         corral = c("wrap"))
dev.off()
```

```{r}
tiff('PoliticalControl_Surplus.tiff', units = "in", res = 600, height = 6, width = 6)
beeswarm(SurplusonExternalTrading_perCapita ~ Political_control,
         data = control_data,
         pch = 20,
         method = "compactswarm",
         col = c("#808080", "#000000", "#D3D3D3", "#808080", "#000000"),
         corral = c("wrap"))
dev.off()
```

```{r}
tiff('PoliticalControl_ExternalBorrowing.tiff', units = "in", res = 600, height = 6, width = 6)
beeswarm(GrossExternalBorrowing_percapita ~ Political_control,
         data = control_data,
         pch = 20,
         method = "compactswarm",
         col = c("#808080", "#000000", "#D3D3D3", "#808080", "#000000"),
         corral = c("wrap"))
dev.off()
```

```{r}
tiff('PoliticalControl_Deposits.tiff', units = "in", res = 600, height = 6, width = 6)
beeswarm(DepositsBanks_PerCapita ~ Political_control,
         data = control_data,
         pch = 20,
         method = "compactswarm",
         col = c("#808080", "#000000", "#D3D3D3", "#808080", "#000000"),
         corral = c("wrap"))
dev.off()
```
