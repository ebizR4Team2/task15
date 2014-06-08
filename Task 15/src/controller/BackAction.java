package controller;

import java.awt.Checkbox;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map.Entry;

import javax.servlet.http.HttpServletRequest;
import javax.xml.parsers.ParserConfigurationException;

import org.mybeans.form.FormBeanException;
import org.mybeans.form.FormBeanFactory;
import org.xml.sax.SAXException;

import bean.XmlForm;
import parser.XmlParser;

public class BackAction extends Action {
	private HashSet<String> checkBox;		// which attribute is checkBox
	
	public BackAction() {
		checkBox = new HashSet<String>();
		checkBox.add("income");
		checkBox.add("accountbalances");
		checkBox.add("paymenthistory");
		checkBox.add("transactionhistory");
		checkBox.add("transactionorlosshistory");
		checkBox.add("credithistory");
		checkBox.add("creditscores");
		checkBox.add("assets");
		checkBox.add("investmentexperience");
		checkBox.add("credit-basedinsurancescores");
		checkBox.add("insuranceclaimhistory");
		checkBox.add("medicalinformation");
		checkBox.add("overdrafthistory");
		checkBox.add("purchasehistory");
		checkBox.add("accounttransactions");
		checkBox.add("risktolerance");
		checkBox.add("medical-relateddebts");
		checkBox.add("creditcardorotherdebt");
		checkBox.add("mortgageratesandpayments");
		checkBox.add("retirementassets");
		checkBox.add("checkingaccountinformation");
		checkBox.add("employmentinformation");
		checkBox.add("wiretransferinstructions");
		checkBox.add("openanaccount");
		checkBox.add("depositmoney");
		checkBox.add("payyourbills");
		checkBox.add("applyforaloan");
		checkBox.add("useyourcreditordebitcard");
		checkBox.add("seekfinancialortaxadvice");
		checkBox.add("applyforinsurance");
		checkBox.add("payinsurancepremiums");
		checkBox.add("fileaninsuranceclaim");
		checkBox.add("seekadviceaboutyourinvestments");
		checkBox.add("buysecuritiesfromus");
		checkBox.add("sellsecuritiestous");
		checkBox.add("directustobuysecurities");
		checkBox.add("directustosellyoursecurities");
		checkBox.add("makedepositsorwithdrawalsfromyouraccount");
		checkBox.add("enterintoaninvestmentadvisorycontract");
		checkBox.add("giveusyourincomeinformation");
		checkBox.add("provideemploymentinformation");
		checkBox.add("giveusyouremploymenthistory");
		checkBox.add("tellusaboutyourinvestmentorretirementportfolio");
		checkBox.add("tellusaboutyourinvestmentorretirementearnings");
		checkBox.add("applyforfinancing");
		checkBox.add("provideaccountinformation");
		checkBox.add("giveusyourcontactinformation");
		checkBox.add("giveusyourwagestatements");
		checkBox.add("provideyourmortgageinformation");
		checkBox.add("makeawiretransfer");
		checkBox.add("telluswhoreceivesthemoney");
		checkBox.add("telluswheretosendthemoney");
		checkBox.add("showyourgovernment-issuedID");
		checkBox.add("shouyourdriverslicense");
		checkBox.add("orderacommodityfuturesoroptiontrade");
		checkBox.add("opt-out-mail");
		checkBox.add("opt-out-online");
		checkBox.add("opt-out-phone");
		
	}
	
	@Override
	public String getName() {
		return "back.do";
	}
	
	@Override
	public String perform(HttpServletRequest request) {
		String userid = (String) request.getSession().getAttribute("userid");
		String filePath2 = request.getSession().getServletContext().getRealPath("/")
				+ "form" + System.getProperty("file.separator") + userid;
		
		try {
			XmlParser xml = new XmlParser();
			HashMap<String, String> map = xml.importXml(new File(filePath2 + "temp.xml"));
			Iterator<Entry<String, String>> itr = map.entrySet().iterator();
			while (itr.hasNext()) {
				Entry<String, String> entry = itr.next();
				if (checkBox.contains(entry.getKey())) {
					request.setAttribute(entry.getKey(), "checked");
				} else if (entry.getValue().toLowerCase().equals("yes")) {
					request.setAttribute(entry.getKey() + "Y", "checked");
				} else if (entry.getValue().toLowerCase().equals("no")) {
					request.setAttribute(entry.getKey() + "N", "checked");
				} else {
					request.setAttribute(entry.getKey(), entry.getValue());
				}
			}
			return "index.jsp";
		} catch (ParserConfigurationException e) {
			e.printStackTrace();
		} catch (SAXException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		} catch (NullPointerException e) {
			return "preview.jsp";
		}
		return "preview.jsp";
	}
}
