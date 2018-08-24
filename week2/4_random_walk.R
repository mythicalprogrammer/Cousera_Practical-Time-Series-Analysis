set.seed(1030)
x <- NULL
x[1] <- 0
for(i in 2:1000){
  x[i] <- x[i - 1] + rnorm(1)
}

random_walk <- ts(x)
plot(random_walk, main='A random walk', ylab=' ', xlab=' Days', col='blue',
     lwd=2)

# not stationary time series does not make sense to use ACF
# let's do it anyway

acf(random_walk)


## removing the trend

plot(diff(random_walk))
acf(diff(random_walk))
