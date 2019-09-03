##  Leaflet in R

```bash
leaflet은 인터랙티브한 지도를 구현할 수 있게 해주는 오픈소스 
자바스크립트 라이브러리이다.
R의 leaflet 패키지는 R에서 데이터를 가지고 쉽게 Leaflet 지도를 생성할 수 있게 해준다.
```

## Creating default map

leaflet(data)를 통해 leaflet map widget을 생성하고 데이터를 연결한다.

1. SetView( ) 함수
   - 지도의 중심과 확대 정도를 설정
2. addTiles( ) 함수
   - 기본 타입(OpenStreetMap)을 불러와서 지도를 보여준다.
3. addCircles( ) 함수
   - 데이터를 원의 형태로 지도에 나타냄
4. 각각의 함수는 %>%를 통해 연결할 수 있다



## Third Party Tiles

````bash
addTiles()대신에 addProviderTiles()를 이용하면 OSM이 아닌 다른 형태의 지도를 사용할 수 있다.
````



## Popup

```bash
popup 옵션을 이용하면 tooltip을 생성할 수 있다.
클릭하면 해당 데이터를 확인할 수 있다.
```



## color

```bash
leaftlet에서는 colorNumeric, colorBin, colorQuantile, colorFactor 등의 함수를 이용해서 색상을 지정하는 함수를 생성할 수 있다.

위에서 사용한 와이파이 정보를 통신사별로 구별하기 위해서 서로 다른 색상을 지정해보려고 한다

colorFactor함수를 이용하면 RColorBrewer 패키지의 색상이나 다른 함수의 색상을 가져와서 구성할 수 있다

첫 번째 인수로는 RColorBrewer의 팔레트 이름, 두 번째 인수는 적용할 데이터(열까지)를 지정한다

telecom_color = colorFactor('Set1', wifi_data$div)
색상 함수를 생성하면 color옵션에서 해당 변수에 함수를 사용한 형태로 값을 지정한다
```

