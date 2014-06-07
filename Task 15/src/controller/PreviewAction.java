package controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;

import parser.Html;
import parser.MyZip;
import parser.XmlParser;

public class PreviewAction extends Action {
	private static String filePath2;

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

		try {
			System.out.println(hp.get("nameofinstitution"));
			Html ht = new Html("output.html", request);

			
			if(hp.get("nameofinstitution") != null) {
				for (int i = 1; i <= 5; i++) {
					String nameString = "nameofinstitution" + i;
					hp.put(nameString, hp.get("nameofinstitution"));
				}
			}
			
			if (hp.get("JointPolicy") != null && hp.get("JointPolicy").equals("no")) {
				hp.put("JointPolicy", "");
			} else {
				hp.remove("JointPolicy");
			}
			
			if (hp.get("desotherimportinfo") != null && hp.get("desotherimportinfo").equals("no") ) {
				hp.put("desotherimportinfo", "");
			} else {
				hp.remove("desotherimportinfo");
			}
			
			if (hp.get("haveaffiliate") != null && hp.get("haveaffiliate").equals("no")) {
				hp.put("whoareyouraffiliates", "has no affiliates");
			} else if (hp.get("haveaffiliate") != null && hp.get("sharepersonalinfo") != null 
					&& hp.get("haveaffiliate").equals("yes") && hp.get("sharepersonalinfo").equals("no")) {
				String whoareyouraffiliates = hp.get("nameofinstitution") + " does not share with our affiliates";
				hp.put("whoareyouraffiliates", whoareyouraffiliates);
			}
			
			if (hp.get("sharepersonalinfononaffiliates") != null && hp.get("sharepersonalinfononaffiliates").equals("no")) {
				String whoareyournonaffiliates = hp.get("nameofinstitution") + " does not share with nonaffiliates so they can market to you";
				hp.put("whoareyournonaffiliates", whoareyournonaffiliates);
			} 
			
			if (hp.get("jointmarketing") != null && hp.get("jointmarketing").equals("no")) {
				String whoareyourmarketingpartners = hp.get("nameofinstitution") + " doesn't jointly market";
				hp.put("whoareyourmarketingpartners", whoareyourmarketingpartners);
			}
			
			if (hp.get("provideoptoutform") != null && hp.get("provideoptoutform").equals("no")) {
				System.out.println("provideoptoutform no");
				hp.put("provideoptoutform", "");
			} else if(hp.get("provideoptoutform") != null && hp.get("provideoptoutform").equals("yes")){
				
				System.out.println("provideoptoutform yes");
				hp.remove("provideoptoutform");
				
			}
			

			for (String key: hp.keySet()) {
				ht.setContent(key, hp.get(key));
			}
			
			//ht.setContent("nameofinstitution", hp.get("nameofinstitution"));
			ht.makeHtmlByDoc("output.html");
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		filePath2 = request.getSession().getServletContext().getRealPath("/")
				+ "form" + System.getProperty("file.separator");
		
		try {
			if (request.getParameter("saveforlater") != null) {
				ArrayList<File> list = new ArrayList<File>();
				MyZip zip = new MyZip("test.zip", request);
				list.add(new File(filePath2 + "test.xml"));
				File newZip = zip.compressFiles(list, filePath2 + "test.zip");
				return newZip.getName();
			}
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return "preview.jsp";
	}
}
