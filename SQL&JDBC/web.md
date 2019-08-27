# 웹 프로그래밍

1. 웹 클라이언트 : HTML, CSS, JavaScript, Ajax, HTML5 주요 API
2. 웹서버 : Servlet&JSP, Spring FW, Spring MVC, MyBatis = 프로그래밍 하는 기술(API)
3. 웹기반 시각화 : D3.js
4. 오픈 API : 네이버 또는 구글



## 웹서버

- Tomcat(Web Application Server : WAS)

- javaexam - java project
- edu - Dynamic web Project



## 웹 클라이언트 - 크롬

​        http://tomcat.apache.org/

1. Tomcat 서버를 eclipse에 등록
2. edu 생성
3. edu를 Tomcat 서버에 등록
4. first.html 파일을 생성
5. 브라우저(크롬)에서 first.html 요청

​       http://localhost:8000/edu/first.html

​       http://localhost:8000/edu/first.html --> HTTP URL 문자

​                                                ----------------- URL 문자열

​                                              ------- /edu : 컨택스트패스(이거에 따라 어떤 프로젝트에서 파일을 찾아서 줄것인지 

​                                                                    확인) - 잘못쓰면 404에러뜸

​                                                        -------------- /first.html : 최상위 폴더 확인

- Tomcat 설치 후
  - 이클립스에 server -tomcat 9.0 설치
  - dynamic web project 에 edu, 마지막에 체크박스 체크
  - edu 오른쪽클릭후 properties 누르고 utf-8로 설정
  - 결과창의 servers  선택후 add and remove 선택후 edu 오른쪽으로 밀어넣기 // 서버 설정
  - edu 하위 항목의 webcontent 오른쪽 클릭후 html 파일 선택