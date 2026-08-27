package command.member;

import java.security.NoSuchAlgorithmException;

import javax.servlet.http.HttpServletRequest;

import common.CommonExecute;
import common.CommonUtil;
import dao.MemberDao;
import dto.MemberDto;

public class MemberSave implements CommonExecute {

	@Override
	public void execute(HttpServletRequest request) {
		MemberDao dao = new MemberDao();
		String id 		= request.getParameter("t_id");
		String name 	= request.getParameter("t_name");
		String password = request.getParameter("t_password");
		String password_length =  Integer.toString(password.length());
		try {
			password = dao.encryptSHA256(password);
		} catch (NoSuchAlgorithmException e) {
			e.printStackTrace();
		}
		
		String email = request.getParameter("t_email");
		String nickname = request.getParameter("t_nickname");
		String grade = request.getParameter("t_grade");
		String reg_date = CommonUtil.getTodayTime();

		MemberDto dto = new MemberDto(id, name, password, password_length, email, nickname, grade, reg_date, "update_date", "exit_date");
		int result = dao.memberSave(dto);
		String msg = result==1 ? name+"님 회원가입 되었습니다.":"회원가입 실패!";
		request.setAttribute("t_msg", msg);
		request.setAttribute("t_url", "Member");
		
		
	}

}
