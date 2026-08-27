package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import command.member.MemberLogin;
import command.member.MemberLogout;
import command.member.MemberMyinfo;
import command.member.MemberSave;
import command.member.MemberUpdate;
import common.CommonExecute;

/**
 * Servlet implementation class Member
 */
@WebServlet("/Member")
public class Member extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Member() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String gubun = request.getParameter("t_gubun");
		String viewPage ="";
		
		if(gubun == null) gubun="login";
		
		if(gubun.equals("login")) {
			viewPage ="member/member_login.jsp";
			
		} else if(gubun.equals("join")) {
			viewPage ="member/member_join.jsp";
		
		//회원등록
		} else if(gubun.equals("memberSave")) {
			CommonExecute mem = new MemberSave();
			mem.execute(request);
			viewPage ="common_alert.jsp";
		
		//회원로그인
		} else if(gubun.equals("memberLogin")) {	
			CommonExecute mem = new MemberLogin();
			mem.execute(request);
			viewPage ="common_alert.jsp";

		//로그아웃
		}else if(gubun.equals("logout")) {	
			CommonExecute mem = new MemberLogout();
			mem.execute(request);
			viewPage ="common_alert.jsp";
		
		//내정보
		}else if(gubun.equals("myinfo")) {   
	         
	         String id = (String)request.getSession().getAttribute("sessionId");
	         if(id==null) {
	            String msg ="로그인 정보가 만료되었습니다.";
	            request.setAttribute("t_msg", msg);
	            request.setAttribute("t_url", "Member");
	            viewPage = "common_alert.jsp";
	         } else {
	         CommonExecute mem = new MemberMyinfo();
	         mem.execute(request);
	         viewPage ="member/member_mypage.jsp";
	      }
	    
	         //내정보 수정폼	
		}else if(gubun.equals("myinfoUpdate")){
			 String id = (String)request.getSession().getAttribute("sessionId");
	         if(id==null) {
	            String msg ="로그인 정보가 만료되었습니다.";
	            request.setAttribute("t_msg", msg);
	            request.setAttribute("t_url", "Member");
	            viewPage = "common_alert.jsp";
	         } else {
	         CommonExecute mem = new MemberMyinfo();
	         mem.execute(request);
	         viewPage ="member/member_update.jsp";
	      }
		
	    //내 정보 수정 저장
		}else if(gubun.equals("memberUpdate")) {
			CommonExecute mem = new MemberUpdate();
	    	mem.execute(request);
	    	viewPage = "common_alert_view.jsp";
		}
		
		
		
		
		RequestDispatcher rd = request.getRequestDispatcher(viewPage);
		rd.forward(request, response);
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
