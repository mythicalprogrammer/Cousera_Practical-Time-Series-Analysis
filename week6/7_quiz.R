model <- HoltWinters(sunspots)
model2 <- forecast(model, h = 1)
model2

forecast(model, h = 4)

offset <- 1983*12 - 1749*12 + 8
sunspots[offset]
forecast(model, h = 25) # 38.65281


