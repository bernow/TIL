# spark

## 스파크 SQL 

1. 스파크 SQL로 할 수 있는거

   - JSON 형식 파일
   - Parquet(파케) 형식 파일
   - ORC형식 파일
   - JDBC를 지원하는 데이터베이스
   - 하이브 호환 테이블
   - 스파크 SQL 전용 테이블

2. 스파크 SQL이 제공하는 기능

   - 다양한 형식의 데이터셋을 하나로 다루고자 DataFrame이라는 추상적인 자료구조 이용

3. DataFrame으로 데이터처리 기술

   - 간결하고 가독성 높은 코드로 데이터처리 기술
   - 옵티마이저에 의한 최적화
     - 스파크 SQL은 구조화되지 않은 데이터셋을 직접 다루지 못한다

4. 스파크 SQL의 개념

   - Write less code (코드는 적게 작성한다)
     - RDD변환을 기술할 때와 비교해서 간결하게 데이터처리를 기술할 수 있다.
   - Read less data (데이터는 적게 읽는다)
     - Data Sources API와 연계해 처리 대상의 구조화된 데이터셋의 특성을 이용함으로써 불필요한 데이터 읽기를 줄일 수 있다
   - Let the optimizer do the hard word (어려운 일은 옵티마이저에 맡긴다)
     - 최적화는 옵티마이저의 역할이다

5. RDD로부터 DataFrame 생성

   - ```bash
     scala> case class Dessert(menuId: String, name: String, price: Int, kcal: Int)
     ```

