site <- "https://movie.daum.net/moviedb/grade?movieId=121137&type=netizen&page="
movie.review <- NULL

for(i in 1:20){
  url <- paste(site, i, sep="")
  text <- read_html(url, encoding = "UTF-8")
  nodes <- html_nodes(text, ".emph_grade")
  point <- html_text(nodes)
  nodes <- html_nodes(text, ".desc_review")
  review <- html_text(nodes, trim=TRUE)
  review <- gsub("\t", "", review)
  review <- gsub("\r", "", review)
  review <- gsub("신고", "", review)
  page <- data.frame("평점"=point,"리뷰"=review)
  movie.review <- rbind(movie.review, page)
}
write.csv(movie.review, "daummovie2.csv", row.names = F)
