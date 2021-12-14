m2021training <- read.csv("M2021train.csv")

m2021training$Grade <- as.factor(m2021training$Grade)
m2021training$Major <- as.factor(m2021training$Major)
m2021training$Questions <- as.factor(m2021training$Questions)
m2021training$Seniority <- as.factor(m2021training$Seniority)
m2021training$Texting <- as.factor(m2021training$Texting)

summary(m2021training[m2021training$Grade == 'Pass',])
summary(m2021training[m2021training$Grade == 'Fail',])

boxplot(m2021training$Score ~ m2021training$Grade, main = "Distribution of Scores for Pass vs Fail", xlab = "Grade", ylab = "Score", col = c("light coral", "light green"))

boxplot(m2021training$Attendance ~ m2021training$Grade, main = "Distribution of Attendance for Pass Vs Fail", xlab = "Grade", ylab = "Attendance", col = c("light coral", "light green"))

mosaicplot(factor(m2021training$Seniority,levels = c("Freshman", "Sophomore", "Junior", "Senior")) ~ m2021training$Grade, main = "Distribution of Pass and Fail for Students of each Seniority", xlab = "Seniority", ylab = "Grade", col = c("light coral", "light green"))

mosaicplot(m2021training$Questions ~ m2021training$Grade, main = "Distribution of Pass and Fail for each Frequency of Asking Questions", xlab = "Frequency of Asking Questions", ylab = "Grade", col = c("light coral", "light green"))

mosaicplot(m2021training$Texting ~ m2021training$Grade, main = "Distribution of Pass and Fail for each Frequency of Texting", xlab = "Frequency of Texting", ylab = "Grade", col = c("light coral", "light green"))

mosaicplot(m2021training$Major ~ m2021training$Grade, main = "Distribution of Pass and Fail for Students in Each Major", xlab = "Major", ylab = "Grade", col = c("light coral", "light green"))

par(mfrow = c(2, 2))

m2021commtraining <- subset(m2021training, m2021training$Major == "Communication")
boxplot(m2021commtraining$Score ~ m2021commtraining$Grade, main = "Distribution of Scores for Pass vs Fail for Comm Majors", xlab = "Grade", ylab = "Score", col = c("light coral", "light green"))

m2021cstraining <- subset(m2021training, m2021training$Major == "Cs")
boxplot(m2021cstraining$Score ~ m2021cstraining$Grade, main = "Distribution of Scores for Pass vs Fail for CS Majors", xlab = "Grade", ylab = "Score", col = c("light coral", "light green"))

m2021poltraining <- subset(m2021training, m2021training$Major == "Polsci")
boxplot(m2021poltraining$Score ~ m2021poltraining$Grade, main = "Distribution of Scores for Pass vs Fail for PolSci Majors", xlab = "Grade", ylab = "Score", col = c("light coral", "light green"))

m2021stattraining <- subset(m2021training, m2021training$Major == "Stat")
boxplot(m2021stattraining$Score ~ m2021stattraining$Grade, main = "Distribution of Scores for Pass vs Fail for Stat Majors", xlab = "Grade", ylab = "Score", col = c("light coral", "light green"))

boxplot(m2021commtraining$Attendance ~ m2021commtraining$Grade, main = "Distribution of Attendance for Pass Vs Fail of Comm Students", xlab = "Grade", ylab = "Attendance", col = c("light coral", "light green"))

boxplot(m2021cstraining$Attendance ~ m2021cstraining$Grade, main = "Distribution of Attendance for Pass Vs Fail of CS Students", xlab = "Grade", ylab = "Attendance", col = c("light coral", "light green"))

boxplot(m2021poltraining$Attendance ~ m2021poltraining$Grade, main = "Distribution of Attendance for Pass Vs Fail of PolSci Students", xlab = "Grade", ylab = "Attendance", col = c("light coral", "light green"))

boxplot(m2021stattraining$Attendance ~ m2021stattraining$Grade, main = "Distribution of Attendance for Pass Vs Fail of Stat Students", xlab = "Grade", ylab = "Attendance", col = c("light coral", "light green"))

mosaicplot(factor(m2021commtraining$Seniority, levels = c("Freshman", "Sophomore", "Junior", "Senior")) ~ m2021commtraining$Grade, main = "Distribution of Pass and Fail for Comm Students of each Seniority", xlab = "Seniority", ylab = "Grade", col = c("light coral", "light green"))

