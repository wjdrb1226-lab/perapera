package command.member;

import java.security.NoSuchAlgorithmException;

import javax.servlet.http.HttpServletRequest;

import common.CommonExecute;
import common.CommonUtil;
import dao.MemberDao;
import dto.MemberDto;

public class MemberUpdate implements CommonExecute {

	@Override
	public void execute(HttpServletRequest request) {
		MemberDao dao = new MemberDao();
		String id 		= request.getParameter("t_id");
		String name 	= request.getParameter("t_name");
		String password = request.getParameter("t_password"); // "1234"
//		String password_length =  Integer.toString(password.length());
//		try {
//			password = dao.encryptSHA256(password);
//		} catch (NoSuchAlgorithmException e) {
//			e.printStackTrace();
//		}
//		
		String email 	= request.getParameter("t_email");
		String nickname 	= request.getParameter("t_nickname");
		String grade 	= request.getParameter("t_grade");
		String update_date = CommonUtil.getTodayTime();
		
		MemberDto dto = new MemberDto(id, name, password, "", email, nickname, grade, "", update_date, "");
		int result = dao.memberUpdate(dto);
		String msg = result == 1? "수정 성공":"수정 실패";
		request.setAttribute("t_msg", msg);
		request.setAttribute("t_url", "Member");
		request.setAttribute("t_gubun", "myinfo");
		request.setAttribute("t_id", id);
		
	}

}
