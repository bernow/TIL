#문제10
a <- array(1:24, dim=c(2,3,4))
a[2,,]
a[,1,]
a[,,3]
a+100
a[,,4]*100
a[1,c(2,3),]
a[2,,2] <- a[2,,2]+100
a[,,1] <- a[,,1]-2
a <- a*10
a
rm(a)

#문제11
x <- c(1:5)
y <- c(2,4,6,8,10)
df1 <- data.frame(x,y) 

#문제12
col1 <- c(1:5)
col2 <- c("a","b","c","d","e")
col3 <- c(6:10)
df2 <- data.frame(col1,col2,col3) 

#문제13
제품명 <- c("사과","딸기","수박")
df3$제품명 = as.character(df3$제품명)
가격 <- c(1800,1500,3000)
판매량 <- c(24,38,13)
df3 <- data.frame(제품명,가격,판매량)
df3
str(df3)

#문제14
mean(df3$가격)
mean(df3$판매량)

#문제15
name <- c("Potter", "Elsa", "Gates", "Wendy", "Ben")
df4$name = as.character(df4$name)
gender <- factor(c("M", "F", "M", "F", "M"))
math <- c(85, 76, 99, 88, 40)
df4 <- data.frame(name,gender,math)
str(df4)
df4$stat <-c(76, 73, 95, 82, 35)
df4$score <-df4$math + df4$stat
df4$grade <- ifelse(df4$score>=150, "A",
                    ifelse(df4$score>=100, "B",
                           ifelse(df4$score>=70, "C")))

#문제16
emp <- read.csv(file.choose(), stringsAsFactors = F)
str(emp)
 
#문제17
emp[c(3,4,5),,]

#문제18
emp[,"ename"]

#문제19
emp[,c("ename","sal"),]

#문제20
emp[emp$job=="SALESMAN",c("ename","sal","job")]

#문제21
emp[emp$sal>=1000 & emp$sal<=3000, c("ename","sal","deptno")]

#문제22
subset(emp, select=c("ename","job","sal"), subset=(job!="ANALYST"))

#문제23
subset(emp, select=c("ename","job"), subset=(job=="SALESMAN" | job=="ANALYST"))

#문제24
subset(emp, select=c("ename","comm"), subset=is.na(emp$comm))

#문제25
emp[order(emp$sal),]
