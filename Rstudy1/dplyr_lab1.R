#1
install.packages("ggplot2")
str(ggplot2::mpg)
mpg <- as.data.frame(ggplot2::mpg)

#1-1 (mpg 의 행의 개수와 열의 개수를 출력한다.)
dim(mpg)

#1-2 (mpg의 데이터를 앞에서 10개 출력한다.)
mpg %>% head(10)

#1-3 (mpg의 데이터를 뒤에서 10개 출력한다.)
mpg %>% tail(10)

#1-4 (mpg의 데이터를 GUI 환경으로 출력한다.)
View(mpg)

#1-5 (mpg를 열 단위로 요약한다.)
summary(mpg)

#1-6 (mpg의 구조를 확인한다.)
str(mpg)

#-------------------------------------------------
# 2-1 (cty = city, hwy = highway)
copympg <- as.data.frame(ggplot2::mpg)
copympg <- copympg %>% rename("city"="cty", "highway"="hwy")

# 2-2 
head(copympg)

#-------------------------------------------------
#3
str(ggplot2::midwest)

#3-1
midwest <- as.data.frame(ggplot2::midwest)
str(midwest)

#3-2
copymidwest <- as.data.frame(ggplot2::midwest)
copymidwest <- copymidwest %>% rename("total"="poptotal", "asian"="popasian")

#3-3
copymidwest %>% mutate(per = (asian/total)*100)

#3-4
midwest %>% mutate(size = ifelse(percasian>=mean(percasian),"large","small"))

#-------------------------------------------------
#4-1
mpg %>% filter(displ<=4 | displ>=5) %>% 
        mutate(group = ifelse(displ<=4,"less4","more5")) %>% 
        group_by(group) %>% 
        summarise(mean_hwy = mean(hwy))

#4-2
mpg %>%  filter(manufacturer == "audi" | manufacturer == "toyota") %>% 
         mutate(group = ifelse(manufacturer == "audi","audi_cty","toyota_cty")) %>% 
         group_by(group) %>% 
         summarise(mean_cty = mean(cty))

#4-3
mpg %>%  filter(manufacturer == "chevrolet" | manufacturer == "ford" | manufacturer == "honda") %>% 
         summarise(mean_all = mean(hwy))

#------------------------------------------------
#5-1
mpg <- as.data.frame(ggplot2::mpg)
mpgselect <- data.frame('class'=mpg$class,'cty'= mpg$cty)

#5-2
mpgselect %>% filter(class == "suv" | class == "compact") %>% 
              group_by(class) %>% 
              summarise(mean_cty = mean(cty))

#------------------------------------------------
#6-1
mpg %>% filter(manufacturer == 'audi') %>% 
        arrange(desc(hwy)) %>% 
        head(5)
