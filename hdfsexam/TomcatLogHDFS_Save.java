package hdfsexam;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.OutputStreamWriter;
import java.io.PrintWriter;

import org.apache.hadoop.conf.Configuration;
import org.apache.hadoop.fs.FSDataOutputStream;
import org.apache.hadoop.fs.FileSystem;
import org.apache.hadoop.fs.Path;

public class TomcatLogHDFS_Save {
	public static final String PATH =
	 "C:\\hsj\\자바\\eclipse-workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\logs";
	public static void main(String[] args) {

		BufferedReader in = null;
		PrintWriter out = null;
		try {
			File folder = new File(PATH);
			File[] listFile = folder.listFiles();
			out = new PrintWriter(new FileWriter(
					"C:\\hsj\\자바\\eclipse-workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\logs\\tomcat_access_log.txt"));
			String line = null;
			for (File file : listFile) {
				in = new BufferedReader(new FileReader(file));
				while ((line = in.readLine()) != null) {
					out.write(line);
					out.println();
					System.out.println(line);
				}
			}
		} catch (Exception ex) {
			System.out.println(ex + "오류발생");
		} finally {
			if (in != null) {
				try {
					in.close();
				} catch (Exception e) {
				}
			}
			if (out != null) {
				try {
					out.close();
				} catch (Exception e) {

				}
			}
		}

		try {
			Configuration conf = new Configuration();
			conf.set("fs.defaultFS", "hdfs://192.168.111.120:9000");
			FileSystem hdfs = FileSystem.get(conf);
			String fname = "tomcat_access_log.txt";
			File f = new File(
					"C:\\hsj\\자바\\eclipse-workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\logs\\"
							+ fname);
			if (!f.exists()) {
				System.out.println("파일이 없음!!");
				return;
			}
			Path path = new Path("/edudata/" + fname);
			if (hdfs.exists(path)) {
				hdfs.delete(path, true);
			}
			long size = f.length();
			FileReader fr = new FileReader(f);
			char[] content = new char[(int) size];
			fr.read(content);
			FSDataOutputStream outStream = hdfs.create(path);
			BufferedWriter writer = new BufferedWriter(new OutputStreamWriter(outStream));
			writer.write(content);
			writer.close();
			outStream.close();
			fr.close();
			System.out.println(size + " 크기의 데이터 출력 완료!!");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
