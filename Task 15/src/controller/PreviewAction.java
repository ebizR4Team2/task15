package controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.apache.commons.lang3.StringEscapeUtils;
import org.apache.taglibs.standard.lang.jstl.NullLiteral;

import parser.Html;
import parser.MyZip;
import parser.XmlParser;

public class PreviewAction extends Action {
	private static String filePath2;		// path in server

	@Override
	public String getName() {
		return "preview.do";
	}

	@Override
	public String perform(HttpServletRequest request) {
		String userid = (String) request.getSession().getAttribute("userid");
		XmlParser xml = new XmlParser();
		File newXmlFile;
		HashMap<String, String> hp = new HashMap<String, String>();
		try {
			newXmlFile = xml.saveXml(request, userid + "temp.xml");
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
		filePath.replace(index+1, filePath.length(), "form/" + userid + "output.html");
		request.setAttribute("previewUrl", filePath);

		try {
			System.out.println(hp.get("nameofinstitution"));
			Html ht = new Html("output.html", request);

			
			if(hp.get("nameofinstitution") != null) {
				for (int i = 1; i <= 4; i++) {
					String nameString = "nameofinstitution" + i;
					hp.put(nameString, hp.get("nameofinstitution"));
				}
			}
			
			if(hp.get("memberorcustomer") != null) {
				hp.put("memberorcustomer1", hp.get("memberorcustomer"));
			}
			
			if (hp.get("phoneNumber") != null) {
				hp.put("phoneNumber1", hp.get("phoneNumber"));
			}
			
//			if (hp.get("JointPolicy") != null && hp.get("JointPolicy").equals("no")) {
//				//hp.put("JointPolicy", "");
//				ht.removeRow("JointPolicy_row");
//			}  
			
			
			ht.generateLink("optoutonlineform", userid + "optout_online.html", "opt out form");
			ht.generateLink("optoutonlineform1", userid + "optout_online.html", "opt out form");
			
			
			/**
			 * Share information table
			 * */
			
			if (hp.get("EverydayBusiness") != null && hp.get("EverydayBusiness").equals("No")) {
				hp.put("EverydayBusiness_limit", "We do not share");
			}
			
			if (hp.get("marketpurpose") != null && hp.get("marketpurpose").equals("No")) {
				hp.put("marketpurpose_limit", "We do not share");
			}
			
			if (hp.get("jointmarket") != null && hp.get("jointmarket").equals("No")) {
				hp.put("jointmarket_limit", "We do not share");
			}
			
			if (hp.get("affeverydaybusi") != null && hp.get("affeverydaybusi").equals("No")) {
				hp.put("affeverydaybusi_limit", "We do not share");
			}
			
			if (hp.get("creditworth") != null && hp.get("creditworth").equals("No")) {
				hp.put("creditworth_limit", "We do not share");
			}
			
			if (hp.get("creditworth") != null && hp.get("creditworth").equals("Yes")) {
				hp.put("creditworth_limit", "Yes");
			}

			
			if (hp.get("afftomarket") != null && hp.get("afftomarket").equals("No")) {
				hp.put("afftomarket_limit", "We do not share");
			}
			
			if (hp.get("nonafftomarket") != null && hp.get("nonafftomarket").equals("No")) {
				hp.put("nonafftomarket_limit", "We do not share");
			}
			
			
			/**
			 *  Definition table
			 * */
			
			if (hp.get("desotherimportinfo") != null && hp.get("desotherimportinfo").equals("no") ) {
				hp.put("desotherimportinfo", "");
			} else {
				hp.remove("desotherimportinfo");
			}
			
			if (hp.get("haveaffiliate") != null && hp.get("haveaffiliate").equals("no")) {
				hp.put("whoareyouraffiliates", hp.get("nameofinstitution") + " has no affiliates");
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
			
			/**
			 * display what kinds of opt-out form
			 * */
			
			if (hp.get("opt-out-mail") == null) {
				hp.put("provideoptoutform", "");
			} else if(hp.get("provideoptoutform") != null && hp.get("provideoptoutform").equals("mail")){
				hp.remove("provideoptoutform");
			}
			
			if (hp.get("additionalinfoacct") != null && hp.get("additionalinfoacct").equals("yes")) {
				hp.put("additionalinfoacct_opt", "Account#");
			}
			
			/**
			 * opt-out options
			 * */
			
			if (hp.get("whathappenlimitsharing") != null && hp.get("whathappenlimitsharing").equals("yes")) {
				hp.put("whathappenlimitsharing", "Your choices will apply to everyone on the account - unless you tell us otherwise");
				hp.put("optout_whathappenlimitsharing", "If you have a joint account, your choice(s) will apply to everyone on your account unless you mark below " + StringEscapeUtils.unescapeHtml4("&#x25a2;") + "Apply my choices only to me");
			}
			
			if (hp.get("whathappenlimitsharing") != null && hp.get("whathappenlimitsharing").equals("no")) {
				hp.put("whathappenlimitsharing", "Your choices apply to everyone on the account");
			}
			
			
			if (hp.get("creditworth_limit") != null && hp.get("creditworth_limit").equals("Yes")) {
				hp.put("optout_creditworth_limit", StringEscapeUtils.unescapeHtml4("&#x25a2;")+" Do not share information about my creditworthiness with your affiliates for their everyday business purposes.");
			}
			
			if (hp.get("afftomarket_limit") != null && hp.get("afftomarket_limit").equals("Yes")) {
				hp.put("optout_afftomarket_limit", StringEscapeUtils.unescapeHtml4("&#x25a2;")+" Do not allow your affiliates to use my personal information to market to me.");
			}
			
			if (hp.get("nonafftomarket_limit") != null && hp.get("nonafftomarket_limit").equals("Yes")) {
				hp.put("optout_nonafftomarket_limit", StringEscapeUtils.unescapeHtml4("&#x25a2;")+" Do not share my personal information with nonaffiliates to market their products and services to me.");
			}
			
			if (hp.get("marketpurpose_limit") != null && hp.get("marketpurpose_limit").equals("Yes")) {
				hp.put("optout_marketpurpose_limit", StringEscapeUtils.unescapeHtml4("&#x25a2;")+" Do not share my personal information to market to me.");
			}
			
			if (hp.get("jointmarket_limit") != null && hp.get("jointmarket_limit").equals("Yes")) {
				
				hp.put("optout_jointmarket_limit", StringEscapeUtils.unescapeHtml4("&#x25a2;")+" Do not share my personal information with other financial institutions to jointly market to me.");
			}
			
			/**
			 * Other info
			 * */
			
			if (hp.get("statelawsbelow") != null && hp.get("statelawsbelow").equals("")) {
				hp.put("statelawsbelow_div", "");
			}
			
			
			/**
			 * Set content
			 * */

			for (String key: hp.keySet()) {
				ht.setContent(key, hp.get(key));
			}
			ht.makeHtmlByDoc(userid + "output.html");
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		filePath2 = request.getSession().getServletContext().getRealPath("/")
				+ "form" + System.getProperty("file.separator") + userid;
		
		try {
			if (request.getParameter("saveforlater") != null) {
				ArrayList<File> list = new ArrayList<File>();
				MyZip zip = new MyZip(userid + "temp.zip", request);
				list.add(new File(filePath2 + "temp.xml"));
				File newZip = zip.compressFiles(list, filePath2 + "temp.zip");
				return newZip.getName();
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return "preview.jsp";
	}
}
