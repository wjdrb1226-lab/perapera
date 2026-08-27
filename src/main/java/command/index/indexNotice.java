package command.index;

import javax.servlet.http.HttpServletRequest;

import common.CommonExecute;
import dao.NoticeDao;
import dto.NoticeDto;

public class indexNotice implements CommonExecute {

	@Override
	public void execute(HttpServletRequest request) {
		NoticeDao dao = new NoticeDao();
		//String no = request.getParameter("t_no");
		
		NoticeDto dto = dao.indexNotice();
		
		
		
		request.setAttribute("nDto", dto);
	}

}
