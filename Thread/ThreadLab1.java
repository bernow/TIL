package threadexam;

import java.util.Calendar;
import java.util.GregorianCalendar;

class ThreadLab1{
   public static void main(String[] args) {
      Thread1 lab1 = new Thread1();
      Thread2 lab2 = new Thread2();
      
      lab1.start(); // lab1Ŭ���� ���� 
      lab2.start(); // lab2Ŭ���� ����
      
      //Date today = new Date();

      for(int i=0;i<10;i++) {
         System.out.println("number of milliseconds since Januart 1, 1970, 00:00:00 GMT");
         try {
            Thread.sleep(3000);
         } catch(Exception e ) { }
      }
      
   }
}

class Thread1 extends Thread {
  public void run() {
      Calendar cal = new GregorianCalendar();   
      int month = cal.get(Calendar.MONTH)+1;   
      int day = cal.get(Calendar.DATE);
      for(int i=0;i<3;i++) {
         System.out.println("������ "+ month +"�� "+ day +"�� �Դϴ�.");
         try {
            Thread.sleep(10000);
         } catch(Exception e ) { }
      }
   }
}

class Thread2 extends Thread {
   public void run() {   
      for(int i=0;i<5;i++) {
         Calendar cal = new GregorianCalendar();   
         int hour = cal.get(Calendar.HOUR_OF_DAY);
         int min = cal.get(Calendar.MINUTE);
         int sec = cal.get(Calendar.SECOND);
         System.out.println(hour+"�� "+min+"�� "+sec+"��");
         try {
            Thread.sleep(5000);
         } catch(Exception e ) { }
      }
   }
}