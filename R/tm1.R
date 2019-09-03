# 듀크 : 사과 포도 망고
# 둘리 : 포도 자몽 자두
# 또치 : 복숭아 사과 포도
# 도우너 : 오렌지 바나나 복숭아
# 길동 : 포도 바나나 망고
# 희동 : 포도 귤 오렌지 

# tm 패키지와 proxy 패키지를 이용하여 다음에 제시된 결과를 R 코드로 해결해 본다.

# (1) 좋아하는 과일이 가장 유사한 친구들을 찾아본다.
# (2) 학생들에게 가장 많이 선택된 과일을 찾아본다.
# (3) 학생들에게 가장 적게 선택된 과일을 찾아본다.

듀크 <- c("사과 포도 망고")
둘리 <- c("포도 자몽 자두")
또치 <- c("복숭아 사과 포도")
도우너 <- c("오렌지 바나나 복숭아")
길동 <- c("포도 바나나 망고")
희동 <- c("포도 귤 오렌지")

fruit <- c(듀크,둘리,또치,도우너,길동,희동)
cps <- VCorpus(VectorSource(fruit))
tdm <- DocumentTermMatrix(cps, 
                          control=list(wordLengths = c(1, Inf)))
tdm
as.matrix(tdm)

m <- as.matrix(tdm)

# 2.가장 많이 선택된 과일 : 포도, 3.가장 적게 선택된 과일 : 귤, 자몽, 자두
rowSums(m)
colSums(m)

com <- m %*% t(m)  #학생
com <- t(m) %*% m  #과일
com

#좋아하는 과일이 가장 유사한 친구 : 듀크랑 또치, 듀크랑 길동이

dist(com, method = "cosine")