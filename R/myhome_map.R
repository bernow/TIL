# [ 지도 출력 실습 ]
# 우리 집의 지도를 출력하는데 
# 오늘의 요일이 월요일 또는 화요일이면 terrain 타입으로
# 오늘의 요일이 수요일 또는 목요일이면 satellite 타입으로
# 오늘의 요일이 금요일이면 roadmap 타입으로
# 오늘의 요일이 토요일 또는 일요일이면 hybrid 타입으로
# 지도를 출력하는 R 코드를 작성한다.
# 지도 제목으로 "XXX의 집"을 설정하고 "위도"와 "경도"도 출력한다.

myhome <- geocode(enc2utf8("양천구 목3동 318-36"))
cen <- c(myhome$lon, myhome$lat)
mk <- data.frame(lon=myhome$lon, lat=myhome$lat)
str(mk)

date <- Sys.Date()
day <- weekdays(date)
day <- "월요일"
day <- "수요일"
day <- "금요일"
day <- "일요일"

if(day == "월요일" | day == "화요일") {
map <- get_googlemap(center=cen, maptype="terrain",zoom=14, marker=mk)
       ggmap(map) + labs(title = "나의 집", x="경도", y="위도")
} else if(day == "수요일" | day == "목요일") { 
map <- get_googlemap(center=cen, maptype="satellite",zoom=14, marker=mk)
       ggmap(map) + labs(title = "나의 집", x="경도", y="위도")
} else if(day == "금요일"){
map <- get_googlemap(center=cen, maptype="roadmap",zoom=14, marker=mk)
       ggmap(map) + labs(title = "나의 집", x="경도", y="위도")
} else{
map <- get_googlemap(center=cen, maptype="hybrid",zoom=14, marker=mk)
       ggmap(map) + labs(title = "나의 집", x="경도", y="위도")
}
ggsave("mymap.png")
