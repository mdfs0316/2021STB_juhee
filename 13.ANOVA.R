responce=c(2,3,4,4,5,6,6,7,8)
x=rep(c("model1","model2","model3"),c(3,3,3))
levels=factor(x)
ano.result=aov(responce~levels)
summary(ano.result)

