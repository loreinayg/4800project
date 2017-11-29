jointPFF <- function(x){
  x1 = x[1]
  x2 = x[2]
  ifelse(0<x1 & x1 <1 & 0<x2 & x2<1 & 0<x1+x2 & x1+x2<1, 24*x1*x2, 0)}

twoDsample(fj = jointPFF, N=100, lbx=0, ubx=1, lby=0, uby=1)

ggplot(twoDsample(fj = jointPFF, N=100, lbx=0, ubx=1, lby=0, uby=1), aes(x, y)) +  geom_density_2d()
