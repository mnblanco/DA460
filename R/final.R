library(oilabs)
library(readr)

setwd("~/GitHub/A-DA460/R")
# read data set
run <- read_csv("run10.csv")
# remove the NA in divTot
run <- run[!is.na(run$divTot), ]
run$gender <- as.factor(run$gender)

inference(y = run$divTot, x = run$gender,  est = "mean", type = "ci", null = 0, 
          alternative = "twosided", method = "theoretical",
          order = c("M","F"))

load("nc.RData")

inference(y = nc$weight, x = nc$habit, est = "mean", type = "ci", null = 0, 
          alternative = "twosided", method = "theoretical", 
          order = c("smoker","nonsmoker"))

