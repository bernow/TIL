## [ JSP ]

### 시간 출력

1. JavaScript : 클라이언트 시간
2. JSP+Java : 서버 시간



### 순서 

1. JSP 태그
2. JSP 내장 객체



### [ JSP 태크]

1. 스크립트 태그 : 필요한 자바 코드를 정의하는 용도의 태그들
   - <%= %> : 표현식(식만 올 수 있다.)
   - <%  %> : 수행문(지역변수)
   - <%!  %> : 선언문 -> 멤버변수 선언, 메서드 정의
   - <%@  %> : 지시자
   - <%-- %>) : 주석(HTML주석 : <!--  -->,  자바주석 : //)
2. 액션 태그
   -  <jsp:useBean ..../>
   - <jsp:forward ...../>
   - <jsp:include ...../>
   - <jsp:setProperty ..../>
   - <jsp:getProperty ..../>
3. 커스텀 태그 - 필요에 의해 개발자가 직접 태그를 만들어서 사용해라





### 서블릿의 객체 전달 방법

1. HttpServletRequest 객체에 저장하여 전달하는 방법 - requset scope(요청이 끝날때까지 유효)
2. HttpSession 객체에 저장하여 전달하는 방법 - session scope(세션이 유지되는 동안 유효)
3. ServletContext 객체에 저장하여 전달하는 방법 - Application scope(서버가 죽을때까지 유효)

setAttribute(이름, 객체)

getAttribute(이름)

removeAttribute(이름)

배열, 문자열

이름, 번호, 나이, 주소 --> 보내야할 객체가 타입이 다를 경우 방법 : VO(Value Object) 클래스, DTO 클래스



### [ EL ]

- EL변수 : 주어진 변수명으로 보과되어 있는 객체





