package dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import vo.OnePersonVO;

@Repository
public class OnePersonDAO {
	@Autowired
	@Qualifier("hiveDataSource")	
	DataSource ds;
	
	public List<OnePersonVO> ordernum() {
		List<OnePersonVO> list = new ArrayList<>();
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;
		try {
			conn = ds.getConnection();
			stmt = conn.createStatement();
			rs = stmt.executeQuery("select * from oneperson order by num desc");
			OnePersonVO vo = null;
			while(rs.next()) {
				vo = new OnePersonVO();
				vo.setArea1(rs.getString(1));
				vo.setArea2(rs.getString(2));
				vo.setNum(rs.getInt(3));
				list.add(vo);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if( rs != null ) rs.close();
				if( stmt != null ) stmt.close();
				if( conn != null ) conn.close();
			} catch (Exception e) {
				e.printStackTrace();				
			} 
		}
		return list;		
	}
	
	public List<OnePersonVO> grouparea1() {
		List<OnePersonVO> list = new ArrayList<>();
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;
		try {
			conn = ds.getConnection();
			stmt = conn.createStatement();
			rs = stmt.executeQuery("select area1 , sum(num) from oneperson group by area1");
			OnePersonVO vo = null;
			while(rs.next()) {
				vo = new OnePersonVO();
				vo.setArea1(rs.getString(1));
				vo.setNum(rs.getInt(2));
				list.add(vo);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if( rs != null ) rs.close();
				if( stmt != null ) stmt.close();
				if( conn != null ) conn.close();
			} catch (Exception e) {
				e.printStackTrace();				
			} 
		}
		return list;		
	}
	
	public OnePersonVO maxnum() {
		OnePersonVO vo = null;
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;
		try {
			conn = ds.getConnection();
			stmt = conn.createStatement();
			rs = stmt.executeQuery("select * from oneperson order by num desc limit 1");
			
			while(rs.next()) {
				vo = new OnePersonVO();
				vo.setArea1(rs.getString(1));
				vo.setArea2(rs.getString(2));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if( rs != null ) rs.close();
				if( stmt != null ) stmt.close();
				if( conn != null ) conn.close();
			} catch (Exception e) {
				e.printStackTrace();				
			} 
		}
		return vo;		
	}
	
	public List<OnePersonVO> search(String key) {
		List<OnePersonVO> list = new ArrayList<>();
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;
		try {
			conn = ds.getConnection();
			stmt = conn.createStatement();
			rs = stmt.executeQuery("select * from oneperson where area1 like '%"+key+"%'");
			OnePersonVO vo = null;
			while(rs.next()) {
				vo = new OnePersonVO();
				vo.setArea1(rs.getString(1));
				vo.setArea2(rs.getString(2));
				vo.setNum(rs.getInt(3));
				list.add(vo);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if( rs != null ) rs.close();
				if( stmt != null ) stmt.close();
				if( conn != null ) conn.close();
			} catch (Exception e) {
				e.printStackTrace();				
			} 
		}
		return list;		
	}
}
