model <- HoltWinters(austres, gamma=FALSE)
model$fitted
library("forecast")
model2 <- forecast(model, h = 1)
model2
