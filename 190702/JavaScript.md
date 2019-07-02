# JavaScript

- Java
  -  범용언어, oop언어, 썬마이크로시스템즈 -> 오라클
- JavaScript 
  - 동적인 웹페이지 제작에 사용되는 언어, oop언어
  - 넷스케이프 -> ECMA(오픈언어)
  - 정적인 웹 페이지를 생산하는 HTML 기능을 보완하는 프로그램 프로그래밍 언어
  - 라이브스크립트(처음이름)
  - CSS와 동일하게 HTML 문서안에 작성해도 되고 독립된 파일 (xxxx.js권장)로 만든 다음 HTML 문서안으로 import 가능



## JavaScript 구문 정리

1. 데이터 타입, 변수 생성 방법
2. 연산자
3. 제어문 (for, for-each, while, do~while, if, switch, break, continue)
4. 배열
5. 함수
6. 객체 생성 - 객체 리터럴, 클래스
7. 주요 API - 내장 함수, 내장객체 BOM, DOM



### JavaScript 데이터 타입

1. number
2. boolean
3. string
4. undefined(타입명, 값 둘 다 사용)
5. object
6. function





### JavaScript 연산자

- typeof 연산자 = 연산자의 타입을 확인
  - (===) -> 타입을 먼저 비교하고 값을 비교한다.
  - (==) -> 값만 비교한다.



### JavaScript의 배열

- 배열 생성 방법

​        (1) 배열 리터럴 - [값1, 값2, 값3 ...]

​        (2) 표준 API(Array())로 객체를 생성하여 만드는 방법

​              - new Array(), new Array(숫자), new Array(값1, 값2, 값3)              

- 특징
  - 하나의 배열에 저장되는 데이터 타입의 제한이 없다.
  - 배열이 생성된 이후에도 배열의 크기를 변경할 수 있다.
  - 인덱스는 0부터 시작한다. 
  - length 라는 속성을 사용하여 배열의 크기를 알 수 있다.
  - js는 배열의 여러 타입을 넣어도 그 고유의 타입값을 유지한다.
  - 배열을 생성하여 변수에 담아 사용한다.



## JavaScript의 함수 정의와 활용

- 함수의 정의

​        1. 함수( function)란 하나의 로직을 재실행 할 수 있도록 하는 것으로 코드의 

​            재사용성을 높여준다. 

​		2. 선언적 함수 정의(명시적 함수 정의)

​              function 함수명([매개변수 리스트]) {

​               			  :            

​                    [return 리턴값]

​	 		}

​             리턴값 없이 리턴했을 때 : undefined

​             함수명( );

​             var v = 함수명( );

​             함수명(아규먼트리스트);

	    3. 표현식 함수 정의 

​             function ([매개변수리스트]){

​                             : 

​             }

​              var 함수명(변수) = function ([매개변수리스트]){



​            }

## 함수의 아규먼트 활용

 function out( ) {

​    arguments

}

- 함수가 호출되는 시점에 arguments라는 지역변수가 자동으로 초기화된다.
- 함수 호출시 전달되는 아규먼트들을 유사배열 객체에 담아서 arguments 변수에 할당한다.       





## JavaScript 객체 

- OBP(Object언어) --> OOP

### 1. 객체 생성 방법

​        (1) 객체 리터럴

​        (2) 생성자 함수

- 객체 리터럴

  - { }로 묶이면 객체이다.(멤버가 비어있는 객체)

  - {속성명 : 속성값, 속성명 : 속성값 ...} --> 속성값 : 숫자, 문자열, 논리값, 배열, 함수(메서드)

    

- 생성자 함수(클래스 + 생성메서드)

  - 객체를 초기화하는 역할의 함수 
    - 

### 2. 객체의 멤버 접근 방법

- 멤버 연산자 : , 
- 인덱싱 방법 : [속성명]
  - obj.name, obj['name']
  - obj.project, obj['project']
  - obj.study( )
  - obj.eat('딸기')



### 3. 생성자 함수(클래스 + 생성메서드)

- 객체를 초기화하는 역할의 함수 
  - 멤버가 비어있는 객체에 멤버들을 넣어주는 역할
- new와 함께 호출된다.
- 이름을 정할 때 첫 글자를 대문자로 한다.



## BOM&DOM

### 1. BOM : Browser Object Model

- 브라우저가 제공하는 자바스크립트 API
- 미리 객체를 생성해서 제공
  -  EX) window, location, document, history, screen, navigator



#### - window

- window 객체는 브라우저 객체 모델의 최상위 객체. window의 형태와 위치를 변경할 수 있는

  메서드이다.

  - id = setInterval(func, 밀리시간)

  ​       clearInterval(id)

  - id = setTimeout(func, 밀리시간)

  ​       clearTimeout(id)

