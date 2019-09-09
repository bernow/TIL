package service;

import java.io.BufferedWriter;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStreamWriter;

import org.rosuda.REngine.REXP;
import org.rosuda.REngine.REXPMismatchException;
import org.rosuda.REngine.RList;
import org.rosuda.REngine.Rserve.RConnection;
import org.rosuda.REngine.Rserve.RserveException;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Service;

@Service
public class ScrapingScheduler {
	@Scheduled(fixedDelay = 600000)
	public static void scheduleRun() throws RserveException, REXPMismatchException, IOException {
		RConnection rc =new RConnection();
		REXP x = rc.eval("daumnews <- source('c:/Rstudy/news.R'); daumnews$value");
		RList list =x.asList();
		
		String[] newstitle = list.at("newstitle").asStrings();
		String[] newspapername = list.at("newspapername").asStrings();
		String[] datetime = list.at("datetime").asStrings();
		BufferedWriter writer = new BufferedWriter(new OutputStreamWriter(
	            new FileOutputStream("C:/Rstudy/daumnews_schedule.csv",true),"CP949"));

	      for(int i=0;i<newstitle.length;i++) {
	         writer.write(newstitle[i]+","+newspapername[i]+","+datetime[i]);
	         writer.newLine();
	      }
	      writer.close();
	      
		for(int i = 0; i < newstitle.length; i++) {
			System.out.print("뉴스제목 : " + newstitle[i]);
			System.out.println("신문사명 : " + newspapername[i]);
			System.out.println("날짜 : " + datetime[i]);
			}
		rc.close();
	}
	public static void main(String[] args) throws RserveException, REXPMismatchException, IOException {
	      ScrapingScheduler.scheduleRun();
	   }

}
