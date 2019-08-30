## ggplot2 패키지

1. 패키지 설치 및 로드

   ```R
   install.packages("ggplot2")
   livrary(ggplot2)
   ```

2. 그래프 기본 틀 만들기

   - ggplot( ) 함수는 그래프를 표현하는 좌표를 그리기 위해 판을 짜는 함수

   ```bash
   ggplot(데이터 세트, aes(데이터 속성))
   ```

   ````R
   # x축과 y축 맵핑
   ggplot(airquality, aes(x = Day, y = Temp)) + geom_point()
   ````

3. 산점도 그리기

   - 두 변수의 관계를 파악하기 위해 평면에 관측점을 찍어서 표한하는 그래프

   ```R
   # 산점도 그리기
   ggplot(airquality, aes(x = Day, y = Temp)) + geom_point()
   
   # 크기를 3, 색상을 빨강으로 적용하여 산점도 그리기
   ggplot(airquality, aes(x = Day, y = Temp)) + geom_point(size = 3, color = "red")
   ```

4. 선 그래프 그리기

   ```R
   # x축을 Day, y축을 Temp로 맵핑한 후 꺾은선 그래프 그리기
   ggplot(airquality, aes(x = Day, y = Temp)) + geom_line()
   ```

5. 그래프 겹쳐 그리기

   ````R
   # x축을 Day, y축을 Temp로 맵핑한 후 꺾은선 그래프와 산점도 그리기
   ggplot(airquality, aes(x = Day, y = Temp)) + 
     geom_line() +
     geom_point()
   ````

6. 막대그래프, geom_bar( ) 함수

   - 막대그래프는 하나의 변수에서 각 값의 빈도를 파악할 때 사용
   - 막대그래프 그리기

   ```R
   # matcars에서 cyl 종류별 빈도수 확인
   ggplot(mtcars, aes(x = cyl)) + geom_bar(width = 0.5)
   
   # 빈 범주를 제외하고 cyl 종류별 빈도수 확인
   ggplot(mtcars, aes(x = factor(cyl))) + geom_bar(width = 0.5)
   ```

7. 누적 막대그래프

   - 누적 막대그래프를 그릴 때는 geom_bar() 함수 안에 aes() 함수를 이용하여 누적할 열을 지정

   ```R
   # cyl 종류별 gear 빈도 누적 막대그래프
   ggplot(mtcars, aes(x = factor(cyl))) + geom_bar(aes(fill = factor(gear)))
   ```

8. geom_boxplot( ) 함수

   - 다른 그래프와 사용 방법은 유사하지만 aes( ) 함수 안에 box로 그룹지을 열을 설정해야 함
   - 상자 그림 그리기

   ```R
   # airquality에서 Day 열을 그룹 지어, 날짜별 온도 상자 그림을 그림
   ggplot(airquality, aes(x = Day, y = Temp, group = Day)) + geom_boxplot()
   ```

9. geom_histrogram( ) 함수

   - 도수 분포를 기둥 모양 그래프로 표현한 히스토그램을 만드는 함수

   ```R
   # airquality에서 Temp의 히스토그램
   ggplot(airquality, aes(Temp)) + geom_histogram()
   ggplot(airquality, aes(Temp)) + geom_histogram(binwidth = 1)
   ```

10. 사선, geom_abline( ) 함수

    - x축 또는 y축과 만나는 값인 절편과 기울기를 설정하여 그래프에 사선을 그릴 때 사용
    - 꺾은선 그래프에 사선 그리기

    ```R
    # 선형 회기 분석 
    lm(psavert~date, data=economics)
    
    # 꺾은선그래프에 사선 그리기
    ggplot(economics, aes(x = date, y = psavert)) + # x축을 date, y축을 psavert로 맵핑
      geom_line() +                                 # 꺾은선 그래프 그리기
      geom_abline(intercept = 12.18671, slope = -0.0005444)
      # 절편 12.18671, 기울기 -0.0005444로 사선 그리기
    ```

11. 평행선, geom_hline( ) 함수

    - 평행선을 그릴 때 사용하며, 옵션으로 y축의 절편 값을 입력해야 한다.
    - 꺾은선 그래프에 평행선 그리기

    ```R
    ggplot(economics, aes(x = date, y = psavert)) + 
      geom_line(color = "red") +
      geom_hline(yintercept = mean(economics$psavert)) # psavert 평균 값으로 평행선 그리기
    ```

12. 수직선, geom_vline( ) 함수

    - 수직선을 그릴 때 사용하며, 옵션으로 x축의 절편 값을 입력해야 한다.
    - 꺾은선 그래프에 수직선 그리기

    ```R
    #개인 저축률(psavert)이 최솟값일 때의 날짜(date)를 구해 x_inter 변수에 할당
    x_inter <- filter(economics, psavert == min(economics$psavert))$date
    
    ggplot(economics, aes(x = date, y = psavert)) + 
      geom_line(color = "red") +
      geom_vline(xintercept = x_inter) # psavert 평균 값으로 수직선 그리기
    ```

13. 텍스트, geom_text( ) 함수

    - 그래프에서 각 항목의 이름이나 값 등을 표시할 때 주로 사용

    ```bash
    geom_text(aes(label = 라벨명, vjust = 세로 위치, hjust = 가로 위치))
    ```

    - 산점도를 그리고 데이터 레이블 입력하기

    ```R
    ggplot(airquality, aes(x = Day, y = Temp)) +
      geom_point() +
      geom_text(aes(label = Temp, vjust = 0, hjust = 0)) # 각 점에 Temp 값 입력하기
    ```

    