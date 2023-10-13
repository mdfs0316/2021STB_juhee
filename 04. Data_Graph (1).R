#파이차트
pie(table(KOTRA2023 $진출대륙명))
pie(table(KOTRA2023 $투자형태))

#파이차트 색깔넣기
colors <- c("red","orange","yellow","green","blue")
pie(table(KOTRA2023 $투자형태), col=colors, main="해외진출기업의 투자형태")
#무지개
pie(table(KOTRA2023 $투자형태), col=rainbow(12),main="해외진출기업의 투자형태")
#적색과 황색에 치우친 색
pie(table(KOTRA2023 $투자형태), col=heat.colors(12),main="해외진출기업의 투자형태")
#지구 지형 색
pie(table(KOTRA2023 $투자형태), col=terrain.colors(12),main="해외진출기업의 투자형태")
#앞에서 조금 더 청색에 가까운 색
pie(table(KOTRA2023 $투자형태), col=topo.colors(12),main="해외진출기업의 투자형태")

#RColorBrewer 패키지
install.packages("RColorBrewer")
library(RColorBrewer)
display.brewer.all()

#RColorBrewer 활용
pal1 <- brewer.pal(5,'Set3')
pie(table(KOTRA2023 $투자형태),col = pal1,main="해외진출기업의 투자형태")

#막대그래프
bp <- barplot(table(KOTRA2023 $진출대륙명),col=pal1, xlab="진출대륙명", ylab="진출기업수",ylim=c(0,10000))
entry <-c(333,828,9154,104,716,444,374)
text(x=bp, y=entry, labels=entry, pos=3)

#가로 막대그래프
barplot(table(KOTRA2023$진출대륙명),col=pal1, xlab="진출대륙명",ylab = "진출기업수",xlim = c(0,10000),horiz = TRUE)
