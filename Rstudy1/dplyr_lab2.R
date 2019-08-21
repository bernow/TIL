str(ggplot2::mpg)
mpg <- as.data.frame(ggplot2::mpg)

#7-1
mpg1 <- as.data.frame(ggplot2 :: mpg)
mpg1 <- mpg1 %>% mutate(sum1 = cty+hwy)

#7-2
mpg1 <- mpg1 %>% mutate(mean_sum1 = sum1/2)

#7-3
mpg1 %>% arrange(desc(mean_sum1)) %>% 
     head(3)

#7-4

mpg %>% mutate(sum1 = cty+hwy) %>% 
        mutate(mean_sum1 = sum1/2) %>% 
        arrange(desc(mean_sum1)) %>% 
        head(3)
#-----------------------------------------------
#8-1
mpg %>% group_by(class) %>% 
        summarise(mean_cty = mean(cty))

#8-2
mpg %>% group_by(class) %>% 
        summarise(mean_cty = mean(cty)) %>% 
        arrange(desc(mean_cty))

#8-3
mpg %>%  group_by(manufacturer) %>% 
         summarise(mean_cty = mean(hwy)) %>% 
         arrange(desc(mean_cty)) %>% 
         head(3)

#8-4
mpg %>% filter(class == "compact") %>% 
        group_by(manufacturer) %>%
        summarise(n=n()) %>% 
        arrange(desc(n))
#---------------------------------------------
#9
fuel <- data.frame(fl = c("c","d","e","p","r"), 
                   price_fl = c(2.35, 2.38, 2.11, 2.76, 2.22),
                   stringsAsFactors = F)
fuel

#9-1
?inner_join
mpg <- left_join(mpg,fuel, by="fl")

#9-2
mpg %>% select(model, fl, price_fl)

#---------------------------------------------
#10
str(ggplot2::midwest)
midwest <- as.data.frame(ggplot2::midwest)
str(midwest)

#10-1
midwest1 <- midwest %>%  mutate(per = ((poptotal-popadults)/poptotal)*100)

#10-2
midwest1 %>% select(county, per) %>% 
             arrange(desc(per)) %>% 
             head(5)

#10-3
midwest1 <- midwest1 %>% mutate(grade = ifelse(per>=40,"large", ifelse(per>=30,"middle","small")))
midwest1 %>% group_by(grade) %>% 
             summarise(n())

#10-4
midwest2 <- midwest %>% mutate(per = popasian/poptotal*100) 
midwest2 %>% arrange(per) %>% 
             select(state, county, per)

#----------------------------------------------
#11
mpg <- as.data.frame(ggplot2 :: mpg) #mpg 데이터 불러오기
mpg[c(65,124,131,153,212),"hwy"] <- NA  # NA할당하기

#11-1
table(is.na(mpg$drv)); table(is.na(mpg$hwy))

#11-2
mpg %>% filter(!is.na(hwy)) %>% 
        group_by(drv) %>% 
        summarise(mean_hwy = mean(hwy))
#-----------------------------------------------
#12
mpg <- as.data.frame(ggplot2 :: mpg) #mpg 데이터 불러오기
mpg[c(10,14,58,93),"drv"] <- "k"  # drv이상치 할당
mpg[c(29,43,129,203),"cty"] <- c(3,4,39,42)  # cty이상치 할당

#12-1
table(mpg$drv); mpg$drv <- ifelse(mpg$drv %in% "k",NA,mpg$drv)

#12-2
boxplot(mpg$cty)$stats
mpg$cty <- ifelse(mpg$cty<9 | mpg$cty>26,NA,mpg$cty)
boxplot(mpg$cty)$stats

#12-3

mpg %>% filter(!is.na(cty) & !is.na(drv)) %>% 
        group_by(drv) %>% 
        summarise(mean_hwy = mean(cty))
