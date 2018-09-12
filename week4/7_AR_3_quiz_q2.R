b <- cbind(c(0.8,0.6,0.2))
R <- cbind(c(1,0.8,0.6), c(0.8,1,0.8), c(0.6,0.8,1))
solve(R,b)
data <- LakeHuron
pacf(diff(data), main='PACF')

print(acf(diff(data))$acf[1])
print(acf(diff(data))$acf[2])
print(acf(diff(data))$acf[3])

R=matrix(1,2,2) # matrix of dimension 2 by 2, with entries all 1's.
r=NULL
r[1:2]=acf(diff(LakeHuron), plot=F)$acf[2:3]
R[1,2]=r[1] # only diagonal entries are edited
R[2,1]=r[1] # only diagonal entries are edited
R
b=matrix(r,nrow=2,ncol=1)
b

# Continue with a routine here to find the coefficients of the fitted model. See parameter estimation in this lesson for help.
solve(R,b)

R=matrix(1,2,2) # matrix of dimension 2 by 2, with entries all 1's.
r=NULL
r[1:2]=acf(diff(LakeHuron), plot=F)$acf[2:3]
R[1,2]=r[1] # only diagonal entries are edited
R[2,1]=r[1] # only diagonal entries are edited
R
b=matrix(r,nrow=2,ncol=1)
b
phi.hat<-solve(R,b)
phi.hat

c0=acf(diff(LakeHuron), type='covariance', plot=F)$acf[1]

var.hat <- c0*(1-sum(phi.hat*r))