mosaicplot(factor(m2021cstraining$Seniority, levels = c("Freshman", "Sophomore", "Junior", "Senior")) ~ m2021cstraining$Grade, main = "Distribution of Pass and Fail for CS Students of each Seniority", xlab = "Seniority", ylab = "Grade", col = c("light coral", "light green"))

mosaicplot(factor(m2021poltraining$Seniority, levels = c("Freshman", "Sophomore", "Junior", "Senior")) ~ m2021poltraining$Grade, main = "Distribution of Pass and Fail for PolSci Students of each Seniority", xlab = "Seniority", ylab = "Grade", col = c("light coral", "light green"))

mosaicplot(factor(m2021stattraining$Seniority, levels = c("Freshman", "Sophomore", "Junior", "Senior")) ~ m2021stattraining$Grade, main = "Distribution of Pass and Fail for Stat Students of each Seniority", xlab = "Seniority", ylab = "Grade", col = c("light coral", "light green"))

mosaicplot(m2021commtraining$Questions ~ m2021commtraining$Grade, main = "Distribution of Pass and Fail for each Frequency of Asking Questions for Comm Students", xlab = "Frequency of Asking Questions", ylab = "Grade", col = c("light coral", "light green"))

mosaicplot(m2021cstraining$Questions ~ m2021cstraining$Grade, main = "Distribution of Pass and Fail for each Frequency of Asking Questions for CS Students", xlab = "Frequency of Asking Questions", ylab = "Grade", col = c("light coral", "light green"))

mosaicplot(m2021poltraining$Questions ~ m2021poltraining$Grade, main = "Distribution of Pass and Fail for each Frequency of Asking Questions for PolSci Students", xlab = "Frequency of Asking Questions", ylab = "Grade", col = c("light coral", "light green"))

mosaicplot(m2021stattraining$Questions ~ m2021stattraining$Grade, main = "Distribution of Pass and Fail for each Frequency of Asking Questions for Stat Students", xlab = "Frequency of Asking Questions", ylab = "Grade", col = c("light coral", "light green"))

mosaicplot(m2021commtraining$Texting ~ m2021commtraining$Grade, main = "Distribution of Pass and Fail for each Frequency of Texting for Comm Students", xlab = "Frequency of Texting", ylab = "Grade", col = c("light coral", "light green"))

mosaicplot(m2021cstraining$Texting ~ m2021cstraining$Grade, main = "Distribution of Pass and Fail for each Frequency of Texting for CS Students", xlab = "Frequency of Texting", ylab = "Grade", col = c("light coral", "light green"))

mosaicplot(m2021poltraining$Texting ~ m2021poltraining$Grade, main = "Distribution of Pass and Fail for each Frequency of Texting for PolSci Students", xlab = "Frequency of Texting", ylab = "Grade", col = c("light coral", "light green"))

mosaicplot(m2021stattraining$Texting ~ m2021stattraining$Grade, main = "Distribution of Pass and Fail for each Frequency of Texting for Stat Students", xlab = "Frequency of Texting", ylab = "Grade", col = c("light coral", "light green"))

m2021alwaysQtraining <- subset(m2021training, m2021training$Questions == "Always")
boxplot(m2021alwaysQtraining$Score ~ m2021alwaysQtraining$Grade, main = "Distribution of Scores for Pass vs Fail for Always Asking Questions Students", xlab = "Grade", ylab = "Score", col = c("light coral", "light green"))

m2021rarelyQtraining <- subset(m2021training, m2021training$Questions == "Rarely")
boxplot(m2021rarelyQtraining$Score ~ m2021rarelyQtraining$Grade, main = "Distribution of Scores for Pass vs Fail for Rarely Asking Questions Students", xlab = "Grade", ylab = "Score", col = c("light coral", "light green"))

m2021alwaysTtraining <- subset(m2021training, m2021training$Texting == "Always")
boxplot(m2021alwaysTtraining$Score ~ m2021alwaysTtraining$Grade, main = "Distribution of Scores for Pass vs Fail for Always Texting Students", xlab = "Grade", ylab = "Score", col = c("light coral", "light green"))

m2021rarelyTtraining <- subset(m2021training, m2021training$Texting == "Rarely")
boxplot(m2021rarelyTtraining$Score ~ m2021rarelyTtraining$Grade, main = "Distribution of Scores for Pass vs Fail for Rarely Texting Students", xlab = "Grade", ylab = "Score", col = c("light coral", "light green"))

