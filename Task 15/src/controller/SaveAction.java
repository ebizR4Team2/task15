package controller;

import java.io.File;
import java.io.IOException;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map.Entry;

import javax.servlet.http.HttpServletRequest;
import javax.xml.parsers.ParserConfigurationException;

import org.xml.sax.SAXException;

import parser.XmlParser;

public class SaveAction extends Action {
	private static String filePath = System.getProperty("user.dir").replace("bin", "webapps") + System.getProperty("file.separator")
			+"form" + System.getProperty("file.separator");
	@Override
	public String getName() {
		return "save.do";
	}

	@Override
	public String perform(HttpServletRequest request) {
		if (request.getParameter("saveforlater") != null) {
			return "test.xml";
		}
		
		return "page2.jsp";
	}

}
