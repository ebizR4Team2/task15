package bean;

import java.util.ArrayList;
import java.util.List;

import org.mybeans.form.FileProperty;
import org.mybeans.form.FormBean;

public class XmlForm extends FormBean{
	private String button = "";
	private FileProperty xml = null;
	
	public String getButton() {
		return button;
	}
	public FileProperty getXml() {
		return xml;
	}
	public void setButton(String button) {
		this.button = button;
	}
	public void setXml(FileProperty xml) {
		this.xml = xml;
	}
	@Override
	public List<String> getValidationErrors() {
		List<String> errors = new ArrayList<String>();
		if (xml == null || xml.getFileName().length() == 0) {
			errors.add("You must upload xml file");
			return errors;
		}

		if (!xml.getFileName().endsWith(".xml")) {
			errors.add("Invalid file type.Please upload xml file");
			return errors;
		}

		if (xml.getBytes().length == 0) {
			errors.add("Zero length file");
		}
		return errors;
	}
}
