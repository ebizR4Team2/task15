package controller;

import javax.servlet.http.HttpServletRequest;

public class PreviewAction extends Action {

	@Override
	public String getName() {
		return "preview.do";
	}

	@Override
	public String perform(HttpServletRequest request) {
		
		
		
		return "preview.jsp";
	}

}
