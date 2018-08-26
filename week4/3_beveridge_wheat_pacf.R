beveridge <- read.csv("beveridge-wheat-price-index-1500.csv", header = TRUE)
beveridge.ts <- ts(beveridge[,2], start = 1500)
plot(beveridge.ts, ylab="price", main="Beveridge Wheat Price Data")
beveridge.MA <- filter(beveridge.ts, rep(1/31, 31), sides = 2)
lines(beveridge.MA, col = "red")
par(mfrow = c(3,1))
Y <- beveridge.ts / beveridge.MA
plot(Y, ylab = "scaled price", main = "Transformed Beveridge Wheat Price Data")
acf(na.omit(Y),
    main = "Autocorrelation Function of Transformed Beveridge Data")
acf(na.omit(Y), type = "partial",
    main = "Partial Autocorrelation Function of Transformed Beveridge Data")

ar(na.omit(Y), order.max = 5)
