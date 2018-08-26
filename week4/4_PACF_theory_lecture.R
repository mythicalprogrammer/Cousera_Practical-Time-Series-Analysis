#####
# Install require package and libraries
#####

# ipak function: install and load multiple R packages.
# check to see if packages are installed. Install them if they are not, then load them into the R session.

ipak <- function(pkg){
  new.pkg <- pkg[!(pkg %in% installed.packages()[, "Package"])]
  if (length(new.pkg))
    install.packages(new.pkg, dependencies = TRUE)
  sapply(pkg, require, character.only = TRUE)
}

# usage
packages <- c("isdals", "ppcor")
ipak(packages)

# ----

data(bodyfat)
attach(bodyfat)
pairs(cbind(Fat, Triceps, Thigh, Midarm))
cor(cbind(Fat, Triceps, Thigh, Midarm))

Fat.hat <- predict(lm(Fat ~ Thigh))
Triceps.hat <- predict(lm(Triceps~ Thigh))
cor((Fat - Fat.hat), (Triceps - Triceps.hat))

Fat.hat <- predict(lm(Fat ~ Thigh + Midarm))
Triceps.hat <- predict(lm(Triceps ~ Thigh + Midarm))
cor((Fat - Fat.hat), (Triceps - Triceps.hat))
pcor(cbind(Fat, Triceps, Thigh, Midarm))


