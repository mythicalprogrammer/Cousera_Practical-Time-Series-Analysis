set.seed(1030)
purely_random_process <- ts( rnorm(100))
print(purely_random_process)
(acf(purely_random_process, type = 'covariance'))
