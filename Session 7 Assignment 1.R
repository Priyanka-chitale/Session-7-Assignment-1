## 1. Histogram for all variables in a dataset mtcars. Write a program to create histograms for all columns.

library(purrr)
library(tidyr)
library(ggplot2)

mtcars %>%
  keep(is.numeric) %>% 
  gather() %>% 
  ggplot(aes(value)) +
  facet_wrap(~ key, scales = "free") +
  geom_histogram(bin = 12)

##2. Check the probability distribution of all variables in mtcars 

mpg = rnorm(mtcars$mpg, mean = mean(mtcars$mpg, na.rm = TRUE), sd = sd(mtcars$mpg, na.rm = TRUE))

##3. Write a program to create boxplot for all variables.
par(mfrow=c(2,6))
boxplot(mtcars$mpg);boxplot(mtcars$cyl);boxplot(mtcars$disp);boxplot(mtcars$hp);
boxplot(mtcars$drat);boxplot(mtcars$wt);boxplot(mtcars$qsec);boxplot(mtcars$vs);
boxplot(mtcars$am);boxplot(mtcars$gear);boxplot(mtcars$carb)