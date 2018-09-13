plot(discoveries,
     main = "Time Series of Number of Major Scientific Discoveries in a Year")

stripchart(discoveries, method = "stack", offset = .5, at = .15, pch = 19,
           main = "Number of Discoveries Dotplot",
           xlab = "Number of Major Scientific Discoveries in a Year",
           ylab = "Frequency")

par(mfcol = c(2,1))
acf(discoveries,
    main = "ACF of Number of Major Scientific Discoveries in A Year")
acf(discoveries,
    type = "partial",
    main = "PACF of Number of Major Scientific Discoveries in A Year")
