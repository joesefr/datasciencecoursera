#The code below counts the mean of the infected people
MeanofAge <- mean(x$Age, na.rm = TRUE)
MeanofAge <- round(MeanofAge, digits = 2)
MOA = paste("The mean of age among the infected people is: ", MeanofAge)
MOA
