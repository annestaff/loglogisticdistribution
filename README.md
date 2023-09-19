
# loglogisticdistribution

<!-- badges: start -->
[![Lifecycle: experimental](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://lifecycle.r-lib.org/articles/stages.html#experimental)
<!-- badges: end -->

A package created for practising purposes made from functions created in the context of a project for the module Advanced Statistics in the CMB master's programme of Aix-Marseille-University.

In this project, we created the common functions around the Log-Logistic distribution in order to retrieve density, distribution, quantiles, as well as generate a random dataset based on given parametres.

We also performed a Montecarlo experiment using censored and uncensored data as well as created a function which uses the Newton-Raphson-method to fit a distribution to a given dataset. 

Please note that this package was created in order to learn about creating packages in R, so the documentation, testing, and other attributes might not seem sufficient according to common best practices.

## Installation

You can install the development version of loglogisticdistribution from [GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("annestaff/loglogisticdistribution")
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
library(loglogisticdistribution)
dloglogis(1, 3, 5)
rloglogis(1000, 3, 5)
```

