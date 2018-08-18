# CO2 example

help(co2)

# verify that co2 is a time series object
class(co2) # "ts" stands for time series object

" This means that we have available to us data which occurs at equally
spaced points in time. It includes observations together with a set of
descriptions (start time of the series, end time, frequency, etc.)."

plot(co2, main='Atmospheric CO2 Concentration')

co2.linear.model <- lm(co2 ~ time(co2))

plot(co2, main='Atmospheric CO2 Concentration with Fitted Line')
abline(co2.linear.model )

"we can see a systematic departure from normality in the tails, along with
an obvious structure in the time plot indicating departures from the
standard regression assumptions"

par(mfrow=c(1,3)) # par() command to see these plots together
( co2.residuals = resid( co2.linear.model ) )
hist(co2.residuals, main= "Histogram of CO2 Residuals")
qqnorm(co2.residuals, main= "Normal Probability Plot")
qqline(co2.residuals)
plot(co2.residuals ~ time(co2), main="Residuals on Time")

plot(co2.residuals ~ time(co2), xlim=c(1960, 1963),
     main="Zoomed in Residuals on Time")

# Another Example
help(sleep)
sleep
names(sleep)
plot(extra~group, data=sleep, main = "Extra Sleep in Gossett Data by Group")
attach(sleep)
extra.1 <- extra[group==1]
extra.2 <- extra[group==2]
t.test(extra.1, extra.2, paired=TRUE, alternative="two.sided")

diffs <- extra.1 - extra.2
qqnorm(diffs, main = "Normal Probability Plot")
qqline(diffs)

plot(extra.2 ~ extra.1, xlab='extra sleep with drug 1',
     ylab='extra sleep with drug 2',
     main='Extra Sleep Drug 2 against Extra Sleep Drug 1')
sleep.linear.model <- lm(extra.2 ~ extra.1 )
abline(sleep.linear.model)

summary(sleep.linear.model)
