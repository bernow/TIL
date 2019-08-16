#실습1
exam1 <- function(num1,num2){
  if(num1>=num2){
    result <- num1-num2
  }else if(num2>=num1){
    result <- num2-num1
  }else
    result <- 0
  return(result)
}
exam1(10,7);exam1(10,58);exam1(10,10)

#실습2
exam2 <- function(n1,oper,n2){
  if(oper == "+"){
    result1 <- n1+n2
  } else if(oper == "-"){
    result1 <- n1-n2
  } else if(oper == "*"){
    result1 <- n1*n2
  } else if(oper == "%/%"){
    if(n1==0){
     result1 <- "오류 1"
    }else if(n2==0){
      result1 <- "오류 2"
    } else{
      result1 <- n1%/%n2
    }
  } else if(oper=="%%"){
    if(n1==0){
      result1 <- "오류 1"
    }else if(n2==0){
      result1 <- "오류 2"
    } else{
      result1 <- n1%%n2
    } else{
      result1 <- "규격의 연산자만 전달하세요"
    }
  return(result1)
  }
}
exam2(10,"+",5)
exam2(10,"-",5)
exam2(10,"*",5)
exam2(10,"%/%",5)
exam2(10,"%%",5)
exam2(0,"%/%",5)
exam2(2,"%/%",0)
exam2(0,"%%",5)
exam2(4,"%%",0)
exam2(0,"a",5)

#실습3
exam3 <- function(p1="abc",p2) for(i in 1:p2) print(p1)
exam3("aaa",5)
exam3(,5)

#실습4
po <- c(0:100)
exam4 <- function(po){
  if(is.na(po)){
     print(paste(po,"는 처리불가"))
  } else if(po>=85){
     print(paste(po,"점은 상등급입니다."))
  } else if(po>=70){
     print(paste(po,"점은 중등급입니다."))
  } else{
     print(paste(po,"점은 하등급입니다."))
  } 
}
exam4(NA)
exam4(51)


#실습5
countEvenOdd <- function(vec){
  if(is.vector(vec) & is.numeric(vec)){
    reslist <- list(even=0,odd=0)
    for(i in 1:length(vec)){
      if(vec[i]%/%2==1){
        reslist$odd <- reslist$odd + 1
      }else{
        reslist$even <- reslist$even + 1
      }
    }
    return(reslist)
  }else{
    return(NULL)
  }
}
countEvenOdd(1:5)
countEvenOdd('d')

#실습6
vmSum <- function(x){
  if(!is.vector(x))
    stop("벡터만 전달하숑!")
  if(!is.numeric(x)){
    warning("숫자 벡터를 전달하숑!")
    return(0)
  }else{
    gg <- sum(x)
  }
    return(gg)
}
vmSum(c(letters))  

#실습7
createVector <- function(vec){
  if(is.list(vec)){
    list1 <- list(num=NULL,chr=NULL,boo=NULL)
    for(i in 1:length(vec)){
      if(is.numeric(vec[[i]])){
        list1$num <- append(list1$num,vec[[i]])
      }else if(is.character(vec[[i]])){
        list1$chr <- append(list1$chr,vec[[i]])
      }else if(is.logical(vec[[i]])){
        list1$boo <- append(list1$boo,vec[[i]])
      }
    }
    return(list1)
  }else{
    return(NULL)
  }
}


#실습8
test1 <- scan("iotest1.txt")
cat("오름차순 : ",sort(test1),"\n",
    "내림차순 : ",sort(test1,decreasing = T),"\n",
    "합 : ",sum(test1),"\n",
    "평균 : ",mean(test1),"\n")

#실습9
test2 <- scan("iotest2.txt",what="")
test2table <- table(test2)
word <- names(test2table[which.max(test2table)])
cat("가장 많이 등장한 단어는",word,"입니다.")