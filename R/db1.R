library(ggplot2)
library(dplyr)

iris_rename <- iris
names(iris_rename) <- c("SLENGTH", "SWIDTH", "PLENGTH", "PWIDTH", 
                        "SPECIES")

# sample_iris 테이블 생성하기

dbWriteTable(conn,"iris",iris_rename)

iris_data <- dbReadTable(conn, "IRIS")
iris_data

# db1
ggplot(iris_data, aes(x = SLENGTH, y = SWIDTH)) +
  geom_point(aes(color=SPECIES))

# db2
ggplot(iris_data, aes(x = PLENGTH, y = PWIDTH)) +
  geom_point(aes(color=SPECIES))
