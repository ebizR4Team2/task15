package parser;

import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.PrintWriter;
import java.lang.reflect.Method;
import java.util.Enumeration;

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

public class Xml {
	private Document document;
	private static String filePath = System.getProperty("user.dir")
			+ "\\form\\";
	private FormBeanFactory<TestBean> formBeanFactory = FormBeanFactory
			.getInstance(TestBean.class);

	public Xml() {
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
	 * return xml url on the server for download or zip
	 * 
	 * @param form
	 *            the bean contains the user input information from the UI
	 * @param fileName
	 *            the xml's name stored in the server
	 * @throws Exception
	 *             name validing exception
	 */
	public String createXml(TestBean form, String fileName) throws Exception {
		if (!fileName.endsWith(".xml")) {
			throw new Exception("Filename must end with \".xml\"");
		}
		Method[] methods = TestBean.class.getMethods();
		for (Method method : methods) {
			String id = method.getName().substring(2, 3).toLowerCase()
					+ method.getName().substring(3); // after "get"
			Element element = this.document.createElement(id);
			element.appendChild(this.document.createTextNode((String) method
					.invoke(form)));
		}

		// return the path on server for downlaoding
		// do some convert
		return filePath + fileName;
	}

	public void createXml(String fileName) {
		Element root = this.document.createElement("scores");
		this.document.appendChild(root);
		Element employee = this.document.createElement("employee");
		Element name = this.document.createElement("name");
		name.appendChild(this.document.createTextNode("wangchenyang"));
		employee.appendChild(name);
		Element sex = this.document.createElement("sex");
		sex.appendChild(this.document.createTextNode("m"));
		employee.appendChild(sex);
		Element age = this.document.createElement("age");
		age.appendChild(this.document.createTextNode("26"));
		employee.appendChild(age);
		root.appendChild(employee);
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
	}

	public void parserXml(String fileName) {
		try {
			DocumentBuilderFactory dbf = DocumentBuilderFactory.newInstance();
			DocumentBuilder db = dbf.newDocumentBuilder();
			Document document = db.parse(fileName);

			NodeList employees = document.getChildNodes();
			for (int i = 0; i < employees.getLength(); i++) {
				Node employee = employees.item(i);
				NodeList employeeInfo = employee.getChildNodes();
				for (int j = 0; j < employeeInfo.getLength(); j++) {
					Node node = employeeInfo.item(j);
					NodeList employeeMeta = node.getChildNodes();
					for (int k = 0; k < employeeMeta.getLength(); k++) {
						System.out.println(employeeMeta.item(k).getNodeName()
								+ ":" + employeeMeta.item(k).getTextContent());
					}
				}
			}
			System.out.println("done reading");
		} catch (FileNotFoundException e) {
			System.out.println(e.getMessage());
		} catch (ParserConfigurationException e) {
			System.out.println(e.getMessage());
		} catch (SAXException e) {
			System.out.println(e.getMessage());
		} catch (IOException e) {
			System.out.println(e.getMessage());
		}
	}

	public static void main(String args[]) {
		Xml dd = new Xml();
		String str = "grade.xml";
		dd.createXml(str);
		dd.parserXml(str);
	}
}
