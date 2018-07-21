library(dplyr)
library(ggplot2)

setwd("~/Tom_Learning/Coursera ML/ML Course 2 Regression/Week 1")

df_kc_house <- as.data.frame(read.csv("kc_house_data.csv"))
summary(df_kc_house)

#ggplot(x=df_kc_house$price)
qqplot(df_kc_house$sqft_living, df_kc_house$price)

dfmeans <- array(1000)

for(i in 1:1000){
  tsample <- sample_frac(df_kc_house,.30, replace = TRUE)
  dfmeans[i] <- mean(tsample$sqft_living)
  i=i+1
  remove(tsample)
}

#summary(dfmeans)
dfmeans <- as.data.frame(dfmeans)
dfmeans.append
colnames(dfmeans)
ggplot(dfmeans, aes(x=dfmeans)) + geom_histogram(binwidth = 5)