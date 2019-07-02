## jQuery

선언방법 : $(아규먼트).xxx( ), $.xxx( )

var ary = [10, 20, 30, 40, 50];



$(ary).each(function(index, data)){

});



$.each(ary, function(index, data) {

});



$(자바스크립트 객체)

$("CSS선택자문자열") -> 전체 페이지에서 찾는다.

$("CSS선택자문자열, DOM객체")

$("html태그문자열") -> DOM객체로 자동으로 만들어준다.

$(함수) == $(document).ready(함수) == window.onload = 함수



#### - 메서드

- var( ) : getter -> 입력상자값을 읽어라
- var(아규먼트) : setter -> 아규먼트에는 값, 함수(함수를 수행시키고 그 결과값을 수행해라)
- html( ) : getter
- html(아규먼트) : setter



- css메서드
  - css("속성명") : getter
  - css("속성명", "속성값")
  - css("속성명", 함수) 
  - css({"속성명", "속성값", ... })  



- attr메서드
  - attr("속성명") : getter
  - attr("속성명", "속성값")
  - attr("속성명", 함수) 
  - attr({"속성명", "속성값", ... })  





#### - 이벤트

1. 이벤트이름(함수)
2. on("이벤트이름", 함수)



일반태크의 컨텐트 : html( ), text( )

form 태그의 서브태그들 : val( ) 

form 태그의 서브태그들 : <textarea> : html( ), text( ), val( )



### jQuery에서 Ajax 프로그래밍 지원 API

$.ajax( ), $.get( ), $.post( ), $.getJSON( )

$(Ajax요청으로 응답받은 내용을 추가하려는 부모태그).load( )

