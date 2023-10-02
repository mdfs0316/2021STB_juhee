library(readxl)
X2023_STB_survey <- read_excel("2023_STB_survey.xlsx")
View(X2023_STB_survey)
table(X2023_STB_survey $Gender)

남자 여자 
24   24 

ECN <- table(X2023_STB_survey $Gender)
prop.table(ECN)

남자 여자 
0.5  0.5 

table(X2023_STB_survey $Gender, X2023_STB_survey $Grade)

2  3  4
남자  8  6 10
여자  7  6 11

install.packages("RColorBrewer")
library(RColorBrewer)
display.brewer.all()
pal1 <- brewer.pal(3,'YlGn')
barplot(table(X2023_STB_survey $Nationality), col = pal1, main = "수강생의 국적")

library(RColorBrewer)
pal2 <- brewer.pal(6, 'Set2')
barplot(table(X2023_STB_survey $`residential area`), main = "수강생 거주 지역 분포", horiz=TRUE, col = pal2)

barplot(table(X2023_STB_survey $Gender, X2023_STB_survey $Grade), col = pal1, main = "성별, 학년 막대그래프", legend=TRUE)

pie(table(X2023_STB_survey $Grade), col = pal1, main = "수강자 학년 비율")

library(RColorBrewer)
pal3 <- brewer.pal(8, 'Greens')
hist(X2023_STB_survey $Age, main = "나이", col = pal3, freq = FALSE)

plot(x=X2023_STB_survey$Grade, y=X2023_STB_survey$Age, xlab="grade", ylab="age", main = "학년별 나이", pch = 16, col = "green", cex = 1.5)+

boxplot(Age ~ Grade, X2023_STB_survey, ylim=c(18,28), ylab="나이", xlab="학년", main="학년별 나이 분포", col=pal1)