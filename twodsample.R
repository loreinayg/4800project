twoDsample <- function(fj, N, lbx, ubx, lby, uby) {
  library(cubature)
  if (abs(adaptIntegrate(fj, c(lbx, lby), c(ubx, uby), maxEval=10000)$integral - 1) > 0.001) {
    stop("Error: This is not a valid pdf. The area under the function you given should be 1")
  }
  else{
    two <- replicate(N,c(runif(1,lbx,ubx),runif(1,lby,uby)))
    maxf <- max(replicate(100000,fj(c(runif(1,lbx,ubx),runif(1,lby,uby)))))
    unis <- runif(N, 0, maxf)
    f1 = -1
    f3 = 0
    twos = c()
    for (i in 1:N) {
      f1 = f1 + 2
      f2 = f1 + 1
      f3 = f3 + 1
      if (unis[f3]<fj(c(two[f1],two[f2]))){
        twos = c(twos, c(two[f1],two[f2]))
      }
    }
    data.frame(x=twos[c(seq(1,length(twos)-1,2))],y=twos[c(seq(2,length(twos),2))])
    
  }
}
ggplot(twoDsample(fj = jointPFF, N=100, lbx=0, ubx=1, lby=0, uby=1), aes(x, y)) +  geom_density_2d()