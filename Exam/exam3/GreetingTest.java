package exam3;

import java.time.LocalTime;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Component;

public class GreetingTest {

	public static void main(String[] args) {
		ApplicationContext factory = 
				new ClassPathXmlApplicationContext("exam3/app.xml");
		
		LocalTime localTime = factory.getBean("locatime", LocalTime.class);
		int hour = localTime.getHour();
		
		if(6<=hour && 12>hour) {
			factory.getBean("morning", MorningGreetingImpl.class).greet();
		} else if(12<=hour && 17>hour) {
			factory.getBean("afternoon", AfternoonGreetingImpl.class).greet();
		} else if(17<=hour && 22>hour) {
			factory.getBean("evening", EveningGreetingImpl.class).greet();
		} else {
			factory.getBean("night", NightGreetingImpl.class).greet();
		} ((ClassPathXmlApplicationContext)factory).close();
		/*
		 * Greeting greeting; 
		 * if(6<=hour && 12>hour) {
		 * 	greeting = (Greeting)factory.getBean("morningGreeting", MorningGreetingImpl.class);
		 *  } else if(12<=hour && 17>hour) { 
		 * greeting = (Greeting)factory.getBean("afternoonGreeting", AfternoonGreetingImpl.class); 
		 * } else if(17<=hour && 22>hour) {
		 * greeting = (Greeting)factory.getBean("eveningGreeting", EveningGreetingImpl.class); 
		 * } else { 
		 * greeting = (Greeting)factory.getBean("nightGreeting", NightGreetingImpl.class);
		 * }
		 * greeting.greet();
		 * ((ClassPathXmlApplicationContext)factory).close();
		 */
	}

}
