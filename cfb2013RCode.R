Data <- read.csv('cfb2013lines.csv', header = TRUE)
Data <- as.data.frame(Data)
names(Data) <- c('Date', 'Visitor', 'VisitorScore', 'HomeTeam', 
                'HomeScore', 'PointSpread', 'WinMargin', 'PointMargin', 'PointSpreadDiff', 'VisitorWin')
head(Data)
tail(Data)

hist(Data$PointSpreadDiff, breaks = 25, xlab = "Point Spread Difference", ylab = "Frequency", col = "dark green", main = "Histogram of Point Spread Difference")
summary(Data$PointSpreadDiff)
mean(Data$PointSpreadDiff)
sd(Data$PointSpreadDiff)
error <- ((sd(Data$PointSpreadDiff)/sqrt(702))*1.96)
leftCI <- mean(Data$PointSpreadDiff)-error
rightCI <- mean(Data$PointSpreadDiff)+error
leftCI
rightCI

boxplot(Data$PointSpreadDiff, ylab = "Point Spread Difference", col = "dark green")

Data2 <- read.csv('cfb2013linesw-oOutliers.csv', header = TRUE)
Data2 <- as.data.frame(Data2)
names(Data2) <- c('Date', 'Visitor', 'VisitorScore', 'HomeTeam', 
                  'HomeScore', 'PointSpread', 'WinMargin', 'PointMargin', 'PointSpreadDiff', 'VisitorWin')
head(Data2)

hist(Data2$PointSpreadDiff, breaks = 25, xlab = "Point Spread Difference", ylab = "Frequency", col = "red", main = "Histogram of Point Spread Difference w/o Outliers")
summary(Data2$PointSpreadDiff)
mean(Data2$PointSpreadDiff)
sd(Data2$PointSpreadDiff)

boxplot(Data2$PointSpreadDiff, ylab = "Point Spread Difference w/o Outliers", col = "red")

error2 <- ((sd(Data2$PointSpreadDiff)/sqrt(694))*1.96)
leftCI2 <- mean(Data2$PointSpreadDiff)-error
rightCI2 <- mean(Data2$PointSpreadDiff)+error
leftCI2
rightCI2

plot(Data$PointSpread, Data$PointMargin, pch = 17, xlab = "Bet Line", ylab = "Point Margin", col = "blue")
fit <- lm(Data$PointSpread ~ Data$PointMargin)
fit
abline(fit, col = "red")
summary(fit)

plot(Data$BetLine, Data$WinMargin)

plot(Data$PointMargin, Data$BetLine)
