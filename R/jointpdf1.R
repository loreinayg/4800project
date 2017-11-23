jointPDF <- function(x){
  x = x
  y = y
  ifelse(0<x & x <1 & 0<x & x<1 & 0<x+y & x+y<1, 2*x*y, 0)}

twoDsample(f = jointPDF, N=100, lbx=0, ubx=1, lby=0, uby=1)
