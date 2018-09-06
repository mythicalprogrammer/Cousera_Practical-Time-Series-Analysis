sigma <- 4
phi[1:2] <- c(1/3, 1/2)
n <- 10000

set.seed(2017)
ar.process <- arima.sim(n, model = list(ar=c(1/3, 1/2)), sd = 4)
ar.process[1:5]

r <- NULL
r[1:2] <- acf(ar.process, plot = F)$acf[2:3]
R <- matrix(1, 2, 2)
R[1,2] <- r[1]
R[2,1] <- r[1]

b <- matrix(r, 2, 1)

solve(R,b)

phi.hat <- matrix(c(solve(R,b)[1,1], solve(R,b)[2,1]),2,1)

c0 <- acf(ar.process, type='covariance', plot=F)$acf[1]
var.hat <- c0*(1-sum(phi.hat*r))
par(mfrow=c(3,1))
plot(ar.process, main = 'Simulated AR(2)')
acf(ar.process, main = 'ACF')
pacf(ar.process, main = 'PACF')
