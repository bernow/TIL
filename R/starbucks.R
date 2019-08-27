library(rvest)
library(RSelenium)
library(XML)

remDr <- remoteDriver(remoteServerAddr = "localhost"
                      , port=4445 , browserName="chrome")
remDr$open()
site <- paste("https://www.istarbucks.co.kr/store/store_map.do?disp=locale")
remDr$navigate(site)
#remDr$executeScript("scrollBy(0, 10000)")




#서울 클릭
seoultag <- remDr$findElements(using='css selector',  paste0("#container > div > form > fieldset > div > section > article.find_store_cont > article > article:nth-child(4) > div.loca_step1 > div.loca_step1_cont > ul > li:nth-child(1) > a"))
sapply(seoultag, function(x){x$clickElement()})
Sys.sleep(1)

#전체 클릭
alltag <- remDr$findElements(using='css selector',  paste0("#mCSB_2_container > ul > li:nth-child(1) > a"))
sapply(alltag, function(x){x$clickElement()})
Sys.sleep(1)

sizeCss <- "#container > div > form > fieldset > div > section > article.find_store_cont > article > article:nth-child(4) > div.loca_step3 > div.result_num_wrap > span"
size <- remDr$findElements(using='css selector',sizeCss)
limit <-sapply(size,function(x){x$getElementText()})  

starbucks <- NULL
  for(i in 1:as.numeric(limit)){
    
    #매장명
    cafetag <- paste('#mCSB_3_container > ul > li:nth-child(',i,') > strong', sep='')
    cafename <- remDr$findElements(using='css selector',  cafetag)
    shopName <- sapply(cafename,function(x){x$getElementText()})
    shopName <- (unlist(shopName))
    
    #주소, 전화번호
    addrCss <- paste('#mCSB_3_container > ul > li:nth-child(',i,') > p', sep='')
    addrs <- remDr$findElements(using = 'css', addrCss)
    addrName <-sapply(addrs,function(x){x$getElementText()})
    unlist(addrName)
    address <- strsplit(addrName[[1]],"\n")[[1]]
    addr <- address[1]
    telephone <- address[2]
    
    wheretag <- paste0('#mCSB_3_container > ul > li:nth-child(',i,')')
    where <- remDr$findElements(using="css", wheretag)
    lat <- unlist(sapply(where,function(x){x$getElementAttribute('data-lat')}))
    lng <- unlist(sapply(where,function(x){x$getElementAttribute('data-long')}))
    
    vec <- data.frame(shopName=,addr,telephone,lat,lng)
    starbucks <- rbind(starbucks,vec)
   
    if(i %% 3 == 0 && i != as.numeric(limit)){
      remDr$executeScript("var su = arguments[0]; var dom=document.querySelectorAll('#mCSB_3_container>ul>li')[su]; dom.scrollIntoView();", list(i))
  }
  }
write.csv(starbucks,"starbucks.csv", row.names = F)
    
