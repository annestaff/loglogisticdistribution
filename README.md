
# Log-Logistic Distribution

<!-- badges: start -->
[![Lifecycle: experimental](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://lifecycle.r-lib.org/articles/stages.html#experimental)
<!-- badges: end -->

## Who am I
A package created for practising purposes made from functions created in the context of a project for the module Advanced Statistics in the CMB master's programme of Aix-Marseille-University.

In this project, we created the common functions around the Log-Logistic distribution in order to retrieve density, distribution, quantiles, as well as generate a random dataset based on given parametres.

Please note that this package was created in order to learn about creating packages in R, so the documentation, testing, and other attributes might not seem sufficient according to common best practices.

## Shiny app

![App screenshot](https://github.com/annestaff/loglogisticdistribution/blob/master/app_screenshot.png?raw=true)

The shiny app contained in this package was created for practising purposes. It show the histogram of a randomly generated dataset that follows a log-logistic distribution, allowing the user to adjust the sample size and parameters in real-time.

## Install me

You can install the development version of loglogisticdistribution from [GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("annestaff/loglogisticdistribution")
```

## Try me

This is a basic example on how to use the loglogis functions in this package:

``` r
library(loglogisticdistribution)
dloglogis(1, 3, 5)
```
Return the frequency of the value 1 in a log_logistic distribution with parameters `alpha=3` and `beta=5`.
```r
summary(rloglogis(1000, 3, 5))
```
Creates a sample set of 1000 values following a log-logistic distribution with parameters `alpha=3` and `beta=5`.
```r
hist(rloglogis(1000, 3, 5), breaks = 50)
hist(rloglogis(1000, 1, 5), breaks = 50)
hist(rloglogis(1000, 1, 3), breaks = 50)
hist(rloglogis(1000, 1, 6), breaks = 50)
```
Allows to visually explore the effects on the density distribution when varying the parameters `alpha` and `beta`.
The functions `ploglogis()` and `qloglogis()` return the probability to find a certain value on one hand and the value that has a specific probability of occurring on the other. To test the reciprocity of this, use the following:
```r
ploglogis(qloglogis(0.25, 1, 3), 1, 3)
```
It returns exactly the value passed in the quantile function, here being `0.25`.
