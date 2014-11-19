install.packages("TSA")
library(TSA)
data(larain)
# larain是一个时间序列，表示洛杉矶的年降雨量，能看出些关系
plot(larain, ylab='Inches', xlab='Year', type='o')

# 但是如果你把当年降水量和去年降水量放在一起画图，就看不出关系了
plot(y=larain, x=zlag(larain), ylab='Inches', xlab='Previous Year Inches')

# 将一些点标注出来，到底是哪个月份，用字母J表示1月（但是6/7月也是同一个字母），目的是发现有没有什么pattern
data(oilfilters)
plot(oilfilters, type='o', ylab='Sales')
points(y=oilfilters, x=time(oilfilters), pch=as.vector(season(oilfilters)))
