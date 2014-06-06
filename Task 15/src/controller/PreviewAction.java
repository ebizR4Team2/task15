package controller;

import java.io.File;

import javax.servlet.http.HttpServletRequest;

import parser.XmlParser;

public class PreviewAction extends Action {

	@Override
	public String getName() {
		return "preview.do";
	}

	@Override
	public String perform(HttpServletRequest request) {
//		
//		XmlParser xml = new XmlParser();
//		File newXmlFile = xml.saveXml(request, "test.xml");
//		HashMap = xml.importXml(newXmlFile);
		
		StringBuffer filePath = request.getRequestURL();
		
		int index = filePath.length()-1;
		while (filePath.charAt(index) != '/') {
			index--;
		}
		filePath.replace(index+1, filePath.length(), "form/output.html");
		request.setAttribute("previewUrl", filePath);
		
		return "preview.jsp";
	}

}
