library(rvest)
library(XML)
library(httr)

joburl <- GET("http://www.saramin.co.kr/zf_user/search?search_area=main&search_done=y&search_optional_item=n&searchType=default_mysearch&searchword=%EC%9E%90%EB%B0%94")

#기술이름
tech_name <- html_nodes(read_html(joburl), 'span.txt')
tech_name <- html_text(tech_name)
tech_name <- gsub("[[:punct:][:cntrl:]]", "", tech_name)
tech_names <- tech_name[1:30]  

#채용정보 
info_count <- html_nodes(read_html(joburl), 'ul.list_sfilter span.count')
info_count <- html_text(info_count)
info_count <- gsub("[[:punct:][:cntrl:]]", "", info_count)

info_count <- html_nodes(read_html(joburl), 'ul.list_sfilter span.count')
info_count <- html_text(info_count)
info_count <- gsub("[[:punct:]]","",info_count)
info_count <- as.numeric(info_count)


jobs <- data.frame(tech_names, info_count)

write.csv(jobs, "saramin.csv",row.names = F)
