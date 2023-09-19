# density function
#' The Log-Logistic Distribution
#'
#' @param x
#' @param alpha
#' @param beta
#'
#' @return
#' @export
#'
#' @examples
#'
#'
dloglogis <- function(x, alpha, beta) {
  res <- (beta/alpha) * (x/alpha)^(beta-1)*(1+(x/alpha)^beta)^-2
  return(res)
}

# distribution function
#' The Log-Logistic Distribution
#'
#' @param q
#' @param alpha
#' @param beta
#'
#' @return
#' @export
#'
#' @examples
ploglogis <- function(q, alpha, beta) {
  res <- 1 / (1 + (q/alpha)^beta)
  return(res)
}

# quantile function
#' The Log-Logistic Distribution
#'
#' @param p
#' @param alpha
#' @param beta
#'
#' @return
#' @export
#'
#' @examples
qloglogis <- function(p, alpha, beta) {
  res <- alpha * ((1/p) - 1)^(1/beta)
  return(res)
}

# random generation
#' The Log-Logistic Distribution
#'
#' @param n
#' @param alpha
#' @param beta
#'
#' @return
#' @export
#'
#' @examples
rloglogis <- function(n, alpha, beta) {
  u <- runif(n)  # Generate n random numbers from a uniform distribution

  x <- alpha * ((1 / u - 1)^(-1 / beta))  # Transform the uniform random numbers using the inverse CDF

  return(x)
}
