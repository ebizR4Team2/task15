package controller;

import java.util.Random;

import javax.servlet.http.HttpServletRequest;

public class ImportAction extends Action {
	public ImportAction() {
		
	}
	
	@Override
	public String getName() {
		return "import.do";
	}
	
	@Override
	public String perform(HttpServletRequest request) {
		return "import.jsp";
	}
}
