<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!doctype html>
<html>
<head>
<meta charset="UTF-8">
<title>Interactive Form Builder</title>
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/jumbotron-narrow.css" rel="stylesheet">
<script type="text/javascript"
	src="http://code.jquery.com/jquery-1.11.0.js"></script>
</head>

<body>
	<div class="container">
		<div class="header">
			<ul class="nav nav-pills pull-right">
				<li class="active"><a href="index.do">Build</a></li>
				<li><a href="import.do">Import</a></li>
			</ul>
			<a href="/"><h3 class="text-muted">Interactive Form Builder</h3></a>
		</div>
		<div class="content">
			<form role="form" method="post" action="preview.do">
				<div class="form-group">
				<a href="https://linkpeek.com"
				  onmouseover="document.getElementById('place-holder-1').src='https://farm6.staticflickr.com/5571/14377325532_4f2cd98d5d_o.png';"
				  onmouseout="document.getElementById('place-holder-1').src='';"><label for="nameofinstitution">Enter the name of financial
						institution (Hover the question to see instruction)</label>
				  <img src="" id="place-holder-1" />
				</a>
					 <input type="text" class="form-control"
						name="nameofinstitution" value="${nameofinstitution}">
				</div>
				
				
				<div class="form-group">
					<label for="nameofinstitution">Enter the address of
						financial institution</label> <input type="text" class="form-control"
						name="addressofinstitution" placeholder="Street, city, state, zip"
						value="${addressofinstitution}">
				</div>
				<div class="form-group">
					<label for="lastreviseddate">Enter revised date</label> <input
						type="text" class="form-control" name="revdate" value="${revdate}">
				</div>

				<div class="form-group">
				<a href="https://linkpeek.com"
				  onmouseover="document.getElementById('place-holder-5').src='https://farm3.staticflickr.com/2924/14375433771_e11d2b50f6_b.jpg';"
				  onmouseout="document.getElementById('place-holder-5').src='';">
				<label>Enter your customer service phone number</label>
				  <img src="" id="place-holder-5" />
				</a>
					 <input type="tel" class="form-control"
						id="exampleInputEmail1" name="phoneNumber" value="${phoneNumber}">
				</div>

				<div class="form-group">
					<label for="exampleInputEmail1">Enter your website domain
						name</label> <input type="text" class="form-control"
						id="exampleInputEmail1" name="websiteDomainName"
						value="${websiteDomainName}">
				</div>
				<div class="form-group">
					<label for="daysofsharinginfo">Within how many days do you
						start sharing information of new customer?(30 days or more)</label> <input
						type="number" class="form-control" name="daysofsharinginfo"
						value="${daysofsharinginfo}">
				</div>

				<div class="form-group">
					<a href="https://linkpeek.com"
						  onmouseover="document.getElementById('place-holder-7').src='https://farm6.staticflickr.com/5523/14355678936_2d7d673554_b.jpg';"
						  onmouseout="document.getElementById('place-holder-7').src='';">
					<label for="typeofpersonalinfo">What types of personal
						information you collect and share? (Choose minimum of 5)</label>
						  <img src="" id="place-holder-7" />
						</a>

					<div class="checkbox">
						<label> <input type="checkbox"
							value="social security number" name="socialsecuritynumber"
							checked>social security number
						</label>
					</div>
					<div class="checkbox">
						<label> <input type="checkbox" value="income"
							name="income" ${income}>income
						</label>
					</div>
					<div class="checkbox">
						<label> <input type="checkbox" value="account balances"
							name="accountbalances" ${accountbalances}>account
							balances
						</label>
					</div>
					<div class="checkbox">
						<label> <input type="checkbox" value="payment history"
							name="paymenthistory" ${paymenthistory}>payment history
						</label>
					</div>
					<div class="checkbox">
						<label> <input type="checkbox" value="transaction history"
							name="transactionhistory" ${transactionhistory}>transaction
							history
						</label>
					</div>
					<div class="checkbox">
						<label> <input type="checkbox"
							value="transaction or loss history"
							name="transactionorlosshistory" ${transactionorlosshistory}>transaction
							or loss history
						</label>
					</div>
					<div class="checkbox">
						<label> <input type="checkbox" value="credit history"
							name="credithistory" ${credithistory}>credit history
						</label>
					</div>
					<div class="checkbox">
						<label> <input type="checkbox" value="credit scores"
							name="creditscores" ${creditscores}>credit scores
						</label>
					</div>
					<div class="checkbox">
						<label> <input type="checkbox" value="assets"
							name="assets" ${assets}>assets
						</label>
					</div>
					<div class="checkbox">
						<label> <input type="checkbox"
							value="investment experience" name="investmentexperience"
							${investmentexperience}>investment experience
						</label>
					</div>
					<div class="checkbox">
						<label> <input type="checkbox"
							value="credit-based insurance scores"
							name="credit-basedinsurancescores" ${credit-basedinsurancescores}>credit-based
							insurance scores
						</label>
					</div>
					<div class="checkbox">
						<label> <input type="checkbox"
							value="insurance claim history" name="insuranceclaimhistory"
							${insuranceclaimhistory}>insurance claim history
						</label>
					</div>
					<div class="checkbox">
						<label> <input type="checkbox" value="medical information"
							name="medicalinformation" ${medicalinformation}>medical
							information
						</label>
					</div>
					<div class="checkbox">
						<label> <input type="checkbox" value="overdraft history"
							name="overdrafthistory" ${overdrafthistory}>overdraft
							history
						</label>
					</div>
					<div class="checkbox">
						<label> <input type="checkbox" value="purchase history"
							name="purchasehistory" ${purchasehistory}>purchase
							history
						</label>
					</div>
					<div class="checkbox">
						<label> <input type="checkbox"
							value="account transactions" name="accounttransactions"
							${accounttransactions}>account transactions
						</label>
					</div>
					<div class="checkbox">
						<label> <input type="checkbox" value="risk tolerance"
							name="risktolerance" ${risktolerance}>risk tolerance
						</label>
					</div>
					<div class="checkbox">
						<label> <input type="checkbox"
							value="medical-related debts" name="medical-relateddebts"
							${medical-relateddebts}>medical-related debts
						</label>
					</div>
					<div class="checkbox">
						<label> <input type="checkbox"
							value="credit card or other debt" name="creditcardorotherdebt"
							${creditcardorotherdebt}>credit card or other debt
						</label>
					</div>
					<div class="checkbox">
						<label> <input type="checkbox"
							value="mortgage rates and payments"
							name="mortgageratesandpayments" ${mortgageratesandpayments}>mortgage
							rates and payments
						</label>
					</div>
					<div class="checkbox">
						<label> <input type="checkbox" value="retirement assets"
							name="retirementassets" ${retirementassets}>retirement
							assets
						</label>
					</div>
					<div class="checkbox">
						<label> <input type="checkbox"
							value="checking account information"
							name="checkingaccountinformation" ${checkingaccountinformation}>checking
							account information
						</label>
					</div>
					<div class="checkbox">
						<label> <input type="checkbox"
							value="employment information" name="employmentinformation"
							${employmentinformation}>employment information
						</label>
					</div>
					<div class="checkbox">
						<label> <input type="checkbox"
							value="wire transfer instructions"
							name="wiretransferinstructions" ${wiretransferinstructions}>wire
							transfer instructions
						</label>
					</div>

					<div class="form-group">
						<label for="exampleInputPassword1">Do you want to use the
							word "member" or "customer"?</label>
						<div class="radio">
							<label> <input type="radio" name="memberorcustomer"
								id="useMemberOrNot1" value="member" ${useMemberOrNot}>
								Member
							</label>
						</div>
						<div class="radio">
							<label> <input type="radio" name="memberorcustomer"
								id="useMemberOrNot2" value="customer" ${useMemberOrNot}>
								Customer
							</label>
						</div>
					</div>


					<div class="form-group">
						<label for="exampleInputPassword1">Do you have affiliate
							program</label>
						<div class="radio">
							<label> <input type="radio" name="haveaffiliate"
								id="optionsRadios1" value="yes" ${haveaffiliateY}> Yes
							</label>
						</div>
						<div class="radio">
							<label> <input type="radio" name="haveaffiliate"
								id="optionsRadios2" value="no" ${haveaffiliateN}> No
							</label> <input type="hidden" id="hidden_optionsRadios"
								value="${haveaffiliateY}">
						</div>
					</div>

					<table class="table table-bordered">
						<thead>
							<tr>
								<th><a href="https://linkpeek.com"
							  onmouseover="document.getElementById('place-holder-3').src='https://farm3.staticflickr.com/2932/14192129109_fc0a343a5d_n.jpg';"
							  onmouseout="document.getElementById('place-holder-3').src='';">
							  Reasons you can share your customer's information
							  <img src="" id="place-holder-3" />
							</a></th>
								<th>Do you share?</th>
								<th>Can customer limit this sharing?</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>For everyday business purposes-such as to process
									customer's transactions, maintain customer's account(s),
									respond to court orders and legal investigations, or report to
									credit bureaus</td>
								<td>
									<div class="radio">
										<label> <input type="radio" name="EverydayBusiness"
											id="EverydayBusiness1" value="Yes" ${EverydayBusinessY}>
											Yes
										</label>
									</div>
									<div class="radio">
										<label> <input type="radio" name="EverydayBusiness"
											id="EverydayBusiness2" value="No" ${EverydayBusinessN}>
											No
										</label>
									</div> <input type="hidden" id="hidden_EverydayBusiness1"
									value="${EverydayBusinessY}"> <input type="hidden"
									id="hidden_EverydayBusiness1N" value="${EverydayBusinessN}">
								</td>
								<td>

									<div id="EverydayBusiness_limit_div">
										<div class="radio">
											<label> <input type="radio"
												name="EverydayBusiness_limit" id="EverydayBusiness_limit"
												value="Yes" ${EverydayBusiness_limitY}> Yes
											</label>
											<input type="hidden" id="hidden_EverydayBusiness_limit"
											value="${EverydayBusiness_limitY}">
										</div>
										<div class="radio">
											<label> <input type="radio"
												name="EverydayBusiness_limit" id="EverydayBusiness_limit"
												value="No" ${EverydayBusiness_limitN}> No
											</label>
										</div>

									</div>
									<div id="wedonotshare1" style="display: none">
										<span>You do not share</span>
									</div> <script>
										if ($("#hidden_EverydayBusiness1")
												.val() == "checked") {
											$("#wedonotshare1").hide();
											$("#EverydayBusiness_limit_div")
													.show();
										}
										if ($("#hidden_EverydayBusiness1N")
												.val() == "checked") {
											$("#wedonotshare1").show();
											$("#EverydayBusiness_limit_div")
													.hide();
										}

										$("input[name='EverydayBusiness']")
												.change(
														function() {
															if ($(this).val() == "No") {
																$(
																		"#wedonotshare1")
																		.show();
																$(
																		"#EverydayBusiness_limit_div")
																		.hide();
															} else {
																$(
																		"#wedonotshare1")
																		.hide();
																$(
																		"#EverydayBusiness_limit_div")
																		.show();
															}
														});
									</script>
								</td>
							</tr>
							<tr>
								<td>For marketing purposes-with service providers you use
									to offer your products and services to customer</td>
								<td>
									<div class="radio">
										<label> <input type="radio" name="marketpurpose"
											id="optionsRadios1" value="Yes" ${marketpurposeY}>
											Yes
										</label>
									</div>
									<div class="radio">
										<label> <input type="radio" name="marketpurpose"
											id="optionsRadios2" value="No" ${marketpurposeN}> No
										</label> <input type="hidden" id="hidden_marketpurpose"
											value="${marketpurposeY}"> <input type="hidden"
											id="hidden_marketpurposeN" value="${marketpurposeN}">
									</div>

								</td>
								<td>
									<div id="marketpurpose_limit_div">
										<div class="radio">
											<label> <input type="radio"
												name="marketpurpose_limit" id="optionsRadios1" value="Yes"
												${marketpurpose_limitY}> Yes
											</label>
											<input type="hidden" id="hidden_marketpurpose_limit"
											value="${marketpurpose_limitY}">
										</div>
										<div class="radio">
											<label> <input type="radio"
												name="marketpurpose_limit" id="optionsRadios2" value="No"
												${marketpurpose_limitN}> No
											</label>
										</div>
									</div>

									<div id="wedonotshare2" style="display: none">
										<span>You do not share</span>
									</div> <script>
										if ($("#hidden_marketpurpose").val() == "checked") {
											$("#wedonotshare2").hide();
											$("#marketpurpose_limit_div")
													.show();
										}
										if ($("#hidden_marketpurposeN").val() == "checked") {
											$("#wedonotshare2").show();
											$("#marketpurpose_limit_div")
													.hide();
										}
										$("input[name='marketpurpose']")
												.change(
														function() {

															if ($(this).val() == "No") {
																$(
																		"#wedonotshare2")
																		.show();
																$(
																		"#marketpurpose_limit_div")
																		.hide();
															} else {
																$(
																		"#wedonotshare2")
																		.hide();
																$(
																		"#marketpurpose_limit_div")
																		.show();
															}

														});
									</script>
								</td>
							</tr>



							<tr>
								<td>For joint marketing with other financial companies</td>
								<td>
									<div class="radio">
										<label> <input type="radio" name="jointmarket"
											id="optionsRadios1" value="Yes" ${jointmarketY}> Yes
										</label>
									</div>
									<div class="radio">
										<label> <input type="radio" name="jointmarket"
											id="optionsRadios2" value="No" ${jointmarketN}> No
										</label> <input type="hidden" id="hidden_jointmarket"
											value="${jointmarketY}"> <input type="hidden"
											id="hidden_jointmarketN" value="${jointmarketN}">
									</div>

								</td>
								<td>
									<div id="jointmarket_limit_div">
										<div class="radio">
											<label> <input type="radio" name="jointmarket_limit"
												id="optionsRadios1" value="Yes" ${jointmarket_limitY}>
												Yes
											</label>
											<input type="hidden" id="hidden_jointmarket_limit"
											value="${jointmarket_limitY}">

										</div>
										<div class="radio">
											<label> <input type="radio" name="jointmarket_limit"
												id="optionsRadios2" value="No" ${jointmarket_limitN}>
												No
											</label>
										</div>
									</div>
									<div id="wedonotshare3" style="display: none">
										<span>You do not share</span>
									</div> <script>
										if ($("#hidden_jointmarket").val() == "checked") {
											$("#wedonotshare3").hide();
											$("#jointmarket_limit_div").show();
										}
										if ($("#hidden_jointmarketN").val() == "checked") {
											$("#wedonotshare3").show();
											$("#jointmarket_limit_div").hide();
										}
										$("input[name='jointmarket']")
												.change(
														function() {

															if ($(this).val() == "No") {
																$(
																		"#wedonotshare3")
																		.show();
																$(
																		"#jointmarket_limit_div")
																		.hide();
															} else {
																$(
																		"#wedonotshare3")
																		.hide();
																$(
																		"#jointmarket_limit_div")
																		.show();
															}

														});
									</script>


								</td>
							</tr>
							<tr>
								<td>For afiliate's everyday business purpose information
									about your transactions and experiences</td>
								<td>
									<div class="radio">
										<label> <input type="radio" name="affeverydaybusi"
											id="optionsRadios1" value="Yes" ${affeverydaybusiY}>
											Yes
										</label>
									</div>
									<div class="radio">
										<label> <input type="radio" name="affeverydaybusi"
											id="optionsRadios2" value="No" ${affeverydaybusiN}>
											No
										</label> <input type="hidden" id="hidden_affeverydaybusi"
											value="${affeverydaybusiY}"> <input type="hidden"
											id="hidden_affeverydaybusiN" value="${affeverydaybusiN}">
									</div>
								</td>
								<td>
									<div id="affeverydaybusi_limit_div">
										<div class="radio">
											<label> <input type="radio"
												name="affeverydaybusi_limit" id="optionsRadios1" value="Yes"
												${affeverydaybusi_limitY}> Yes
											</label>
											<input type="hidden" id="hidden_affeverydaybusi_limit"
											value="${affeverydaybusi_limitY}">
										</div>
										<div class="radio">
											<label> <input type="radio"
												name="affeverydaybusi_limit" id="optionsRadios2" value="No"
												${affeverydaybusi_limitN}> No
											</label>
										</div>
									</div>
									<div id="wedonotshare4" style="display: none">
										<span>You do not share</span>
									</div> <script>
										if ($("#hidden_affeverydaybusi").val() == "checked") {
											$("#wedonotshare4").hide();
											$("#affeverydaybusi_limit_div")
													.show();
										}
										if ($("#hidden_affeverydaybusiN").val() == "checked") {
											$("#wedonotshare4").show();
											$("#affeverydaybusi_limit_div")
													.hide();
										}
										$("input[name='affeverydaybusi']")
												.change(
														function() {

															if ($(this).val() == "No") {
																$(
																		"#wedonotshare4")
																		.show();
																$(
																		"#affeverydaybusi_limit_div")
																		.hide();
															} else {
																$(
																		"#wedonotshare4")
																		.hide();
																$(
																		"#affeverydaybusi_limit_div")
																		.show();
															}

														});
									</script>

								</td>
							</tr>

							<tr>
								<td>For affiliates' everyday business purposes information
									about your creditworthiness</td>
								<td>
									<div class="radio">
										<label> <input type="radio" name="creditworth"
											id="optionsRadios1" value="Yes" ${creditworthY}> Yes
										</label>
									</div>
									<div class="radio">
										<label> <input type="radio" name="creditworth"
											id="optionsRadios2" value="No" ${creditworthN}> No
										</label> <input type="hidden" id="hidden_creditworth"
											value="${creditworthY}"> <input type="hidden"
											id="hidden_creditworthN" value="${creditworthN}">
									</div>
								</td>
								<td>
									<div id="wedonotshare5" style="display: none">
										<span>You do not share</span>
									</div>
									<div id="wedonotshare5Yes" style="display: none">
										<span>Yes</span>
									</div> 
									<script>
										if ($("#hidden_creditworth").val() == "checked") {
											$("#wedonotshare5").hide();
											$("#wedonotshare5Yes").show();
										}
										if ($("#hidden_creditworthN").val() == "checked") {
											$("#wedonotshare5").show();
											$("#wedonotshare5Yes").hide();
										}
										$("input[name='creditworth']").change(
												function() {

													if ($(this).val() == "No") {
														$("#wedonotshare5")
																.show();
														$("#wedonotshare5Yes")
																.hide();
													} else {
														$("#wedonotshare5")
																.hide();
														$("#wedonotshare5Yes")
																.show();
													}

												});
									</script>

								</td>
							</tr>

							<tr style="display: none" id="sharepersonalinfo">
								<td>For our affiliates to market to customer</td>
								<td>
									<div class="radio">
										<label> <input type="radio" name="afftomarket"
											id="optionsRadios1" value="Yes" ${afftomarketY}> Yes
										</label>

									</div>
									<div class="radio">
										<label> <input type="radio" name="afftomarket"
											id="optionsRadios2" value="No" ${afftomarketN}> No
										</label> <input type="hidden" id="hidden_afftomarket"
											value="${afftomarketY}"> <input type="hidden"
											id="hidden_afftomarketN" value="${afftomarketN}">
									</div> <script>
										if ($("#hidden_afftomarket").val() == "checked") {
											$("#sharepersonalinfo").show();
											$("#sharepersonalinfo_question")
													.show();
										}
										if ($("#hidden_afftomarketN").val() == "checked") {
											$("#sharepersonalinfo").hide();
											$("#sharepersonalinfo_question")
													.hide();
										}
										$("input[name='haveaffiliate']")
												.change(
														function() {

															if ($(this).val() == "yes") {
																$(
																		"#sharepersonalinfo")
																		.show();
																$(
																		"#sharepersonalinfo_question")
																		.show();
															} else {
																$(
																		"#sharepersonalinfo")
																		.hide();
																$(
																		"#sharepersonalinfo_question")
																		.hide();
															}

														});
									</script>

								</td>

								<td>
									<div id="afftomarket_limit_div">
										<div id="wedonotshare6Yes" style="display: none">
											<span>Yes</span>
										</div> 
										<input type="hidden" id="hidden_afftomarket_limit"
											value="${afftomarket_limitY}"> <input type="hidden"
											id="hidden_afftomarket_limitN" value="${afftomarket_limitN}">
									</div>
									<div id="wedonotshare6" style="display: none">
										<span>You do not share</span>
									</div> <script>
										if ($("#hidden_afftomarket_limit")
												.val() == "checked") {
											$("#afftomarket_limit_div").show();
											$("#wedonotshare6").hide();
										}
										if ($("#hidden_afftomarket_limitN")
												.val() == "checked") {
											$("#afftomarket_limit_div").hide();
											$("#wedonotshare6").show();
										}
										$("input[name='afftomarket']")
												.change(
														function() {

															if ($(this).val() == "No") {
																$(
																		"#wedonotshare6")
																		.show();
																$(
																		"#afftomarket_limit_div")
																		.hide();
																
															} else {
																$(
																		"#wedonotshare6")
																		.hide();
																$(
																		"#afftomarket_limit_div")
																		.show();
																$("#wedonotshare6Yes").show();
															}

														});
									</script>
								</td>
							</tr>

							<tr>
								<td>For nonaffiliates to market to customer</td>
								<td>
									<div class="radio">
										<label> <input type="radio" name="nonafftomarket"
											id="optionsRadios1" value="Yes" ${nonafftomarketY}>
											Yes
										</label>
									</div>
									<div class="radio">
										<label> <input type="radio" name="nonafftomarket"
											id="optionsRadios2" value="No" ${nonafftomarketN}> No
										</label> <input type="hidden" id="hidden_nonafftomarket"
											value="${nonafftomarketY}"> <input type="hidden"
											id="hidden_nonafftomarketN" value="${nonafftomarketN}">
									</div>
								</td>
								<td>
									<div id="nonafftomarket_limit_div">
													<div id="wedonotshare7Yes" style="display: none">
											<span>Yes</span>
										</div> 
									</div>
									<div id="wedonotshare7" style="display: none">
										<span>You do not share</span>
									</div> <script>
									if ($("#hidden_nonafftomarket_limitY").val() == "checked") {
										$("#nonafftomarket_limit_div")
												.show();
										$("#wedonotshare7").hide();
									}
										if ($("#hidden_nonafftomarket").val() == "checked") {
											$("#nonafftomarket_limit_div")
													.show();
											$("#wedonotshare7").hide();
										}
										if ($("#hidden_nonafftomarketN").val() == "checked") {
											$("#nonafftomarket_limit_div")
													.hide();
											$("#wedonotshare7").show();
										}
										$("input[name='nonafftomarket']")
												.change(
														function() {

															if ($(this).val() == "No") {
																$(
																		"#wedonotshare7")
																		.show();
																$(
																		"#nonafftomarket_limit_div")
																		.hide();
															} else {
																$(
																		"#wedonotshare7")
																		.hide();
																$(
																		"#nonafftomarket_limit_div")
																		.show();
																$("#wedonotshare7Yes").show();
															}

														});
									</script>
								</td>
							</tr>
						</tbody>
					</table>

					<div class="form-group" id="sharepersonalinfo_question">
						<label for="exampleInputEmail1">Do you share personal
							information with affiliates?</label>
						<div class="radio">
							<label> <input type="radio" name="sharepersonalinfo"
								value="yes" ${sharepersonalinfoY}> Yes
							</label>
						</div>
						<div class="radio">
							<label> <input type="radio" name="sharepersonalinfo"
								value="no" ${sharepersonalinfoN}> No
							</label>
						</div>
						<input type="hidden" id="hidden_sharepersonalinfo"
							value="${sharepersonalinfoY}">
					</div>
					<div class="form-group" id="whoareyouraffiliates"
						style="display: none">
						<label for="exampleInputPassword1">Who are your
							affiliates?</label>
						<textarea class="form-control" rows="3"
							name="whoareyouraffiliates" placeholder="Our affiliates include...">${whoareyouraffiliates}</textarea>
					</div>

					<script>
						if ($("#hidden_sharepersonalinfo").val() == "checked") {
							$("#whoareyouraffiliates").show();
						}
						$("input[name='sharepersonalinfo']").change(function() {

							if ($(this).val() == "yes") {
								$("#whoareyouraffiliates").show();
							} else {
								$("#whoareyouraffiliates").hide();
							}

						});
					</script>

					<div class="form-group">
						<label for="exampleInputPassword1">Do you share
							information with non-affiliates?</label>
						<div class="radio">
							<label> <input type="radio"
								name="sharepersonalinfononaffiliates"
								id="sharepersonalinfononaffiliates" value="yes"
								${sharepersonalinfononaffiliatesY}> Yes
							</label>
						</div>
						<div class="radio">
							<label> <input type="radio"
								name="sharepersonalinfononaffiliates"
								id="sharepersonalinfononaffiliates" value="no"
								${sharepersonalinfononaffiliatesN}> No
							</label> <input type="hidden" id="hidden_sharepersonalinfononaffiliates"
								value="${sharepersonalinfononaffiliatesY}">
						</div>
					</div>

					<div class="form-group" id="whoareyournonaffiliates"
						style="display: none;">
						<label for="exampleInputPassword1">Who are your
							non-affiliates?</label>
						<textarea class="form-control" rows="3"
							name="whoareyournonaffiliates" placeholder="Nonaffiliates we share with can include...">${whoareyournonaffiliates}</textarea>
					</div>

					<script>
						if ($("#hidden_sharepersonalinfononaffiliates").val() == "checked") {
							$("#whoareyournonaffiliates").show();
						}

						$("input[name='sharepersonalinfononaffiliates']")
								.change(function() {
									if ($(this).val() == "yes") {
										$("#whoareyournonaffiliates").show();
									} else {
										$(whoareyournonaffiliates).hide();
									}

								});
					</script>

					<div class="form-group">
						<label for="exampleInputPassword1">Do you engage in joint
							marketing?</label>
						<div class="radio">
							<label> <input type="radio" name="jointmarketing"
								id="jointmarketing" value="yes" ${jointmarketingY}> Yes
							</label>
						</div>
						<div class="radio">
							<label> <input type="radio" name="jointmarketing"
								id="jointmarketing" value="no" ${jointmarketingN}> No <input
								type="hidden" id="hidden_jointmarketing"
								value="${jointmarketingY}">
							</label>
						</div>

					</div>

					<div class="form-group" id="whoareyourmarketingpartners"
						style="display: none;">
						<label for="exampleInputPassword1">Who are your joint
							marketing partners?</label>
						<textarea class="form-control" rows="3"
							name="whoareyourmarketingpartners" placeholder="Our joint marketing partners include...">${whoareyourmarketingpartners}</textarea>
					</div>

					<script>
						if ($("#hidden_jointmarketing").val() == "checked") {
							$("#whoareyourmarketingpartners").show();
						}

						$("input[name='jointmarketing']").change(function() {
							if ($(this).val() == "yes") {
								console.log("yes");
								$("#whoareyourmarketingpartners").show();
							} else {
								console.log("no");
								$(whoareyourmarketingpartners).hide();
							}

						});
					</script>


					<div class="form-group">
						<label>Is this privacy policy jointly provided by two or
							more financial institutions?</label>
						<div class="radio">
							<label> <input type="radio" name="JointPolicy"
								id="JointPolicy" value="yes" ${JointPolicyY}> Yes
							</label>
						</div>
						<div class="radio">
							<label> <input type="radio" name="JointPolicy"
								id="JointPolicy" value="no" ${JointPolicyN}> No
							</label> <input type="hidden" id="hidden_JointPolicy"
								value="${JointPolicyY}">
						</div>
					</div>

					<div class="form-group" id="Whoisprovidingthisnotice"
						style="display: none;">
						<label for="who">Who is providing this notice?</label>
						<textarea class="form-control" name="whoprovidenotice" row="4">${whoprovidenotice}</textarea>
					</div>

					<script>
						if ($("#hidden_JointPolicy").val() == "checked") {
							$("#Whoisprovidingthisnotice").show();
						}
						$("input[name='JointPolicy']").change(function() {

							if ($(this).val() == "yes") {
								$("#Whoisprovidingthisnotice").show();
							} else {
								$("#Whoisprovidingthisnotice").hide();
							}

						});
					</script>

					<div class="form-group">
						<label for="who">How do you protect user's personal
							information?</label>
						<textarea class="form-control" name="howprotectuserinfo" rows="3">${howprotectuserinfo}</textarea>
					</div>
					<div class="form-group">
						<label for="exampleInputPassword1">How do you collect
							user's personal information?</label>


						<div class="checkbox">
							<label> <input type="checkbox" value="open an account"
								name="openanaccount" ${openanaccount}>open an account
							</label>
						</div>
						<div class="checkbox">
							<label> <input type="checkbox" value="deposit money"
								name="depositmoney" ${depositmoney}>deposit money
							</label>
						</div>
						<div class="checkbox">
							<label> <input type="checkbox" value="pay your bills"
								name="payyourbills" ${payyourbills}>pay your bills
							</label>
						</div>
						<div class="checkbox">
							<label> <input type="checkbox" value="apply for a loan"
								name="applyforaloan" ${applyforaloan}>apply for a loan
							</label>
						</div>
						<div class="checkbox">
							<label> <input type="checkbox"
								value="use your credit or debit card"
								name="useyourcreditordebitcard" ${useyourcreditordebitcard}>use
								your credit or debit card
							</label>
						</div>
						<div class="checkbox">
							<label> <input type="checkbox"
								value="seek financial or tax advice"
								name="seekfinancialortaxadvice" ${seekfinancialortaxadvice}>seek
								financial or tax advice
							</label>
						</div>
						<div class="checkbox">
							<label> <input type="checkbox"
								value="apply for insurance" name="applyforinsurance"
								${applyforinsurance}>apply for insurance
							</label>
						</div>
						<div class="checkbox">
							<label> <input type="checkbox"
								value="pay insurance premiums" name="payinsurancepremiums"
								${payinsurancepremiums}>pay insurance premiums
							</label>
						</div>
						<div class="checkbox">
							<label> <input type="checkbox"
								value="file an insurance claim" name="fileaninsuranceclaim"
								${fileaninsuranceclaim}>file an insurance claim
							</label>
						</div>
						<div class="checkbox">
							<label> <input type="checkbox"
								value="seek advice about your investments"
								name="seekadviceaboutyourinvestments"
								${seekadviceaboutyourinvestments}>seek advice about your
								investments
							</label>
						</div>
						<div class="checkbox">
							<label> <input type="checkbox"
								value="buy securities from us" name="buysecuritiesfromus"
								${buysecuritiesfromus}>buy securities from us
							</label>
						</div>
						<div class="checkbox">
							<label> <input type="checkbox"
								value="sell securities to us" name="sellsecuritiestous"
								${sellsecuritiestous}>sell securities to us
							</label>
						</div>
						<div class="checkbox">
							<label> <input type="checkbox"
								value="direct us to buy securities"
								name="directustobuysecurities" ${directustobuysecurities}>direct
								us to buy securities
							</label>
						</div>
						<div class="checkbox">
							<label> <input type="checkbox"
								value="direct us to sell your securities"
								name="directustosellyoursecurities"
								${directustosellyoursecurities}>direct us to sell your
								securities
							</label>
						</div>
						<div class="checkbox">
							<label> <input type="checkbox"
								value="make deposits or withdrawals from your account"
								name="makedepositsorwithdrawalsfromyouraccount"
								${makedepositsorwithdrawalsfromyouraccount}>make
								deposits or withdrawals from your account
							</label>
						</div>
						<div class="checkbox">
							<label> <input type="checkbox"
								value="enter into an investment advisory contract"
								name="enterintoaninvestmentadvisorycontract"
								${enterintoaninvestmentadvisorycontract}>enter into an
								investment advisory contract
							</label>
						</div>
						<div class="checkbox">
							<label> <input type="checkbox"
								value="give us your income information"
								name="giveusyourincomeinformation"
								${giveusyourincomeinformation}>give us your income
								information
							</label>
						</div>
						<div class="checkbox">
							<label> <input type="checkbox"
								value="provide employment information"
								name="provideemploymentinformation"
								${provideemploymentinformation}>provide employment
								information
							</label>
						</div>
						<div class="checkbox">
							<label> <input type="checkbox"
								value="give us your employment history"
								name="giveusyouremploymenthistory"
								${giveusyouremploymenthistory}>give us your employment
								history
							</label>
						</div>
						<div class="checkbox">
							<label> <input type="checkbox"
								value="tell us about your investment or retirement portfolio"
								name="tellusaboutyourinvestmentorretirementportfolio"
								${tellusaboutyourinvestmentorretirementportfolio}>tell
								us about your investment or retirement portfolio
							</label>
						</div>
						<div class="checkbox">
							<label> <input type="checkbox"
								value="tell us about your investment or retirement earnings"
								name="tellusaboutyourinvestmentorretirementearnings"
								${tellusaboutyourinvestmentorretirementearnings}>tell us
								about your investment or retirement earnings
							</label>
						</div>
						<div class="checkbox">
							<label> <input type="checkbox"
								value="apply for financing" name="applyforfinancing"
								${applyforfinancing}>apply for financing
							</label>
						</div>
						<div class="checkbox">
							<label> <input type="checkbox" value="apply for a lease"
								name="applyforalease" ${applyforalease}>apply for a
								lease
							</label>
						</div>
						<div class="checkbox">
							<label> <input type="checkbox"
								value="provide account information"
								name="provideaccountinformation" ${provideaccountinformation}>provide
								account information
							</label>
						</div>
						<div class="checkbox">
							<label> <input type="checkbox"
								value="give us your contact information"
								name="giveusyourcontactinformation"
								${giveusyourcontactinformation}>give us your contact
								information
							</label>
						</div>
						<div class="checkbox">
							<label> <input type="checkbox" value="pay us by check"
								name="payusbycheck" ${payusbycheck}>pay us by check
							</label>
						</div>
						<div class="checkbox">
							<label> <input type="checkbox"
								value="give us your wage statements"
								name="giveusyourwagestatements" ${giveusyourwagestatements}>give
								us your wage statements
							</label>
						</div>
						<div class="checkbox">
							<label> <input type="checkbox"
								value="provide your mortgage information"
								name="provideyourmortgageinformation"
								${provideyourmortgageinformation}>provide your mortgage
								information
							</label>
						</div>
						<div class="checkbox">
							<label> <input type="checkbox"
								value="make a wire transfer" name="makeawiretransfer"
								${makeawiretransfer}>make a wire transfer
							</label>
						</div>
						<div class="checkbox">
							<label> <input type="checkbox"
								value="tell us who receives the money"
								name="telluswhoreceivesthemoney" ${telluswhoreceivesthemoney}>tell
								us who receives the money
							</label>
						</div>
						<div class="checkbox">
							<label> <input type="checkbox"
								value="tell us where to send the money"
								name="telluswheretosendthemoney" ${telluswheretosendthemoney}>tell
								us where to send the money
							</label>
						</div>
						<div class="checkbox">
							<label> <input type="checkbox"
								value="show your government-issued ID"
								name="showyourgovernment-issuedID"
								${showyourgovernment-issuedID}>show your
								government-issued ID
							</label>
						</div>
						<div class="checkbox">
							<label> <input type="checkbox"
								value="show your driver’s license"
								name="showyourdriver’slicense" ${shouyourdriverslicense}>show
								your driver's license
							</label>
						</div>
						<div class="checkbox">
							<label> <input type="checkbox"
								value="order a commodity futures or option trade"
								name="orderacommodityfuturesoroptiontrade"
								${orderacommodityfuturesoroptiontrade}>order a commodity
								futures or option trade
							</label>
						</div>


						<div class="form-group">
							<label for="exampleInputPassword1">Do you collect
								information from affiliates and/or credit bureaus?</label>
							<div class="radio">
								<label> <input type="radio"
									name="AffiliatesandCreditBureaus"
									id="AffiliatesandCreditBureaus" value="yes"
									${AffiliatesandCreditBureausY}> Yes
								</label>
							</div>
							<div class="radio">
								<label> <input type="radio"
									name="AffiliatesandCreditBureaus"
									id="AffiliatesandCreditBureaus" value="no"
									${AffiliatesandCreditBureausN}> No
								</label> <input type="hidden" id="hidden_AffiliatesandCreditBureaus"
									value="${AffiliatesandCreditBureausN}">
							</div>
						</div>


						<div class="form-group" id="Shareinfowithcompany"
							style="display: none;">
							<label for="exampleInputPassword1">Do you collect
								information from companies?</label>
							<div class="radio">
								<label> <input type="radio" name="optionsRadios"
									id="optionsRadios1" value="option1" checked> Yes
								</label>
							</div>
							<div class="radio">
								<label> <input type="radio" name="optionsRadios"
									id="optionsRadios2" value="option2"> No
								</label>
							</div>
						</div>

						<script>
							if ($("#hidden_AffiliatesandCreditBureaus").val() == "checked") {
								$("#Shareinfowithcompany").show();
							}
							$("input[name='AffiliatesandCreditBureaus']")
									.change(function() {

										if ($(this).val() == "yes") {
											$("#Shareinfowithcompany").hide();
										} else {
											$("#Shareinfowithcompany").show();
										}

									});
						</script>

						<!-- 
						<div class="form-group">
							<label for="exampleInputPassword1">Do you provide opt-out
								form</label>
							<div class="radio">
								<label> <input type="radio" name="provideoptoutform"
									id="provideoptoutform" value="yes" ${provideoptoutformY}>
									Yes
								</label>
							</div>
							<div class="radio">
								<label> <input type="radio" name="provideoptoutform"
									id="provideoptoutform" value="no" ${provideoptoutformN}>
									No
								</label>
							</div>
							<input
								type="hidden" id="hidden_provideoptoutform"
								value="${provideoptoutformY}">
						</div>
						

						<input type="hidden" name="provideoptoutform" value="no">
	 -->
						<div class="form-group" id="whathappenlimitsharing"
							style="display: none">
							<label for="why">What happens when users limit sharing
								for an account that is jointly held with someone else?</label>
							<div class="radio">
								<label> <input type="radio"
									name="whathappenlimitsharing" id="optionsRadios1" value="no">
									Your choices apply to everyone on the account
								</label>
							</div>
							<div class="radio">
								<label> <input type="radio"
									name="whathappenlimitsharing" id="optionsRadios2" value="yes">
									Your choices will apply to everyone on the account - unless you
									tell us otherwise
								</label>
							</div>
						</div>

						<div class="form-group" id="opt-out-types" style="display: none">
							<a href="https://linkpeek.com"
							  onmouseover="document.getElementById('place-holder-4').src='https://farm4.staticflickr.com/3862/14378773765_6eb4ccfe03_b.jpg';"
							  onmouseout="document.getElementById('place-holder-4').src='';">
							<label>What types of opt-out do you want to
								provide?(choose at least 1)</label>
							  <img src="" id="place-holder-4" />
							</a>

							<div class="checkbox">
								<label> <input type="checkbox" value="mail"
									name="optoutmail" ${optoutmail}>mail
								</label>
							</div>
							<div class="checkbox">
								<label> <input type="checkbox" value="online"
									name="optoutonline" ${optoutonline}>online
								</label>
							</div>
							<div class="checkbox">
								<label> <input type="checkbox" value="phone"
									name="optoutphone" ${optoutphone}>phone
								</label>
							</div>
						</div>
						<div class="form-group" id="additionalinfoacct"
							style="display: none">
							<label for="why">Do you want to use customer's account as additional information in the opt-out form</label>
							<div class="radio">
								<label> <input type="radio"
									name="additionalinfoacct" id="optionsRadios1" value="yes">
									Yes
								</label>
							</div>
							<div class="radio">
								<label> <input type="radio"
									name="additionalinfoacct" id="optionsRadios2" value="no">
									No
								</label>
							</div>
						</div>

						<script>
						
						if ($("#hidden_EverydayBusiness_limit").val() == "checked"
								|| $("#hidden_marketpurpose_limit").val() == "checked"
								|| $("#hidden_jointmarket_limit").val() == "checked"
								|| $("#hidden_affeverydaybusi_limit").val() == "checked"
								|| $("#hidden_creditworth").val() == "checked"
								|| $("#hidden_afftomarket").val() == "checked"
								|| $("#hidden_nonafftomarket").val() == "checked") {
							$("#whathappenlimitsharing").show();
							$("#opt-out-types").show();
							$("#additionalinfoacct").show();
						}
						
						
							$("input[name='EverydayBusiness_limit']")
									.change(
											function() {
												if ($(this).val() == "no") {
													$("#whathappenlimitsharing")
															.hide();
													$("#opt-out-types").hide();
												} else {
													$("#whathappenlimitsharing")
															.show();
													$("#opt-out-types").show();
													
													$("#additionalinfoacct").show();
												}
											});

							$("input[name='marketpurpose_limit']")
									.change(
											function() {
												if ($(this).val() == "no") {
													$("#whathappenlimitsharing")
															.hide();
													$("#opt-out-types").hide();
												} else {
													$("#whathappenlimitsharing")
															.show();
													$("#opt-out-types").show();
													$("#additionalinfoacct").show();
												}
											});

							$("input[name='jointmarket_limit']")
									.change(
											function() {
												if ($(this).val() == "no") {
													$("#whathappenlimitsharing")
															.hide();
													$("#opt-out-types").hide();
												} else {
													$("#whathappenlimitsharing")
															.show();
													$("#opt-out-types").show();
													$("#additionalinfoacct").show();
												}
											});

							$("input[name='affeverydaybusi_limit']")
									.change(
											function() {
												if ($(this).val() == "no") {
													$("#whathappenlimitsharing")
															.hide();
													$("#opt-out-types").hide();
												} else {
													$("#whathappenlimitsharing")
															.show();
													$("#opt-out-types").show();
													$("#additionalinfoacct").show();
												}
											});

							$("input[name='creditworth']").change(function() {
								if ($(this).val() == "no") {
									$("#whathappenlimitsharing").hide();
									$("#opt-out-types").hide();
								} else {
									$("#whathappenlimitsharing").show();
									$("#opt-out-types").show();
									$("#additionalinfoacct").show();
								}
							});

							$("input[name='afftomarket']")
									.change(
											function() {
												if ($(this).val() == "no") {
													$("#whathappenlimitsharing")
															.hide();
													$("#opt-out-types").hide();
												} else {
													$("#whathappenlimitsharing")
															.show();
													$("#opt-out-types").show();
													$("#additionalinfoacct").show();
												}
											});

							$("input[name='nonafftomarket']")
									.change(
											function() {
												if ($(this).val() == "no") {
													$("#whathappenlimitsharing")
															.hide();
													$("#opt-out-types").hide();
												} else {
													$("#whathappenlimitsharing")
															.show();
													$("#opt-out-types").show();
													$("#additionalinfoacct").show();
												}
											});
						</script>


						<div class="form-group">
							<a href="https://linkpeek.com"
							  onmouseover="document.getElementById('place-holder-2').src='https://farm4.staticflickr.com/3854/14192129189_61244cb04b_o.png';"
							  onmouseout="document.getElementById('place-holder-2').src='';">
							<label for="why">Are you going to describe state privacy
								law previous in "Other important information" section?</label>
							  <img src="" id="place-holder-2" />
							</a>
							<div class="radio">
								<label> <input type="radio" name="desotherimportinfo"
									id="optionsRadios1" value=yes ${desotherimportinfoY}>
									Yes
								</label>
								<input type="hidden" id="hidden_desotherimportinfo"
								value="${desotherimportinfoY}">
							</div>
							<div class="radio">
								<label> <input type="radio" name="desotherimportinfo"
									id="optionsRadios2" value="no" ${desotherimportinfoN}>
									No
								</label>
							</div>
						</div>

						<div class="form-group"  id="statelawsbelow" style="display: none">
						
							<a href="https://linkpeek.com"
							  onmouseover="document.getElementById('place-holder-6').src='https://farm6.staticflickr.com/5552/14375433791_5c9f0d86f0_b.jpg';"
							  onmouseout="document.getElementById('place-holder-6').src='';">
							<label>Provide information about state laws below</label>
							  <img src="" id="place-holder-6" />
							</a>
							<textarea class="form-control" id="statelawsbelow" name="statelawsbelow" rows="10">${statelawsbelow}</textarea>
							
						</div>
						
						<script>
						if ($("#hidden_desotherimportinfo").val() == "checked") {
							$("#statelawsbelow").show();
						}
					
						$("input[name='desotherimportinfo']")
								.change(
										function() {
											if ($(this).val() == "yes") {
												$("#statelawsbelow").show();
											} else {
												$("#statelawsbelow").hide();
											}
										});
						</script>



						<hr>
						<button type="submit" name="preview" class="btn btn-default">Finish
							and Preview</button>
						<button type="submit" name="saveforlater" class="btn btn-default">Save
							for later</button>
			</form>
		</div>
	</div>
</body>
</html>
