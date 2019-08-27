library(RSelenium)

remDr <- remoteDriver(remoteServerAddr = "localhost"
                      , port=4445 , browserName="chrome")

remDr$open()

remDr$navigate("https://hkg.agoda.com/ko-kr/shilla-stay-seocho/hotel/seoul-kr.html?cid=-204")
mored<-remDr$findElements(using='css','#SearchBoxContainer > div > div > div.Popup__container.Popup__container--garage-door > div > div > div.AlertMessage.CalendarAlertMessage > a')
sapply(mored,function(x){x$clickElement()})

remDr$executeScript("scrollBy(0,7500)")

mored<-remDr$findElements(using='css','#dismiss-btn > p')
sapply(mored,function(x){x$clickElement()})

reple <- NULL;

for(i in 1:15){
  doms <- remDr$findElements(using="css selector",".Review-comment-bodyText")
  reple_v <- sapply(doms,function(x){x$getElementText()})
  reple <- c(reple, unlist(reple_v))
  
  if(i<3){
    more<-remDr$findElements(using='css selector',paste0("#reviewSection > div:nth-child(4) > div > span.Review-paginator-numbers > span:nth-child(",i+1,")"))
  }
  else if(i>=3){
    more<-remDr$findElements(using='css selector',"#reviewSection > div:nth-child(4) > div > span.Review-paginator-numbers > span:nth-child(4)")
  }
  sapply(more,function(x){x$clickElement()})
  
  Sys.sleep(2)
}

write(reple,"hotel2.txt")
