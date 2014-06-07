package controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map.Entry;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;
import javax.xml.parsers.ParserConfigurationException;

import org.mybeans.form.FormBeanException;
import org.mybeans.form.FormBeanFactory;
import org.xml.sax.SAXException;

import bean.XmlForm;
import parser.XmlParser;

public class ImportAction extends Action {
	private FormBeanFactory<XmlForm> formBeanFactory = FormBeanFactory
			.getInstance(XmlForm.class);
	public ImportAction() {
		
	}
	
	@Override
	public String getName() {
		return "import.do";
	}
	
	@Override
	public String perform(HttpServletRequest request) {
		
		List<String> errors = new ArrayList<String>();
		request.setAttribute("errors", errors);
		
		try {
			XmlForm form = formBeanFactory.create(request);
			if (!form.isPresent() || !request.getMethod().equals("POST")) {
				return "import.jsp";
			}
			errors.addAll(form.getValidationErrors());
			if (errors.size() > 0) {
				return "import.jsp";
			}
			
			
			XmlParser xml = new XmlParser();
			HashMap<String, String> map = xml.importXml(form.getXml());
			Iterator<Entry<String, String>> itr = map.entrySet().iterator();
			while (itr.hasNext()) {
				Entry<String, String> entry = itr.next();
				request.setAttribute(entry.getKey(), entry.getValue());
			}
			return "index.jsp";
		} catch (ParserConfigurationException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SAXException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (NullPointerException e) {
			System.out.print("haha");
			return "import.jsp";
		} catch (FormBeanException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "import.jsp";
	}
}
