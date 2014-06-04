package parser;

import java.io.File;
import java.io.IOException;

import org.apache.commons.io.FileUtils;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

public class Html {
	// http://www.oschina.net/p/jsoup
	private Document doc;
	private Elements elements;
	private static String filePath = System.getProperty("user.dir") +System.getProperty("file.separator")
			+"form";

	public Html(String fileName) throws IOException {
		File input = new File( filePath + fileName);
		this.doc = Jsoup.parse(input, "UTF-8");
		this.elements = doc.getAllElements();
		for (Element elm : elements) {
			System.out.println(elm);
		}
	}
	
	/**
	 * Set content of certain element according to element id;
	 * ID must be the direct element you want to change
	 * @param id element unique id you want to change its content
	 * @param content the content you want to fill with
	 */
	public void setContent(String id, String content) {
		Element element = doc.getElementById(id);
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
	
	public static void main(String[] args) throws IOException {
		Html html = new Html("index.html");
		html.setContent("test", "hahhaha");
		html.makeHtmlByDoc("test.html");
	}
}