m2021freshtraining <- subset(m2021training, m2021training$Seniority == "Freshman")
boxplot(m2021freshtraining$Score ~ m2021freshtraining$Grade, main = "Distribution of Scores for Pass vs Fail for Freshmen", xlab = "Grade", ylab = "Score", col = c("light coral", "light green"))

m2021sophtraining <- subset(m2021training, m2021training$Seniority == "Sophomore")
boxplot(m2021sophtraining$Score ~ m2021sophtraining$Grade, main = "Distribution of Scores for Pass vs Fail for Sophomores", xlab = "Grade", ylab = "Score", col = c("light coral", "light green"))

m2021juniortraining <- subset(m2021training, m2021training$Seniority == "Junior")
boxplot(m2021juniortraining$Score ~ m2021juniortraining$Grade, main = "Distribution of Scores for Pass vs Fail for Juniors", xlab = "Grade", ylab = "Score", col = c("light coral", "light green"))

m2021seniortraining <- subset(m2021training, m2021training$Seniority == "Senior")
boxplot(m2021seniortraining$Score ~ m2021seniortraining$Grade, main = "Distribution of Scores for Pass vs Fail for Seniors", xlab = "Grade", ylab = "Score", col = c("light coral", "light green"))

m2021csseniortraining <- subset(m2021cstraining, m2021cstraining$Seniority == "Senior")
boxplot(m2021csseniortraining$Score ~ m2021csseniortraining$Grade, main = "Distribution of Score for Grades of CS Seniors", xlab = "Grade", ylab = "Score", col = c("light coral", "light green"))

m2021csjuniortraining <- subset(m2021cstraining, m2021cstraining$Seniority == "Junior")
boxplot(m2021csjuniortraining$Score ~ m2021csjuniortraining$Grade, main = "Distribution of Score for Grades of CS Juniors", xlab = "Grade", ylab = "Score", col = c("light coral", "light green"))

m2021cssophtraining <- subset(m2021cstraining, m2021cstraining$Seniority == "Sophomore")
boxplot(m2021cssophtraining$Score ~ m2021cssophtraining$Grade, main = "Distribution of Score for Grades of CS Sophomores", xlab = "Grade", ylab = "Score", col = c("light coral", "light green"))

m2021csfreshtraining <- subset(m2021cstraining, m2021cstraining$Seniority == "Freshman")
boxplot(m2021csfreshtraining$Score ~ m2021csfreshtraining$Grade, main = "Distribution of Score for Grades of CS Freshman", xlab = "Grade", ylab = "Score", col = c("light coral", "light green"))

m2021polalwaysQtraining <- subset(m2021poltraining, m2021poltraining$Questions == "Always")
boxplot(m2021polalwaysQtraining$Score ~ m2021polalwaysQtraining$Grade, main = "Score Distribution for Grades of PolSci Students that Always Ask Questions", xlab = "Grade", ylab = "Score", col = c("light coral", "light green"))

m2021polrarelyQtraining <- subset(m2021poltraining, m2021poltraining$Questions == "Rarely")
boxplot(m2021polrarelyQtraining$Score ~ m2021polrarelyQtraining$Grade, main = "Score Distribution for Grades of PolSci Students that Rarely Ask Questions", xlab = "Grade", ylab = "Score", col = c("light coral", "light green"))


summary(m2021training[m2021training$Major == "Communication" & m2021training$Score >= 37,])
summary(m2021training[m2021training$Major == "Communication" & m2021training$Score < 37,])

summary(m2021training[m2021training$Major == "Polsci" & m2021training$Questions == "Always",])
summary(m2021training[m2021training$Major == "Polsci" & m2021training$Questions == "Rarely" & m2021training$Score < 50,])
summary(m2021training[m2021training$Major == "Polsci" & m2021training$Questions == "Rarely" & m2021training$Score >= 50,])


summary(m2021training[m2021training$Major == "Cs" & m2021training$Seniority == "Senior" & m2021training$Score < 70,])
summary(m2021training[m2021training$Major == "Cs" & m2021training$Seniority == "Senior" & m2021training$Score >= 70,])

summary(m2021training[m2021training$Major == "Cs" & m2021training$Seniority == "Junior" & m2021training$Score < 60,])
summary(m2021training[m2021training$Major == "Cs" & m2021training$Seniority == "Junior" & m2021training$Score >= 60,])

