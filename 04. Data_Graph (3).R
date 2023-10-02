library(readxl)
X2023_STB_survey <- read_excel("2023_STB_survey.xlsx")
View(X2023_STB_survey)

#성별 도수분포표
table(X2023_STB_survey $Gender)

남자 여자 
24   24 

#성별 상대도수분포표
ECN <- table(X2023_STB_survey $Gender)
prop.table(ECN)

남자 여자 
0.5  0.5 

#수강생 학년, 성별 교차표
table(X2023_STB_survey $Gender, X2023_STB_survey $Grade)

2  3  4
남자  8  6 10
여자  7  6 11

#컬러 패키지 설치 및 수강생 국적 막대그래프
install.packages("RColorBrewer")
library(RColorBrewer)
display.brewer.all()
pal1 <- brewer.pal(3,'YlGn')
barplot(table(X2023_STB_survey $Nationality), col = pal1, main = "수강생의 국적")

#수강생 거주지역 분포 가로 막대그래프
library(RColorBrewer)
pal2 <- brewer.pal(6, 'Set2')
barplot(table(X2023_STB_survey $`residential area`), main = "수강생 거주 지역 분포", horiz=TRUE, col = pal2)

#성별, 학년 막대그래프
barplot(table(X2023_STB_survey $Gender, X2023_STB_survey $Grade), col = pal1, main = "성별, 학년 막대그래프", legend=TRUE)

#학년 비율 파이차트
pie(table(X2023_STB_survey $Grade), col = pal1, main = "수강자 학년 비율")

#학년별 나이 히스토그램
library(RColorBrewer)
pal3 <- brewer.pal(8, 'Greens')
hist(X2023_STB_survey $Age, main = "나이", col = pal3, freq = FALSE)

#학년별 나이 박스플롯
boxplot(Age ~ Grade, X2023_STB_survey, ylim=c(18,28), ylab="나이", xlab="학년", main="학년별 나이 분포", col=pal1)

#학년별 나이 기술통계분석
tapply(X2023_STB_survey$Age, X2023_STB_survey$Grade, summary)
$`2`
Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
19.00   20.00   21.00   21.07   22.00   23.00 

$`3`
Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
20.00   21.00   23.00   22.92   24.00   27.00 

$`4`
Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
20.00   22.00   23.00   23.33   25.00   27.00 

#학년별 나이 산점도
plot(X2023_STB_survey$Grade, X2023_STB_survey$Age, xlab="grade", ylab="age", main = "학년별 나이", pch = 16, col = "green", cex = 1.5, axes = FALSE, ylim = c(18,28))
axis(side = 1, at = 2:4, labels = c(2,3,4))
axis(side = 2, at = 18:28, labels = c(18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28))
box()
