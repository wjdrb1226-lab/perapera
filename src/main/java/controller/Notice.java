package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import command.notice.NoticeDelete;
import command.notice.NoticeSave;
import command.notice.NoticeUpdate;
import command.notice.NoticeView;
import command.notice.Noticelist;
import common.CommonExecute;
import common.CommonUtil;

/**
 * Servlet implementation class Notice
 */
@WebServlet("/Notice")
public class Notice extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Notice() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String gubun = request.getParameter("t_gubun");
		//System.out.println("Notice t_gubun = [" + gubun + "]");
		String viewPage ="";
		
		if(gubun == null) gubun="notice";
		
		
		//목록
		if(gubun.equals("notice")) {
			CommonExecute noti = new Noticelist();
			noti.execute(request);
			viewPage = "notice/notice_list.jsp";
		} else if(gubun.equals("writeForm")) {
			
			request.setAttribute("toDay", CommonUtil.getToday());
			viewPage = "notice/notice_write.jsp";
			
		//공지 등록 저장
		}else if(gubun.equals("save")) {
			CommonExecute noti = new NoticeSave();
			noti.execute(request);
			viewPage ="common_alert.jsp";
		
			//상세조회
		}else if(gubun.equals("view")) {
			CommonExecute noti = new NoticeView();
			noti.execute(request);
			viewPage = "notice/notice_view.jsp";
			//수정폼
		}else if(gubun.equals("updateForm")) {
			CommonExecute noti = new NoticeView();
			noti.execute(request);
			viewPage = "notice/notice_update.jsp";
			//수정
		}else if(gubun.equals("update")) {
			CommonExecute noti = new NoticeUpdate();
			noti.execute(request);
			viewPage = "common_alert_view.jsp";
			//삭제
		}else if(gubun.equals("delete")) {
			CommonExecute noti = new NoticeDelete();
			noti.execute(request);
			viewPage = "common_alert.jsp";
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