summary(m2021training[m2021training$Major == "Cs" & m2021training$Seniority == "Sophomore" & m2021training$Score < 50,])
summary(m2021training[m2021training$Major == "Cs" & m2021training$Seniority == "Sophomore" & m2021training$Score >= 50,])

summary(m2021training[m2021training$Major == "Cs" & m2021training$Seniority == "Freshman" & m2021training$Score < 50,])
summary(m2021training[m2021training$Major == "Cs" & m2021training$Seniority == "Freshman" & m2021training$Score >= 50,])

summary(m2021training[m2021training$Major == "Stat" & m2021training$Texting == "Rarely",])
summary(m2021training[m2021training$Major == "Stat" & m2021training$Texting == "Always" & m2021training$Score >= 35,])
summary(m2021training[m2021training$Major == "Stat" & m2021training$Texting == "Always" & m2021training$Score < 35,])

train <- m2021training[sample(1:nrow(m2021training)), ]
training <- train[1:2366,]
testing1 <- train[2367:4732,]
testing2 <- train[4733:7098,]
testing3 <- train[7099:nrow(train),]

myprediction <- training
decision <- rep("Fail", nrow(myprediction))
decision[myprediction$Major == "Communication" & myprediction$Score >= 37] <- "Pass"
decision[myprediction$Major == "Communication" & myprediction$Score < 37] <- "Fail"
decision[myprediction$Major == "Polsci" & myprediction$Questions == "Always"] <- "Pass"
decision[myprediction$Major == "Polsci" & myprediction$Questions == "Rarely" & myprediction$Score >= 50] <- "Pass"
decision[myprediction$Major == "Polsci" & myprediction$Questions == "Rarely" & myprediction$Score < 50] <- "Fail"
decision[myprediction$Major == "Cs" & myprediction$Seniority == "Senior" & myprediction$Score >= 70] <- "Pass"
decision[myprediction$Major == "Cs" & myprediction$Seniority == "Senior" & myprediction$Score < 70] <- "Fail"
decision[myprediction$Major == "Cs" & myprediction$Seniority == "Junior" & myprediction$Score >= 60] <- "Pass"
decision[myprediction$Major == "Cs" & myprediction$Seniority == "Junior" & myprediction$Score < 60] <- "Fail"
decision[myprediction$Major == "Cs" & myprediction$Seniority == "Sophomore" & myprediction$Score >= 50] <- "Pass"
decision[myprediction$Major == "Cs" & myprediction$Seniority == "Sophomore" & myprediction$Score < 50] <- "Fail"
decision[myprediction$Major == "Cs" & myprediction$Seniority == "Freshman" & myprediction$Score >= 50] <- "Pass"
decision[myprediction$Major == "Cs" & myprediction$Seniority == "Freshman" & myprediction$Score < 50] <- "Fail"
decision[myprediction$Major == "Stat" & myprediction$Texting == "Rarely"] <- "Pass"
decision[myprediction$Major == "Stat" & myprediction$Texting == "Always" & myprediction$Score >= 35] <- "Pass"
decision[myprediction$Major == "Stat" & myprediction$Texting == "Always" & myprediction$Score < 35] <- "Fail"
myprediction$Grade <- decision
error <- mean(training$Grade != myprediction$Grade)
error

