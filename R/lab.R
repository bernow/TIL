library(dplyr)
# 구현 기능 : R 코드로 제시된 hotel2.txt를 읽고 제일 많이 나온 명사 10개를 
# Java 코드로 전달하여 
# 다음과 같이 Java 코드로 출력한다.

# R 이 보내온 최빈 명사들 : xxx, xxx, xxx, xxx ...., xxx
# hotel <- readLines("C:/Rstudy/hotel2.txt")
# hotel_word <- sapply(hotel, extractNoun, USE.NAMES = F)
# word_data <- unlist(hotel_word)
# word1 <- Filter(function(x) { nchar(x) >= 3}, word_data)
# word2 <- table(word1)
# word3 <- sort(word2, decreasing = T)
# word <- word3 %>% head(10)
# word <- names(word)  
# word
# 구현 기능 : R 코드로 제시된 hotel2.txt를 읽고 제일 많이 나온 명사 10개를 
# 명칭과 횟수로 구성되는 데이터프레임을 생성해서 
# Java 코드로 전달하여 
# 다음과 같이 Java 코드로 출력한다.
# R 이 보내온 최빈 명사들 :
# xxx  nn
# xxx  nn
# xxx  nn
hotel <- readLines("C:/Rstudy/hotel2.txt")
hotel_word <- sapply(hotel, extractNoun, USE.NAMES = F)
word_data <- unlist(hotel_word)
word1 <- Filter(function(x) { nchar(x) >= 3}, word_data)
word2 <- table(word1)
word3 <- sort(word2, decreasing = T)
word <- word3 %>% head(10)
word_df <- data.frame(word, stringsAsFactors = FALSE)