- alert( ), confirm( ), prompt( ), open( )

#### - location

- href - 문서의 url주소를 반환
- reload( ) - 화면을 자동으로 '새로 고침'



#### - navigator

- 웹 브라우저에 대한 정보를 제공하는 객체
- 브라우저의 종류나 버전 정보를 파악하기 위해 사용
- platform - 사용중인 운영체제에 시스템 환경 정보를 반환



#### - history 

- 인터넷 방문 기록에 대한 정보를 제공하는 객체

- go(숫자) - 숫자만큼 다음 또는 이전 페이지로 이동



### 2. DOM : Document Object Model

- HTML 파서들은 파싱한 HTML 문서의 각각의 태그들, 태그의 속성들, 태그의 텍스트 형식의

​       컨텐트들 모두 자바스크립트 객체로 생성한다. 

​       --> 자바스크립트에서 접근 가능하도록 지원하기 위해 document 객체의 자손 객체로 등록한다.                                                                       

​             EX) document.body --> DOM 객체

- DOM 객체 찾는 메서드 
  - document.getElementById("id속성값")
  - document.getElementClassName( "class속성값")
  - document.getElementTagName("태그명")
  - document.getQuerySelector( "CSS선택자")
  - document.getQuerySelectorAll( "CSS선택자")





## 이벤트 핸들러 구현

#### 이벤트 : 웹 페이지상에서 발생되는 일

1. 브라우저에서 자동으로 발생(load)
2. 사용자의 액션에 의해서 발생
   - click, mouseover, mouseenter, mouseout, keyin, keypress, keyout, scroll, change, submit, reset, ... 

타겟 : 이벤트 발생된 대상 객체

이벤트 핸들러(리스러) : 이벤트가 발생했을 때 수행되는 코드를 담고 있는 함수

이벤트 모델 : 특정한 타겟에서 정해진 이벤트가 발생했을 때 핸들러가 수행되도록 구현하는 방법

1. 인라인 이벤트 모델(지역)

   - 태그의 속성으로 등록 -> onXXX = "코드"
     - EX) onclick(onClick, ocCLICK) = "수행문장1; 수행문장2; 수행문장3;"

2. 고전 이벤트 모델(전역)

   - <script></script>영역에서 해야함

   - DOM 객체를 찾는다.

     - DOM객체.onxxx(xxx에는 다 소문자여야한다.) = 함수;
     -  해제방법 : DOM객체.onxxx = null;

3. 표준 이벤트 모델(전역)

   - DOM 객체를 찾는다.
     - DOM객체.addEventListener("xxx(xxx = 이벤트이름)", 함수)
     - 해제방법 : DOM객체.removeEventListener("xxx(xxx = 이벤트이름)", 함수)

### Web Storage API

- 웹 스토리지란?
  - 웹 브라우저에 자료를 저장하기 위한 기능으로 로컬스토리지와 세션스토리지로 나뉜다.
  - 저장하려는 데이터의 종류에는 제한이 없으며 저장시에는 문자열로 저장된다.
  - 로컬스토리지 : 영구보관, 세션스토리지 : 브라우저가 종료될 때까지 보관
- window.localStorage 와 window.sessionStorage의 주요 멤버
  - length : 스토리지에 저장된 key/value 쌍의 개수를 추출하는 속성이다.
  - key(index) : 숫자형 인덱스에 해당하는 key를 리턴한다.



'*' GML(IBM : 출판문서 작성 용도)'*'

-----> '*SGML(표준 : 출판뿐만 아니라 규격 문서를 작성하는 범용 용도)'*

​         -----------> '*HTML(웹 페이지 제작용) - 태그가 정해져 있음'*'

​         -----------> '*XML(다목적... 규격화된 문서 작성용) - 직접 태그 정의'*

​                           EX) <태그명> .... </태그명>, <태그명/>, <태그명 속성명 = "속성값">



### XML 

- XML문서
  - XML 선언부를 제외하고는 기존 HTML5의 기본 구조와 사용방법이 거의 유사
  - XML 문서 선언부
    - 반드시 맨 앞에 명세, XML 문서 유형을 지정
    - XML 문서 구조를 정의한 DTD(또는 XML Schema)선언,스타일을 정의한 CSS연결에 대한 선언도 명세
  - 하나의 최상위 엘리먼트의 <시작태그>로 시작해서 </종료태그>로 끝남
  - 최상위 엘리먼트를 포함하여 XML 문서의 모든 태그들은 자유롭게 정의
  - 엘리먼트의 시작 태그 안의 속성도 자유롭게 정의