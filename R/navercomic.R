library(rvest)
library(XML)
library(httr)



navercomic <-data.frame()
comicurl <- "https://comic.naver.com/genre/bestChallenge.nhn?&page="
for(i in 1:114){

url <- paste0(comicurl, i)
  
#comicName
comicName <- html_nodes(read_html(url), 'h6.challengeTitle a')
comicName <- html_text(comicName, trim = T)
comicName <- gsub("[[:punct:][:cntrl:]]", "", comicName)
comicName

#comicSummary
comicSummary <- html_nodes(read_html(url), 'div.summary')
comicSummary <- html_text(comicSummary)
comicSummary <- gsub("[[:punct:][:cntrl:]]", "", comicSummary)
comicSummary

#comicGrade
comicGrade <- html_nodes(read_html(url), 'div.weekchallengeBox strong')
comicGrade <- html_text(comicGrade)
comicGrade <- gsub("[[:cntrl:]]", "", comicGrade)
comicGrade

page <- data.frame(comicName, comicSummary, comicGrade)
navercomic <- rbind(navercomic, page)
}
# head(navercomic);tail(navercomic)
write.csv(navercomic, "navercomic.csv",row.names = F)  
  