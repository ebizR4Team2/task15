package controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.apache.commons.lang3.StringEscapeUtils;

import parser.Html;
import parser.MyZip;
import parser.XmlParser;

public class DownloadAction extends Action {
	private static String filePath;		// path in server

	@Override
	public String getName() {
		return "download.do";
	}

	@Override
	public String perform(HttpServletRequest request) {
		filePath = request.getSession().getServletContext().getRealPath("/")
				+ "form" + System.getProperty("file.separator");
		String userid = (String) request.getSession().getAttribute("userid");;
		try {
			ArrayList<File> list = new ArrayList<File>();
			MyZip zip = new MyZip(userid + "temp.zip", request);
			list.add(new File(filePath + userid + "temp.xml"));
			list.add(new File(filePath + userid + "output.html"));
			list.add(new File(filePath + "style.css"));
			File newZip = zip.compressFiles(list, filePath + userid + "temp.zip");
			return newZip.getName();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return "preview.jsp";
	}
}