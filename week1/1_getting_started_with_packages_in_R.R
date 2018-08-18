# see what data sets Faraway package has made availabe to us
data(package = 'faraway')

# selecting a particular data set from faraway package
data("coagulation", package = 'faraway')

# seeing the dataset
coagulation

"Since we have 4 different diets, we would probably want to obtain a
graphical representation “side by side” to see whether there are obvious
differences."
plot(coag ~ diet, data = coagulation)

"Looking at the boxplot, it seems natural to ask whether the average
coagulation times are independent of diet. This is a problem typically
approached with ANOVA (Analysis of Variance), one of the topics we assume
you have seen, at least a little."
summary(coagulation)

"one way to see summary data for each class"
ourModel = lm(coag~diet-1, coagulation)
summary(ourModel)

# EXERCISE
data(rats, package='faraway')

names(rats)
# "time"   "poison" "treat"

data(package = 'faraway')
"Effect of toxic agents on rats"

plot(time~treat,data=rats)
