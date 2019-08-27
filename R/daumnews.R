library(rvest)
library(XML)
library(httr)

im <- read_html("http://media.daum.net/ranking/popular/")
t <- htmlParse(im)
newstitle <- xpathSApply(t,"//ul[@class='list_news2']/li/div[2]/strong/a", xmlValue);
newstitle<- xpathSApply(t,"//a[@class='link_txt']", xmlValue); 
newstitle
newstitle <- gsub("[[:punct:][:cntrl:]]", "", newstitle)
newstitle
newstitle <- trimws(newstitle)
newstitle

newspapername<- xpathSApply(t,"//span[@class='info_news']", xmlValue); 
newspapername
newspapername <- gsub("[[:punct:][:cntrl:]]", "", newspapername)
newspapername
newspapername <- trimws(newspapername)
newspapername

news <- data.frame(newstitle,newspapername)
write.csv(news,"daumnews.csv", row.names = F)


news <- NULL

newsurl <- GET("https://media.daum.net/ranking/popular/")

newstitle <- html_nodes(read_html(newsurl), 'ul.list_news2 a.link_txt')
newstitle <- html_text(newstitle)

newspapername <- html_nodes(read_html(newsurl), 'ul.list_news2 span.info_news')
newspapername <- html_text(newspapername)

news <- data.frame(newstitle,newspapername)

write.csv(news, "daumnews.csv",row.names = F)