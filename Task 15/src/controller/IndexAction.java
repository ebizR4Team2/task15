package controller;

import java.util.Random;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

public class IndexAction extends Action {
	private static long userid = 0;
	public IndexAction() {
	}
	
	@Override
	public String getName() {
		return "index.do";
	}
	
	@Override
	public String perform(HttpServletRequest request) {
		HttpSession session = request.getSession();
		if (session.getAttribute("userid") == null) {
			userid++;
			session.setAttribute("userid", Long.toString(userid));
		}
		return "index.jsp";
	}
}
