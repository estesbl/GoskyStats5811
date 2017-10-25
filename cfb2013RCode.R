Data <- read.csv('cfb2013lines.csv', header = TRUE)
Data <- as.data.frame(Data)
names(Data) <- c('Date', 'Visitor', 'VisitorScore', 'HomeTeam', 
                'HomeScore', 'BetLine', 'WinMargin', 'PointMargin', 'BetLineDiff', 'VisitorWin')
head(Data)
tail(Data)

hist(Data$BetLineDiff, breaks = 25, xlab = "Bet Difference", ylab = "Frequency", col = "dark green", main = "Histogram of Bet Line Difference")
summary(Data$BetLineDiff)
mean(Data$BetLineDiff)
sd(Data$BetLineDiff)
error <- ((sd(Data$BetLineDiff)/sqrt(702))*1.96)
leftCI <- mean(Data$BetLineDiff)-error
rightCI <- mean(Data$BetLineDiff)+error
leftCI
rightCI

boxplot(Data$BetLineDiff)

hist(Data2$BetLineDiff, breaks = 25, xlab = "Bet Difference", ylab = "Frequency", col = "red", main = "Histogram of Bet Line Difference")
summary(Data2$BetLineDiff)
mean(Data2$BetLineDiff)
sd(Data2$BetLineDiff)
error2 <- ((sd(Data2$BetLineDiff)/sqrt(694))*1.96)
leftCI2 <- mean(Data2$BetLineDiff)-error
rightCI2 <- mean(Data2$BetLineDiff)+error
leftCI2
rightCI2

plot(Data$BetLine, Data$PointMargin, pch = 17, xlab = "Bet Line", ylab = "Point Margin", col = "blue")
fit <- lm(Data$BetLine ~ Data$PointMargin)
fit
abline(fit, col = "red")
summary(fit)

plot(Data$BetLine, Data$WinMargin)

plot(Data$PointMargin, Data$BetLine)

Data2 <- read.csv('cfb2013linesw-oOutliers.csv', header = TRUE)
Data2 <- as.data.frame(Data2)
names(Data2) <- c('Date', 'Visitor', 'VisitorScore', 'HomeTeam', 
                 'HomeScore', 'BetLine', 'WinMargin', 'PointMargin', 'BetLineDiff', 'VisitorWin')
head(Data2)
boxplot(Data2$BetLineDiff)
summary(Data2$BetLineDiff)
plot(Data2$BetLineDiff, Data2$PointMargin)
fit2 <- lm(Data2$BetLineDiff ~ Data2$PointMargin)
fit2
abline(fit2)
Data$WinningMargin
head(Data)
