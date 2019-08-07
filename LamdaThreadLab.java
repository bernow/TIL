package lamdaexam;

import java.util.Calendar;
import java.util.GregorianCalendar;

class LamdaThreadLab {
   public static void main(String[] args) {
	   Thread t1 = new Thread(()->{
		   Calendar cal = new GregorianCalendar();   
		      int month = cal.get(Calendar.MONTH)+1;   
		      int day = cal.get(Calendar.DATE);
		      for(int i=0;i<3;i++) {
		         System.out.println("오늘은 "+ month +"월 "+ day +"일 입니다.");
		         try {	
		             Thread.sleep(10000);
		          } catch(Exception e ) {  
		          }
		      }
		   
	   });
	   Thread t2 = new Thread(()->{
		   for(int i=0;i<5;i++) {
				Calendar cal = new GregorianCalendar();   
		         int hour = cal.get(Calendar.HOUR_OF_DAY);
		         int min = cal.get(Calendar.MINUTE);
		         int sec = cal.get(Calendar.SECOND);
		         System.out.println(hour+"시 "+min+"분 "+sec+"초");
		         try {
		            Thread.sleep(5000);
		         } catch(Exception e ) { }
		      } 
	   });
		t1.start();
		t2.start();
		for(int i=0;i<10;i++) {
			try {
				Thread.sleep(3000);
			} catch (InterruptedException e) {
			}
			System.out.println(
					"number of milliseconds since January 1, 1970, 00:00:00 GMT");
		}
	}     
}