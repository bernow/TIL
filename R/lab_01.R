# 문제1
v1 = c(1:10)
v2 = v1 * 2
max_v = max(v2)
min_v = min(v2)
avg_v = mean(v2)
sum_v = sum(v2)
v3 = v2[c(-5)]
v1;v2;v3;max_v;min_v;avg_v;sum_v

# 문제3
seq(1,10,2)
rep(1:1, 5)
rep(1:3, 3)
rep(1:4, each=2)

# 문제4
v3 <- seq(1,10, 3)
v3
names(v3) <- LETTERS[1:4]
v3

# 문제5
count <- c(sample(1:100, 7))
week.korname <-c("일요일", "월요일", "화요일", "수요일", "목요일", "금요일", "토요일")
paste(week.korname, count, sep = " : ")
week.korname[which.max(count)]
week.korname[which.min(count)]
week.korname[which(count > 50)]
