#문제2
seq(10,38, 2)
m1 <- matrix(seq(10,38, 2),nrow=3,ncol=5, byrow = T)
m1

m2 <- m1+100
m2

m_max_v <- max(m1)
m_max_v

m_min_v <- min(m1)
m_min_v

row_max <- apply(m1,1,max)
row_max

col_max <- apply(m1,2,max)
col_max

m1; m2; m_max_v; m_min_v; row_max; col_max

#문제6
n1 <- c(1,2,3)
n2 <- c(4,5,6)
n3 <- c(7,8,9)

m1 <- cbind(n1,n2,n3)
m1

#문제7
m2 <- matrix(1:9,nrow = 3, ncol = 3, byrow = T)
m2

#문제8
rownames(m2) <- c("row1","row2","row3")
colnames(m2) <- c("col1","col2","col3")
m3 <- m2 
m3

#문제9
alpha <- matrix(letters[1:6],nrow = 2,ncol=3)
alpha

(alpha2 <- rbind(alpha,letters[(length(letters)-2):length(letters)]))
alpha2

(alpha3 <- cbind(alpha,c('s','p')))
alpha3
