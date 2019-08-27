# JDBC 프로그래밍 정리

- ODBC --> C, C++
- JDBC API + JDBC Driver

​        java.sql        DB서버에 따로 추가로 준비

- JDBC 프로그램의 구현 과정
  - JDBC 드라이버 로딩(Class.forName(대표클래스 이름))

  - DB서버 접속(DriverManager.getConnection(JDBCURL, ID, PW))

  - Statement, PreparedStatement 객체 생성 

  - executeQuery( ), executeUpdate() - return 값 // execute 툴

    ​       - resultSet              - int

      next,getXxx()         변화된 행의 갯수

  - 연결된 자원 해제 : close()

​          