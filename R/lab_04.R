#문제26
L1 <- list(
  name = "scott",
  sal = 3000
)
L1$name;L1$sal
result1 <- L1$sal*2

#문제27 
L2 <- list("scott",c(1:3)*100)

#문제28
x<-list(c(3,5,7),c("A","B","C"))
x[[2]][1]<-"alpha"

#문제29
y<-list(alpha=0:4, beta=sqrt(1:5), gamma=log(1:5))
y[[1]]<-y$alpha+10;

#문제30
x<-list(math=list(95, 90), writing=list(90, 85), reading=list(85, 80))
mean(unlist(x))

#제어문 문제1
grade <- sample(1:6,1)
if(grade == 1 || grade == 2 || grade == 3){
  cat(grade,"학년은 저학년입니다.","\n")
}else{
  cat(grade,"학년은 고학년입니다.","\n")
}

#문제2 
choice <- sample(1:6,1)
if (choice == 1){
  cat("결과값 : ",300+50,"\n")
}else if (choice == 2){
  cat("결과값 : ",300-50,"\n")
}else if (choice == 3){
  cat("결과값 : ",300*50,"\n")
}else if (choice == 4){
  cat("결과값 : ",300/50,"\n")
}else {
  cat("결과값 : ",300%%50,"\n")
}

#문제3
time <- c(32150)
cat(paste0(time%/%3600,"시간"),paste0(time%%3600%/%60,"분"),paste0(time%%60,"초"),"\n")

#문제4
count <- sample(3:10,1)
deco <- sample(1:3,1)
if(deco==1){
  rep("*",count)
}else if(deco==2){
  rep("$",count)
}else{
  rep("#",count)
}

#문제5
score <- sample(0:100,1)
score01 <- paste(score%/%10,"",sep = "")
grade01 <- switch(EXPR=score01,
                 "10"=,"9"="A","8"="B","7"="c","6"="D","F")
cat(score,"은 ",grade01,"입니다","\n",sep="")

#문제6
paste0(LETTERS,letters)
