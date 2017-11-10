#' Single variable rejection sampling
#'
#'This function implements single variable rejection samping for rvs
#'  with bounded support and which have have bounded pdf. we expect N/maxf sample
#'
#'The second paragraph will show up somewhere else and should be additional detailed
#'
#'@param f the pdf that we are sampling from
#'@param N the number of attempted samples
#'@param lb the lower bound of support f
#'@param nb the upper bound of support f
#'@param mxaf bound on f
#'
#'@return A vector containing samples from pdf
#'@export
#'
#'@examples
#'
#'betaPDF <- function(x){
#'  ifelse(0<x&x <1, 2*x, 0)}
#'oneDSAMPLE(f = betaPDF, N=100, lb=0, ub = 1, maxf = 2)
#'hist(oneDSAMPLE(f = betaPDF, N=100, lb=0, ub = 1, maxf = 2))

oneDSAMPLE <- function(f, N, lb, ub, maxf){
  ones <- runif(N, lb, ub)
  unis <- runif(N,0,maxf)
  ones[unit = f(ones)]
}

