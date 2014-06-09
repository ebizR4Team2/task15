/**
 * Task 15 Privacy Policy
 * @author Team2 CMU ebiz Team2 Hao Ge, Harini Ramasatagopan, Yujia Hu, Fang Meng, Sk Md Abdullah Al Subail
 * 
 * The action of "import"
 * Read the xml file in server and fill the index.jsp page
 */

package controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map.Entry;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.xml.parsers.ParserConfigurationException;

import org.mybeans.form.FormBeanException;
import org.mybeans.form.FormBeanFactory;
import org.xml.sax.SAXException;

import bean.XmlForm;
import parser.XmlParser;

public class ImportAction extends Action {
	private FormBeanFactory<XmlForm> formBeanFactory = FormBeanFactory
			.getInstance(XmlForm.class);
	private HashSet<String> checkBox;		// which attribute is checkBox
	
	public ImportAction() {
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
		return "import.do";
	}
	
	@Override
	public String perform(HttpServletRequest request) {
		HttpSession session = request.getSession();
		if (session.getAttribute("userid") == null) {
			return "index.do";
		}
		
		List<String> errors = new ArrayList<String>();
		request.setAttribute("errors", errors);
		
		try {
			XmlForm form = formBeanFactory.create(request);
			if (!form.isPresent() || !request.getMethod().equals("POST")) {
				System.out.print("haha");
				return "import.jsp";
			}
			errors.addAll(form.getValidationErrors());
			if (errors.size() > 0) {
				request.setAttribute("errors", errors);
				return "import.jsp";
			}
			
			XmlParser xml = new XmlParser();
			HashMap<String, String> map = xml.importXml(form.getXml());
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
			return "import.jsp";
		} catch (FormBeanException e) {
			return "import.jsp";
		}
		return "import.jsp";
	}
}
