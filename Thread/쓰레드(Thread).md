## 쓰레드(Thread)

### 프로세스와 쓰레드

1. 프로세스 : 실행 중인 프로그램, 자원 (resources)과 쓰레드로 구성
2. 쓰레드 : 프로세스 내에서 실제 작업을 수행,  모든 프로세스는 하나 이상의 쓰레드를 가지고 있다.
   - ex) 프로세스 = 공장,  쓰레드 = 일꾼
3. 멀티 프로세스 vs 멀티 쓰레드 - 하나의 새로운 프로세스를 생성하는 것보다 하나의 새로운 쓰레드를 생성하는 것이 더 적은 비용이 든다.
4. 멀티 쓰레드의 장점
   - 장점 
     - 자원을 보다 효율적으로 사용할 수 있다
     - 사용자에 대한 응답성(responseness)이 향상된다
     - 작업이 분리되어 코드가 간결해진다
   - 단점 
     - 동기화(synchronization)에 주의해야 한다.
     - 교착상태(dead-lock)가 발생하지 않도록 주의해야 한다
     - 각 쓰레드가 효율적으로 고르게 실행될 수 있게 해야 한다
5. 쓰레드의 구현과 실행 
   - Thread클래스를 상속
     - class MyThread extends Thread {
       	public void run() { /* 작업내용 */ } }  // Thread클래스의 run( ) 을 오버라이딩
   - Runnable인터페이스를 구현
     - class MyThread implements Runnable {
       	public void run( ) { /* 작업내용 */ } } // Runnable인터페이스의 추상메서드 run( ) 을 구현