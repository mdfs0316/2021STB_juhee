library(readxl)
> X2023_STB_survey <- read_excel("2023_STB_survey.xlsx")
> View(X2023_STB_survey)
> table(X2023_STB_survey $Gender)

남자 여자 
24   24 
> ECN <- table(X2023_STB_survey $Gender)
> prop.table(ECN)

남자 여자 
0.5  0.5 
> table(X2023_STB_survey $Gender, X2023_STB_survey $Grade)

2  3  4
남자  8  6 10
여자  7  6 11
> install.packages("RColorBrewer")
WARNING: Rtools is required to build R packages but is not currently installed. Please download and install the appropriate version of Rtools before proceeding:
  
  https://cran.rstudio.com/bin/windows/Rtools/
  ‘C:/Users/mdfs0/AppData/Local/R/win-library/4.3’의 위치에 패키지(들)을 설치합니다.
(왜냐하면 ‘lib’가 지정되지 않았기 때문입니다)
trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.3/RColorBrewer_1.1-3.zip'
Content type 'application/zip' length 55876 bytes (54 KB)
downloaded 54 KB

패키지 ‘RColorBrewer’를 성공적으로 압축해제하였고 MD5 sums 이 확인되었습니다

다운로드된 바이너리 패키지들은 다음의 위치에 있습니다
C:\Users\mdfs0\AppData\Local\Temp\RtmpYFuDse\downloaded_packages
> library(RColorBrewer)
> display.brewer.all()
> pal1 <- brewer.pal(3,'YlGn')
> barplot(table(X2023_STB_survey $Nationality), col = pal1, main = "수강생의 국적")
> pal2 <- brewer.pal(6, 'set2')
Error in brewer.pal(6, "set2") : 
  set2 is not a valid palette name for brewer.pal
> library(RColorBrewer)
> pal2 <- brewer.pal(6, 'Set2')
> barplot(table(X2023_STB_survey $`residential area`), main = "수강생 거주 지역 분포", horiz=TRUE, col = pal2)
> 