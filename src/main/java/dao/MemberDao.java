package dao;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import common.DBConnection;
import dto.MemberDto;

public class MemberDao {
	Connection 		 con = null;
	PreparedStatement ps = null;
	ResultSet         rs = null;
	
	

	
	//아이디 중복 검사
	public int checkId(String id) {
		int count = 0;
		String sql ="select count(*) as count\r\n"
				+ "from my_임정규_member\r\n"
				+ "where id = '"+id+"'";
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



	//회원등록
	// 회원등록
		public int memberSave(MemberDto dto) {
			int result = 0;
			String sql ="insert into my_임정규_member\r\n"
					+ "(id,name,password,password_length,email,nickname,grade,reg_date)\r\n"
					+ "values\r\n"
					+ "('"+dto.getId()+"','"+dto.getName()+"','"+dto.getPassword()+"','"+dto.getPassword_length()+"','"+dto.getEmail()+"','"+dto.getNickname()+"','"+dto.getGrade()+"',sysdate)";
		   try {
				con = DBConnection.getConnection();
				ps  = con.prepareStatement(sql);
				result = ps.executeUpdate();
			}catch(Exception e) {
				System.out.println("memberSave() 오류:"+sql);
				e.printStackTrace();
			}finally {
				DBConnection.closeDB(con, ps, rs);
			}			
			return result;
		}



		//로그인
	public String getLoginName(String id, String password) {
		String name ="";
		String sql  ="select name\r\n"
				+ "from my_임정규_member\r\n"
				+ "where id ='"+id+"'\r\n"
				+ "and password ='"+password+"'";
		try {
			con = DBConnection.getConnection();
			ps  = con.prepareStatement(sql);
			rs  = ps.executeQuery();	
			if(rs.next()){
				name = rs.getString("name");
			}
		}catch(Exception e) {
			System.out.println("getLoginName() 오류:"+sql);
			e.printStackTrace();
		}finally {
			DBConnection.closeDB(con, ps, rs);
		}			
		return name;
	}


	//내 정보
	public MemberDto getMemberInfo(String id) {
		MemberDto dto = null;
		String sql ="select id, name, password, password_length, email, nickname, grade,\r\n"
				+ "        to_char(reg_date,'yyyy-MM-dd hh24:mi:ss') as reg_date,\r\n"
				+ "        to_char(update_date,'yyyy-MM-dd hh24:mi:ss') as update_date,\r\n"
				+ "        to_char(exit_date,'yyyy-MM-dd hh24:mi:ss') as exit_date\r\n"
				+ "from my_임정규_member\r\n"
				+ "where id = '"+id+"'";
		try {
			con = DBConnection.getConnection();
			ps  = con.prepareStatement(sql);
			rs  = ps.executeQuery();	
			if(rs.next()){		
				//String   = rs.getString("id");
				String name 		= rs.getString("name");
				String password 	= rs.getString("password");
	            String password_length = rs.getString("password_length");
	            String email 		= rs.getString("email");
	            String nickname 	= rs.getString("nickname");
	            String grade 		= rs.getString("grade");
	            String reg_date 	= rs.getString("reg_date");
	            String update_date 	= rs.getString("update_date");
	            String exit_date 	= rs.getString("exit_date");	
	            dto = new MemberDto(id, name, password, password_length, email, nickname, grade, reg_date, update_date, exit_date);
	            		
				
			}
		}catch(Exception e) {
			System.out.println("getMemberInfo() 오류:"+sql);
			e.printStackTrace();
		}finally {
			DBConnection.closeDB(con, ps, rs);
		}		
		return dto;
	}


	//멤버 수정 저장
	public int memberUpdate(MemberDto dto) {
		int result = 0;
		String sql = "update my_임정규_member\r\n"
				+ "set id = '"+dto.getId()+"',\r\n"
				+ "    name = '"+dto.getName()+"',\r\n"
				+ "    password = '"+dto.getPassword()+"',\r\n"
				+ "    email = '"+dto.getEmail()+"',\r\n"
				+ "    nickname = '"+dto.getNickname()+"',\r\n"
				+ "    grade = '"+dto.getGrade()+"',\r\n"
				+ "    update_date = to_date('"+dto.getUpdate_date()+"','yyyy-MM-dd hh24:mi:ss')\r\n"
				+ "where id = '"+dto.getId()+"'";
		
		try {
			con = DBConnection.getConnection();
			ps  = con.prepareStatement(sql);
			result = ps.executeUpdate();
			
		
		}catch(Exception e) {
			System.out.println("memberUpdate() 오류:"+sql);
			e.printStackTrace();
		}finally {
			DBConnection.closeDB(con, ps, rs);
		}	
		
		
		return result;
	}


	//비밀번호 암호화
	public String encryptSHA256(String value) throws NoSuchAlgorithmException{
		String encryptData ="";
		
		MessageDigest sha = MessageDigest.getInstance("SHA-256");
		sha.update(value.getBytes());
		
		byte[] digest = sha.digest();
		for (int i=0; i<digest.length; i++) {
		   encryptData += Integer.toHexString(digest[i] &0xFF).toUpperCase();
		}
		return encryptData;
    }



	//비밀번호 검사
	public int getCheckPassword(String id, String password) {
		int count = 0;
		String sql = "select count(*) as count\r\n"
				+ "		from my_임정규_member\r\n"
				+ "		where id = '"+id+"'\r\n"
				+ "		and password = '"+password+"'";

		
		try {
			con = DBConnection.getConnection();
			ps  = con.prepareStatement(sql);
			rs  = ps.executeQuery();	
			if(rs.next()){		
				count = rs.getInt("count");
				
			}
		}catch(Exception e) {
			System.out.println("getCheckPassword() 오류:"+sql);
			e.printStackTrace();
		}finally {
			DBConnection.closeDB(con, ps, rs);
		}	
		
		return count;
	}

}
