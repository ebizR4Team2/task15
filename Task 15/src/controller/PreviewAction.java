package controller;

import java.io.File;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import parser.XmlParser;

public class PreviewAction extends Action {

	@Override
	public String getName() {
		return "preview.do";
	}

	@Override
	public String perform(HttpServletRequest request) {
		
		XmlParser xml = new XmlParser();
		File newXmlFile;
		HashMap<String, String> hp = new HashMap<String, String>();
		try {
			newXmlFile = xml.saveXml(request, "test.xml");
			hp = xml.importXml(newXmlFile);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		System.out.println(hp.size());
		
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
