install.packages("DBI")
library(DBI)
install.packages("RJDBC")
library(RJDBC)

drv <- JDBC("oracle.jdbc.driver.OracleDriver","C:/hsj/ojdbc6.jar")
conn <- dbConnect(drv,"jdbc:oracle:thin:@localhost:1521:xe","jdbctest","jdbctest")
conn

dbListTables(conn) # 테이블 리스트 확인

# 테이블에 저장된 데이터 읽기
# 방법 1
result1 <- dbReadTable(conn, "VISITOR")
class(result1)
mode(result1)
result1

# 방법 2
result2 <- dbGetQuery(conn, "SELECT * FROM VISITOR")
class(result2)
mode(result2)
result2

# 방법 3
result3 <- dbSendQuery(conn, "SELECT * FROM VISITOR")
result3
class(result3)

ret1 <- dbFetch(result3, 1)
ret1

ret2 <- dbFetch(result3, 2)
ret2

ret3 <- dbFetch(result3)
ret3

# 테이블에 데이터 저장하기
# 방법 1
dbWriteTable(conn, "book",
             data.frame(bookname=c("자바의 정석","하둡 완벽 입문","이것이 리눅스다"),
                        price=c(30000,25000,32000)))
dbWriteTable(conn,"cars",head(cars,3))

# 방법 2
dbSendUpdate(conn, "INSERT INTO VISITOR VALUES('R언어',sysdate,'R 언어로 데이터를 입력해요',
             visitor_seq.nextval)")
dbSendUpdate(conn, "INSERT INTO VISITOR VALUES('하둡',sysdate,'대용량 데이터 분산저장&처리기술',
             visitor_seq.nextval)")

# 데이터 수정
dbSendUpdate(conn, "INSERT INTO cars(speed,dist) VALUES(1,1)")
dbSendUpdate(conn, "INSERT INTO cars(speed,dist) VALUES(2,2)")
dbReadTable(conn, "CARS")
dbSendUpdate(conn, "UPDATE CARS SET DIST = DIST * 100 WHERE SPEED = 1")
dbReadTable(conn, "CARS")
dbSendUpdate(conn, "UPDATE CARS SET DIST = DIST * 3 WHERE SPEED = 1")
dbReadTable(conn, "CARS")

# 테이블 삭제
dbRemoveTable(conn, "CARS")

# 다양한 DB 연동 예제들
# 예제 1
df <- read.table("product_click.log", stringsAsFactors = F)
names(df) <- c("click_time", "pid")
df$click_time <- as.character(df$click_time)
dbWriteTable(conn,"productlog", df)
result4 <- dbReadTable(conn, "PRODUCTLOG")
result4

# 예제 2
dbWriteTable(conn, "mtcars", mtcars)
rs <- dbSendQuery(conn, "SELECT * FROM mtcars WHERE cyl = 4")
dbFetch(rs)
dbClearResult(rs)

nrow(ret1)
nrow(ret2)


install.packages("Rserve")
