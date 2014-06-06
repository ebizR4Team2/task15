package controller;

import java.io.File;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;

import parser.XmlParser;

public class IndexAction extends Action {
	public IndexAction() {
		
	}
	
	@Override
	public String getName() {
		return "index.do";
	}
	
	@Override
	public String perform(HttpServletRequest request) {
		XmlParser xml = new XmlParser();
		try {
			File newXmlFile = xml.saveXml(request, "test.xml");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "index.jsp";
	}
}
