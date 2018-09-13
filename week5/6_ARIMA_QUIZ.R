data(BJsales)
plot.ts(BJsales)
plot(diff(BJsales))
plot(diff(diff(BJsales)))

Box.test(diff(diff(BJsales)), lag = log(length(diff(diff(number_of_births)))))

pacf(diff(diff(BJsales)), main='PACF of differenced data')
acf(diff(diff(BJsales)), main='ACF of differenced data')

d=2
for(p in 1:4){
  for(q in 1:2){
    if(p+d+q<=6){
      model<-arima(x=BJsales, order = c((p-1),d,(q-1)))
      pval<-Box.test(model$residuals, lag=log(length(model$residuals)))
      sse<-sum(model$residuals^2)
      cat(p-1,d,q-1, 'AIC=', model$aic, ' SSE=',sse,' p-VALUE=', pval$p.value,'\n')
    }
  }
}

d=2
for(p in 1:4){
  for(q in 1:2){
    if(p+d+q<=6){
      model<-arima(x=BJsales, order = c((p-1),d,(q-1)))
      pval<-Box.test(model$residuals, lag=log(length(model$residuals)))
      sse<-sum(model$residuals^2)
      cat(p-1,d,q-1, 'AIC=', model$aic, ' SSE=',sse,' p-VALUE=', pval$p.value,'\n')
    }
  }
}
d=2
for(p in 1:4){
  for(q in 1:2){
    if(p+d+q<=6){
      model<-arima(x=BJsales, order = c((p-1),d,(q-1)))
      pval<-Box.test(model$residuals, lag=log(length(model$residuals)))
      sse<-sum(model$residuals^2)
      cat(p-1,d,q-1, 'AIC=', model$aic, ' SSE=',sse,' p-VALUE=', pval$p.value,'\n')
    }
  }
}
