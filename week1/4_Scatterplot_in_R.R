set.seed <- 2016

Test_1_scores <- round(rnorm(50, 78, 10))
Test_2_scores <- round(rnorm(50, 70, 14))

# scatterplot
plot(Test_2_scores ~ Test_1_scores)

plot(Test_2_scores ~ Test_1_scores,
     main="Test scores for two exams (50 students)",
     xlab="Test 1 scores", ylab="Test 2 scores")

plot(Test_2_scores ~ Test_1_scores,
     main="Test scores for two exams (50 students)",
     xlab="Test 1 scores", ylab="Test 2 scores", col="blue")
