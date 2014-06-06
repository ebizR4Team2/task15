package controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map.Entry;

import javax.servlet.http.HttpServletRequest;
import javax.xml.parsers.ParserConfigurationException;

import org.xml.sax.SAXException;

import parser.MyZip;
import parser.XmlParser;

public class SaveAction extends Action {
	private static String filePath;
	@Override
	public String getName() {
		return "save.do";
	}

	@Override
	public String perform(HttpServletRequest request) {
		filePath = request.getSession().getServletContext().getRealPath("/")
				+ "form" + System.getProperty("file.separator");
		
		XmlParser xml = new XmlParser();
		try {
			xml.saveXml(request, "test.xml");
			
			if (request.getParameter("preview") != null) {
				ArrayList<File> list = new ArrayList<File>();
				MyZip zip = new MyZip("test.zip", request);
				list.add(new File(filePath + "test.xml"));
				list.add(new File(filePath + "style.css"));
				list.add(new File(filePath + "output.html"));
				File newZip = zip.compressFiles(list, filePath + "test.zip");
				System.out.println(newZip.getName());
				return newZip.getName();
			}
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return "page2.jsp";
	}

}