myprediction2 <- testing1
decision2 <- rep("Fail", nrow(myprediction2))
decision2[myprediction2$Major == "Communication" & myprediction2$Score >= 37] <- "Pass"
decision2[myprediction2$Major == "Communication" & myprediction2$Score < 37] <- "Fail"
decision2[myprediction2$Major == "Polsci" & myprediction2$Questions == "Always"] <- "Pass"
decision2[myprediction2$Major == "Polsci" & myprediction2$Questions == "Rarely" & myprediction2$Score >= 50] <- "Pass"
decision2[myprediction2$Major == "Polsci" & myprediction2$Questions == "Rarely" & myprediction2$Score < 50] <- "Fail"
decision2[myprediction2$Major == "Cs" & myprediction2$Seniority == "Senior" & myprediction2$Score >= 70] <- "Pass"
decision2[myprediction2$Major == "Cs" & myprediction2$Seniority == "Senior" & myprediction2$Score < 70] <- "Fail"
decision2[myprediction2$Major == "Cs" & myprediction2$Seniority == "Junior" & myprediction2$Score >= 60] <- "Pass"
decision2[myprediction2$Major == "Cs" & myprediction2$Seniority == "Junior" & myprediction2$Score < 60] <- "Fail"
decision2[myprediction2$Major == "Cs" & myprediction2$Seniority == "Sophomore" & myprediction2$Score >= 50] <- "Pass"
decision2[myprediction2$Major == "Cs" & myprediction2$Seniority == "Sophomore" & myprediction2$Score < 50] <- "Fail"
decision2[myprediction2$Major == "Cs" & myprediction2$Seniority == "Freshman" & myprediction2$Score >= 50] <- "Pass"
decision2[myprediction2$Major == "Cs" & myprediction2$Seniority == "Freshman" & myprediction2$Score < 50] <- "Fail"
decision2[myprediction2$Major == "Stat" & myprediction2$Texting == "Rarely"] <- "Pass"
decision2[myprediction2$Major == "Stat" & myprediction2$Texting == "Always" & myprediction2$Score >= 35] <- "Pass"
decision2[myprediction2$Major == "Stat" & myprediction2$Texting == "Always" & myprediction2$Score < 35] <- "Fail"
myprediction2$Grade <- decision2
error <- mean(testing1$Grade != myprediction2$Grade)
error

myprediction3 <- testing2
decision3 <- rep("Fail", nrow(myprediction3))
decision3[myprediction3$Major == "Communication" & myprediction3$Score >= 37] <- "Pass"
decision3[myprediction3$Major == "Communication" & myprediction3$Score < 37] <- "Fail"
decision3[myprediction3$Major == "Polsci" & myprediction3$Questions == "Always"] <- "Pass"
decision3[myprediction3$Major == "Polsci" & myprediction3$Questions == "Rarely" & myprediction3$Score >= 50] <- "Pass"
decision3[myprediction3$Major == "Polsci" & myprediction3$Questions == "Rarely" & myprediction3$Score < 50] <- "Fail"
decision3[myprediction3$Major == "Cs" & myprediction3$Seniority == "Senior" & myprediction3$Score >= 70] <- "Pass"
decision3[myprediction3$Major == "Cs" & myprediction3$Seniority == "Senior" & myprediction3$Score < 70] <- "Fail"
decision3[myprediction3$Major == "Cs" & myprediction3$Seniority == "Junior" & myprediction3$Score >= 60] <- "Pass"
decision3[myprediction3$Major == "Cs" & myprediction3$Seniority == "Junior" & myprediction3$Score < 60] <- "Fail"
decision3[myprediction3$Major == "Cs" & myprediction3$Seniority == "Sophomore" & myprediction3$Score >= 50] <- "Pass"
decision3[myprediction3$Major == "Cs" & myprediction3$Seniority == "Sophomore" & myprediction3$Score < 50] <- "Fail"
decision3[myprediction3$Major == "Cs" & myprediction3$Seniority == "Freshman" & myprediction3$Score >= 50] <- "Pass"
decision3[myprediction3$Major == "Cs" & myprediction3$Seniority == "Freshman" & myprediction3$Score < 50] <- "Fail"
decision3[myprediction3$Major == "Stat" & myprediction3$Texting == "Rarely"] <- "Pass"
decision3[myprediction3$Major == "Stat" & myprediction3$Texting == "Always" & myprediction3$Score >= 35] <- "Pass"
decision3[myprediction3$Major == "Stat" & myprediction3$Texting == "Always" & myprediction3$Score < 35] <- "Fail"
myprediction3$Grade <- decision3
error <- mean(testing2$Grade != myprediction3$Grade)
error

