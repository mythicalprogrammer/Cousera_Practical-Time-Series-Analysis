rm(list = ls(all = TRUE))
rain.data <- scan("http://robjhyndman.com/tsdldata/hurst/precip1.dat", skip = 1)
rain.ts <- ts(rain.data, start = c(1813))

par(mfrow = c(1,2))
hist(rain.data,
     main = "Annual London Rainfall 1813-1912",
     xlab = "rainfall in inches")
qqnorm(rain.data,
       main = "Normal Plot of London Rainfall")
qqline(rain.data)

par( mfrow = c(2,1))
plot.ts(rain.ts,
        main = "Annual London Rainfall 1813-1912",
        xlab = "year",
        ylab = "rainfall in inches")
acf(rain.ts,
    main = "ACF: London Rainfall")

library(forecast)
auto.arima(rain.ts)

alpha <- .2
forecast.values <- NULL

n <- length(rain.data)

# naive first forecast
forecast.values[1] <- rain.data[1]

# loop to create all forecast values
for( i in 1:n) {
  forecast.values[i + 1] <- alpha * rain.data[i] + (1 - alpha) * forecast.values[i]
}

paste("forecast for time", n+1, "=", forecast.values[n+1])

HoltWinters(rain.ts, beta = FALSE, gamma = FALSE)
