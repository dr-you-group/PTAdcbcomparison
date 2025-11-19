library(dplyr)

inpact <- read.csv("inpact.csv", stringsAsFactors = FALSE, colClasses = "character")
ranger <- read.csv("ranger.csv", stringsAsFactors = FALSE, colClasses = "character")

inpact_all <- inpact %>%
               filter(as.integer(diameter) >=4 & as.integer(diameter) <8)
inpact_all_udi <- inpact_all$udi
inpact_all_udi_list <- paste(sprintf("'%s'", inpact_all_udi), collapse = ", ")
cat(inpact_all_udi_list)

ranger_all <- ranger %>%
  filter(as.integer(diameter) >=4 & as.integer(diameter) <8)
ranger_all_udi <- ranger_all$udi
ranger_all_udi_list <- paste(sprintf("'%s'", ranger_all_udi), collapse = ", ")
cat(ranger_all_udi_list)



inpact_large <- inpact %>%
  filter(as.integer(diameter) >=6 & as.integer(diameter) <8)
inpact_large_udi <- inpact_large$udi
inpact_large_udi_list <- paste(sprintf("'%s'", inpact_large_udi), collapse = ", ")
cat(inpact_large_udi_list)

ranger_large <- ranger %>%
  filter(as.integer(diameter) >=6 & as.integer(diameter) <8)
ranger_large_udi <- ranger_large$udi
ranger_large_udi_list <- paste(sprintf("'%s'", ranger_large_udi), collapse = ", ")
cat(ranger_large_udi_list)





inpact_small <- inpact %>%
  filter(as.integer(diameter) >=4 & as.integer(diameter) <6)
inpact_small_udi <- inpact_small$udi
inpact_small_udi_list <- paste(sprintf("'%s'", inpact_small_udi), collapse = ", ")
cat(inpact_small_udi_list)

ranger_small <- ranger %>%
  filter(as.integer(diameter) >=4 & as.integer(diameter) <6)
ranger_small_udi <- ranger_small$udi
ranger_small_udi_list <- paste(sprintf("'%s'", ranger_small_udi), collapse = ", ")
cat(ranger_small_udi_list)

