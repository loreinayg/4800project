#'double variable rejection sampling
#'
#'This function implements double variable rejection samping for rvs
#'  with bounded support and which have bounded pdf.
#'
#' Here are more details about the algorithm that we are using
#'
#'@param f the pdf that we are sampling from
#'@param N the number of attempted samples
#'@param lbx the lower bound of support x
#'@param lby the lower bound of support y
#'@param ubx the upper bound of support x
#'@param uby the upper bound of support y
#'
#'@return A vector containing samples from pdf
#'@export
#'
#'@examples
#'


twoDsample <- function(f, N, lbx, ubx, lby, uby) {
  if(c(lbx,ubx),c(lby,uby), integral>1){
    #we need to define the function and the lower bund upper bound
    #if the integral larger than 1 which means it is not a valid pdf, generate error, stop the program
  stop("Error: the pdf you just entered is not valid, the area under the pdf should be 1")
}
else{
  #if this is a valid pdf then...
  for
}
