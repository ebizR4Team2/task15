package controller;

import javax.servlet.http.HttpServletRequest;

public class ContinueAction extends Action {

	@Override
	public String getName() {
		return "continue.do";
	}

	@Override
	public String perform(HttpServletRequest request) {
		return "page2.jsp";
	}

}
