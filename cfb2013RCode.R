Data <- read.csv('cfb2013lines.csv', header = TRUE)
Data <- as.data.frame(Data)
names(Data) <- c('Date', 'Visitor', 'VisitorScore', 'HomeTeam', 
                'HomeScore', 'BetLine', 'WinMargin', 'PointMargin', 'BetLineDiff', 'VisitorWin')
head(Data)
tail(Data)

hist(Data$BetLineDiff, breaks = 25)
summary(Data$BetLineDiff)
sd(Data$BetLineDiff)

plot(Data$BetLine, Data$PointMargin)
fit <- lm(Data$BetLine ~ Data$PointMargin)
fit
abline(fit)

plot(Data$BetLine, Data$WinMargin)

plot(Data$PointMargin, Data$BetLine)

"Need to completely analyze the histogram for outliers tomorrow.  Make a great explanation of your hypothesis and what you are trying ot find.  Also, figure out the correlation coefficient deal with R and figure out how to explain the results that I get."

