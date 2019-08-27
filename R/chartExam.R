library(ggplot2)
library(stringr)

product <- read.table("product_click.log")
class(product)
table(product$V2)
#문제1
png(filename="clicklog1.png", height=400, width=1000, bg="white")
plot(product$V2, main="세로바 그래프 실습", col = terrain.colors(15), 
     xlab="상품ID", ylab="클릭 수")
#라벨을 세로로 뽑는방법
#plot(product$V2, main="세로바 그래프 실습", col = terrain.colors(15), las = 2,
#xlab="상품ID", ylab="클릭 수")
dev.off()

#문제2
time <- str_sub(product$V1,start=9,end=10)
lbls <- as.numeric(sort(unique(time)))
lbls
png(filename="clicklog2.png", height=400, width=700, bg="white")
pie(table(time), main = "파이그래프 실습", col = rainbow(17), 
    labels = paste(lbls,"~",lbls+1))
dev.off()
