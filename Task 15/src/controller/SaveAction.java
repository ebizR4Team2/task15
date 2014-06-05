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
		XmlParser xml = new XmlParser();
		String newXmlFile = xml.saveXml(request, "test.xml");
		HashMap<String, String> map;	// test of import
		try {
			map = xml.importXml(new File(request.getSession().getServletContext().getRealPath("/") + "test.xml"));
			Iterator itr = map.entrySet().iterator();
			while (itr.hasNext()) {
				Entry entry = (Entry) itr.next();
				System.out.println(entry.getKey() + ": " + entry.getValue());
			}
		} catch (ParserConfigurationException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SAXException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return "page2.jsp";
	}

}
