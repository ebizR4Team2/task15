package parser;

import java.io.File;
import java.io.IOException;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.io.FileUtils;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

public class Html {
	// http://www.oschina.net/p/jsoup
	private Document doc;
	private Elements elements;
	private static String filePath;

	public Html(String fileName, HttpServletRequest request) throws IOException {
		filePath = request.getSession().getServletContext().getRealPath("/") + "form" + System.getProperty("file.separator");
		File input = new File(filePath + fileName);
		this.doc = Jsoup.parse(input, "UTF-8");
		this.elements = doc.getAllElements();
	}
	
	/**
	 * Set content of certain element according to element id;
	 * ID must be the direct element you want to change;
	 * Make sure use this.makeHtmlByDoc to save the change
	 * @param id element unique id you want to change its content
	 * @param content the content you want to fill with
	 */
	public void setContent(String id, String content) {
		if (id == null || id.isEmpty()) {
			return;
		}
		Element element = doc.getElementById(id);
		if (element == null) {
			return;
		}
		element.empty(); // remove original content
		element.appendText(content);
	}
	
	/**
	 * generate a link after the given element
	 * @param id the id of place you want to append the link
	 * @param link the url of link
	 * @param text the dsiplay text of the link
	 * @return
	 */
	public String generateLink(String id, String link, String text) {
		Element element = doc.getElementById(id);
		element.appendText("<a href=\"" + filePath + link + "\" target=\"_blank\">" + text
				+ "</a>");
		return id;
	}

	/**
	 * generate the html file in server according to given fileName;
	 * the file will be scored in the folder "web"
	 * @param fileName
	 * @return
	 */
	public boolean makeHtmlByDoc(String fileName) {
		try {
			String html = doc.html();
			html = html.replaceAll("\n", "\r\n");
			FileUtils.writeStringToFile(new File(filePath + fileName), html,
					"UTF-8");
		} catch (IOException e) {
			System.out.println("error generating " + filePath + fileName);
			return false;
		}
		System.out.println("gererated: " + filePath + fileName);
		return true;
	}
}
