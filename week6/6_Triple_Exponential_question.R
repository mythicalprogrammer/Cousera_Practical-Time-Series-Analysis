model <- HoltWinters(sunspots)
model2 <- forecast(model, h = 1)
model2