myprediction4 <- testing3
decision4 <- rep("Fail", nrow(myprediction4))
decision4[myprediction4$Major == "Communication" & myprediction4$Score >= 37] <- "Pass"
decision4[myprediction4$Major == "Communication" & myprediction4$Score < 37] <- "Fail"
decision4[myprediction4$Major == "Polsci" & myprediction4$Questions == "Always"] <- "Pass"
decision4[myprediction4$Major == "Polsci" & myprediction4$Questions == "Rarely" & myprediction4$Score >= 50] <- "Pass"
decision4[myprediction4$Major == "Polsci" & myprediction4$Questions == "Rarely" & myprediction4$Score < 50] <- "Fail"
decision4[myprediction4$Major == "Cs" & myprediction4$Seniority == "Senior" & myprediction4$Score >= 70] <- "Pass"
decision4[myprediction4$Major == "Cs" & myprediction4$Seniority == "Senior" & myprediction4$Score < 70] <- "Fail"
decision4[myprediction4$Major == "Cs" & myprediction4$Seniority == "Junior" & myprediction4$Score >= 60] <- "Pass"
decision4[myprediction4$Major == "Cs" & myprediction4$Seniority == "Junior" & myprediction4$Score < 60] <- "Fail"
decision4[myprediction4$Major == "Cs" & myprediction4$Seniority == "Sophomore" & myprediction4$Score >= 50] <- "Pass"
decision4[myprediction4$Major == "Cs" & myprediction4$Seniority == "Sophomore" & myprediction4$Score < 50] <- "Fail"
decision4[myprediction4$Major == "Cs" & myprediction4$Seniority == "Freshman" & myprediction4$Score >= 50] <- "Pass"
decision4[myprediction4$Major == "Cs" & myprediction4$Seniority == "Freshman" & myprediction4$Score < 50] <- "Fail"
decision4[myprediction4$Major == "Stat" & myprediction4$Texting == "Rarely"] <- "Pass"
decision4[myprediction4$Major == "Stat" & myprediction4$Texting == "Always" & myprediction4$Score >= 35] <- "Pass"
decision4[myprediction4$Major == "Stat" & myprediction4$Texting == "Always" & myprediction4$Score < 35] <- "Fail"
myprediction4$Grade <- decision4
error <- mean(testing3$Grade != myprediction4$Grade)
error

m2021teststudents <- read.csv("M2021test-students.csv")
mysubmission <- read.csv("M2021test-submission-file.csv")
mypredictiontest <- m2021teststudents
decisiontest <- rep("Fail",nrow(mypredictiontest))
decisiontest[mypredictiontest$Major == "Communication" & mypredictiontest$Score >= 37] <- "Pass"
decisiontest[mypredictiontest$Major == "Communication" & mypredictiontest$Score < 37] <- "Fail"
decisiontest[mypredictiontest$Major == "Polsci" & mypredictiontest$Questions == "Always"] <- "Pass"
decisiontest[mypredictiontest$Major == "Polsci" & mypredictiontest$Questions == "Rarely" & mypredictiontest$Score >= 50] <- "Pass"
decisiontest[mypredictiontest$Major == "Polsci" & mypredictiontest$Questions == "Rarely" & mypredictiontest$Score < 50] <- "Fail"
decisiontest[mypredictiontest$Major == "Cs" & mypredictiontest$Seniority == "Senior" & mypredictiontest$Score >= 70] <- "Pass"
decisiontest[mypredictiontest$Major == "Cs" & mypredictiontest$Seniority == "Senior" & mypredictiontest$Score < 70] <- "Fail"
decisiontest[mypredictiontest$Major == "Cs" & mypredictiontest$Seniority == "Junior" & mypredictiontest$Score >= 60] <- "Pass"
decisiontest[mypredictiontest$Major == "Cs" & mypredictiontest$Seniority == "Junior" & mypredictiontest$Score < 60] <- "Fail"
decisiontest[mypredictiontest$Major == "Cs" & mypredictiontest$Seniority == "Sophomore" & mypredictiontest$Score >= 50] <- "Pass"
decisiontest[mypredictiontest$Major == "Cs" & mypredictiontest$Seniority == "Sophomore" & mypredictiontest$Score < 50] <- "Fail"
decisiontest[mypredictiontest$Major == "Cs" & mypredictiontest$Seniority == "Freshman" & mypredictiontest$Score >= 50] <- "Pass"
decisiontest[mypredictiontest$Major == "Cs" & mypredictiontest$Seniority == "Freshman" & mypredictiontest$Score < 50] <- "Fail"
decisiontest[mypredictiontest$Major == "Stat" & mypredictiontest$Texting == "Rarely"] <- "Pass"
decisiontest[mypredictiontest$Major == "Stat" & mypredictiontest$Texting == "Always" & mypredictiontest$Score >= 35] <- "Pass"
decisiontest[mypredictiontest$Major == "Stat" & mypredictiontest$Texting == "Always" & mypredictiontest$Score < 35] <- "Fail"
mypredictiontest$Grade <- decisiontest
mypredictiontest$Grade = mysubmission$Grade
mysubmission$Grade <- decisiontest
write.csv(mysubmission, file = "mysubmission.csv", row.names=FALSE)