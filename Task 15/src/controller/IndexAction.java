package controller;

import java.util.Random;

import javax.servlet.http.HttpServletRequest;

public class IndexAction extends Action {
	public IndexAction() {
		
	}
	
	@Override
	public String getName() {
		return "index.do";
	}
	
	@Override
	public String perform(HttpServletRequest request) {
		return "index.jsp";
	}
}
