Data <- read.csv('cfb2013lines.csv', header = TRUE)
Data <- as.data.frame(Data)
names(Data) <- c('Date', 'Visitor', 'VisitorScore', 'HomeTeam', 
                'HomeScore', 'BetLine', 'WinMargin', 'PointMargin', 'BetLineDiff', 'VisitorWin')
head(Data)
tail(Data)

hist(Data$BetLineDiff, breaks = 25)
summary(Data$BetLineDiff)
sd(Data$BetLineDiff)

samp1 <- sample(Data$BetLineDiff, 50)
hist(samp1)
samp1
summary(samp1)

set.seed(42)
sample_means50 <- rep(NA, 5000)

for(i in 1:5000){
  samp <- sample(Data$BetLineDiff, 50)
  sample_means50[i] <- mean(samp)
}
hist(sample_means50, breaks = 25)
summary(sample_means50)
plot(Data$BetLine, Data$PointMargin)
fit <- lm(Data$BetLine ~ Data$PointMargin)
fit
abline(fit)
sd(sample_means50)
