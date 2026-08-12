package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import common.DBConnection;

public class MemberDao {
	Connection 		 con = null;
	PreparedStatement ps = null;
	ResultSet         rs = null;
	
	

	
	//아이디 중복 검사
	public int checkId(String id) {
		int count = 0;
		String sql ="select count(*) as count \r\n"
				+ "		from my_임정규_member \r\n"
				+ "		where id = '"+id+"'";
	   try {
			con = DBConnection.getConnection();
			ps  = con.prepareStatement(sql);
			rs  = ps.executeQuery();	
			if(rs.next()) {
				count = rs.getInt("count");
			}
		}catch(Exception e) {
			System.out.println("checkId() 오류:"+sql);
			e.printStackTrace();
		}finally {
			DBConnection.closeDB(con, ps, rs);
		}		
		return count;
		
	}

}
