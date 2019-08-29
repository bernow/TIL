library(rvest)
library(XML)
library(httr)
library(RSelenium)
library(KoNLP)
library(wordcloud2)

install.packages("stringr")
library(stringr)

useSejongDic()
useNIADic()


remDr <- remoteDriver(remoteServerAddr = "localhost"
                      , port=4445 , browserName="chrome")

remDr$open()

remDr$navigate("http://www.jobkorea.co.kr/")

jobtag <- NULL
page <- 1
count <- 0

#자바 검색
webElem <- remDr$findElement(using = "css selector", "[name = 'stext']")
webElem$sendKeysToElement(list("자바",key="enter"))

#태그리스트
repeat{
for(i in 1:30){
tagCss <- paste('#smGiList > div.list > ul > li:nth-child(',i,') > span.detailInfo > p.gibInfo > a', sep='')
name <- remDr$findElements(using='css selector',  tagCss)
Name <- sapply(name,function(x){x$getElementText()})


jobtag <- c(jobtag, unlist(Name))
}

#페이지 넘김
page <- page+1;
pagetag <- remDr$findElements(using='css selector',  paste0('#smGiList > div.tplPagination > ul > li:nth-child(',page,') > a'))
sapply(pagetag, function(x){x$clickElement()})
Sys.sleep(1)
if(page == 11){
  page <- 1
  count <- count+1
  if(count == 2){
    break;
  }
  pagetag <- remDr$findElements(using='css selector',  paste0('#smGiList > div.tplPagination > p > a'))
  sapply(pagetag, function(x){x$clickElement()})
  Sys.sleep(1)
  }
}
write(jobtag, "jobwithjava.txt")

#txt문서 csv파일로
word_data <- readLines("jobwithjava.txt")
word_data

#필요없는 문자 없애기
word <- str_split(word_data,", ")

#행렬을 벡터로 변환
undata <- unlist(word)

#사용빈도
word_table <- table(undata)

#데이터 정렬하기
undata2 <- sort(word_table, decreasing = T)


write.csv(head(undata2, 15) , "jobwithjava.csv")


#WordCloud해주기
wordcloud2(undata2)
wordcloud2(undata2, color = "random-light", fontFamily = "맑은 고딕", backgroundColor = "black", 
           minRotation = -pi / 6, maxRotation = -pi / 6, rotateRatio = 1, shape="star", size = 2)


