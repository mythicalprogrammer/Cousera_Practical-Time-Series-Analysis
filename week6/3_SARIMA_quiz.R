plot(USAccDeaths)
plot(diff(USAccDeaths,12))
acData <- diff(diff(USAccDeaths),12)

plot(acData)


par(mfrow=c(2,1))

# obtain acf and pacf below
acf(acData)
acf(acData, type="partial")

par(mfrow=c(2,1))

acData <- diff(diff(USAccDeaths),12)


# obtain acf and pacf below
acf(acData)
acf(acData, type="partial")


model<- sarima(USAccDeaths,0,1,1,0,1,1,12)

print(model)

model$ttable

sarima.for(USAccDeaths,12,1,1,0,0,1,1,63)
