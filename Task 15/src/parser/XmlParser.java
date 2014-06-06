package parser;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.PrintWriter;
import java.lang.reflect.Method;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map.Entry;

import javax.servlet.http.HttpServletRequest;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;
import javax.xml.transform.OutputKeys;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerConfigurationException;
import javax.xml.transform.TransformerException;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.dom.DOMSource;
import javax.xml.transform.stream.StreamResult;

import org.mybeans.form.FormBeanFactory;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.xml.sax.SAXException;

import bean.TestBean;
public class XmlParser {

	private Document document;
	private static String filePath;
	
	public XmlParser() {
		try {
			DocumentBuilderFactory factory = DocumentBuilderFactory
					.newInstance();
			DocumentBuilder builder = factory.newDocumentBuilder();
			this.document = builder.newDocument();
		} catch (ParserConfigurationException e) {
			System.out.println(e.getMessage());
		}
	}

	/**
	 * Read a file and parse all the node into a HashMap accroding to the xml node and value pair
	 * @param file the xml file
	 * @return HashMap<String, String>
	 * @throws ParserConfigurationException
	 * @throws SAXException
	 * @throws IOException
	 */
	public HashMap<String, String> importXml(File file) throws ParserConfigurationException, SAXException, IOException {
		DocumentBuilderFactory dbf = DocumentBuilderFactory.newInstance();
		DocumentBuilder db = dbf.newDocumentBuilder();
		Document document = db.parse(file);
		
		HashMap<String, String> valueMap = new HashMap<String, String>();
		
		NodeList nodes = (NodeList) document.getChildNodes();
		for (int i = 0; i < nodes.getLength(); i++) {
			Node node = nodes.item(i);
			NodeList values = node.getChildNodes();
			// text node is also node, so need to skip one to get the right value
			for (int j = 1; j < values.getLength(); j++) {
				valueMap.put(values.item(j).getNodeName(), values.item(j++).getTextContent());
				//System.out.println(values.item(j).getNodeName() + " : " + values.item(j++).getTextContent());
			}
		}
		return valueMap;
	}
	
	/**
	 * HAVENT't been tested (6/4/2014 18:56 Fang)
	 * save xml file into server according to the content of the request and return the path of xml generated in server;
	 * you need to set the attributes<String, String> in related actions
	 * @param request contains the value of user entered
	 * @param fileName the name for the generated xml file
	 * @return generated xml url
	 * @throws Exception 
	 */
	public File saveXml(HttpServletRequest request, String fileName) throws Exception {
		filePath = request.getSession().getServletContext().getRealPath("/") + "form" + System.getProperty("file.separator");
		if (!fileName.endsWith(".xml")) {
			throw new Exception("must import .xml file");
		}
		Element root = this.document.createElement("values");
		this.document.appendChild(root);
		
		Enumeration<String> params = request.getParameterNames();
		while (params.hasMoreElements()) {
			String name = params.nextElement();
			Element elm = this.document.createElement(name);
			elm.appendChild(this.document.createTextNode((String) request.getParameter(name)));
			root.appendChild(elm);
		}
		TransformerFactory tf = TransformerFactory.newInstance();
		try {
			Transformer transformer = tf.newTransformer();
			DOMSource source = new DOMSource(document);
			transformer.setOutputProperty(OutputKeys.ENCODING, "gb2312");
			transformer.setOutputProperty(OutputKeys.INDENT, "yes");
			PrintWriter pw = new PrintWriter(new FileOutputStream(filePath
					+ fileName));
			StreamResult result = new StreamResult(pw);
			transformer.transform(source, result);
			System.out.println("done generating!");
		} catch (TransformerConfigurationException e) {
			System.out.println(e.getMessage());
		} catch (IllegalArgumentException e) {
			System.out.println(e.getMessage());
		} catch (FileNotFoundException e) {
			System.out.println(e.getMessage());
		} catch (TransformerException e) {
			System.out.println(e.getMessage());
		}
		return new File(filePath + fileName);
	}
}
