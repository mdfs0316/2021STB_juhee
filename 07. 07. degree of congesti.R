library(dplyr)
library(ggplot2)
View(서울교통공사_지하철혼잡도정보_20221231)
library(readr)
congestion <- read_csv("서울교통공사_지하철혼잡도정보_20221231.csv")
summary(congestion)
is.na(congestion)
sum(is.na(congestion))
colSums(is.na(congestion))
congestion1 <- congestion[!is.na(congestion$s0530),]
colSums(is.na(congestion1))

#23시 30분 출발기차의 결측치를 제거
congestion1 <- congestion1[!is.na(congestion1$s0000),]
colSums(is.na(congestion1))

#남은 결측치를 0으로 대체
congestion1[is.na(congestion1)] <- 0
colSums(is.na(congestion1))

#이상치 확인
ggplot(congestion1, aes(y=s0530))+ 
  geom_boxplot()

summary(congestion1$s0530)

#1.지하철역의 하루 평균 혼잡도
#파생변수
congestion1$day_mean <- rowMeans(congestion1[,c('s0530','s0600','s0630','s0700','s0730','s0800','s0830','s0900','s0930','s1000','s1030','s1100','s1130','s1200','s1230','s1300','s1330','s1400','s1430','s1500','s1530','s1600','s1630','s1700','s1730','s1800','s1830','s1900','s1930','s2000','s2030','s2100','s2130','s2200','s2230','s2300','s2330')])

#수도권지하철의 하루평균 혼잡도
summary(congestion1$day_mean)

#1. 파생변수 정수형 day 변수
congestion1$day <- substr(congestion$s)
subway$>$

congestion1$day_mean <- rowMeans(congestion1[,c('s0530','s0600','s0630','s0700','s0730','s0800','s0830','s0900','s0930','s1000','s1030','s1100','s1130','s1200','s1230','s1300','s1330','s1400','s1430','s1500','s1530','s1600','s1630','s1700','s1730','s1800','s1830','s1900','s1930','s2000','s2030','s2100','s2130','s2200','s2230','s2300','s2330')])

#파생변수2. line변수
table(congestion1$line)
congestion1$line <- ifelse(congestion1)