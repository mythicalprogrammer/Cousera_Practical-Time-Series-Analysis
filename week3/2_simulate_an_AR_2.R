set.seed(2017)

X.ts <- arima.sim(list(ar = c(.7, .2)), n = 1000)

par(mfrow = c(2, 1))

plot(X.ts, main = "AR(2) Time Series, phi1 = .7, phi2 = .2")

X.acf = acf(X.ts, main = "Autocorrelation of AR(2) Time Series")
