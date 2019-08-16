url <- "https://movie.daum.net/moviedb/grade?movieId=121137&type=netizen"
text <- read_html(url,  encoding="UTF-8")
text

# 영화평점
nodes <- html_nodes(text, ".emph_grade")
point <- html_text(nodes)
point
# 영화리뷰
nodes <- html_nodes(text, ".desc_review")
review <- html_text(nodes, trim=TRUE)
review
review <- gsub("\t", "", review)
review <- gsub("\r", "", review)
review <- gsub("신고", "", review)
review
page <- data.frame("평점"=point,"리뷰"=review)
write.csv(page, "daummovie1.csv", row.names = F)

