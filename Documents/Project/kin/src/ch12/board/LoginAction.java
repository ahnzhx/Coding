package ch12.board;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class LoginAction implements Action {
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException,IOException{
		String url="member2/login_failed.jsp";
		HttpSession session = request.getSession(); // 세션얻어오기
		String email = request.getParameter("email");
		String passwd = request.getParameter("passwd");
		
		LogonDBBean dao = LogonDBBean.getInstance();
		LogonDataBean memberVO=dao.getMember(email, passwd);
		
		if(memberVO!=null) {
			if(memberVO.getPasswd().equals(passwd)) {
				session.removeAttribute("email");
				session.setAttribute("loginUser", memberVO);
				url="ShopMallController?command=index";
			}
		}
		request.getRequestDispatcher(url).forward(request, response);
		
		
	}
}
