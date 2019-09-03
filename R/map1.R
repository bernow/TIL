seoulMap <- qmap('Seoul', zoom=11, source='google', maptype='roadmap')
infoLibrary <- read.csv('지역별장애인도서관정보.csv')
seoulMap + geom_point(data = infoLibrary, aes(x=infoLibrary$LON,y=infoLibrary$LAT)
                      , alpha = 0.3) + geom_text(data = infoLibrary
                                                 ,aes(x=infoLibrary$LON,y=infoLibrary$LAT,label=infoLibrary$도서관명
                                                      ,vjust=0, hjust=0))
