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
			<h3 class="text-muted">Interactive Form Builder</h3>
		</div>
		<div class="content">
			<form role="form" method="post" action="save.do">
				<div class="form-group">
					<label for="nameofinstitution">Enter the name of financial
						institution</label> <input type="text" class="form-control"
						name="nameofinstitution">
				</div>
				<div class="form-group">
					<label for="lastreviseddate">Enter last revised date</label> <input
						type="text" class="form-control" name="revdate">
				</div>
				<div class="form-group">
					<label for="typeofpersonalinfo">What types of personal
						information you collect and share? (Choose minimum of 5)</label>

					<div class="checkbox">
						<label> <input type="checkbox"
							value="social security number" name="socialsecuritynumber"
							checked>social security number
						</label>
					</div>
					<div class="checkbox">
						<label> <input type="checkbox" value="income"
							name="income">income
						</label>
					</div>
					<div class="checkbox">
						<label> <input type="checkbox" value="account balances"
							name="accountbalances">account balances
						</label>
					</div>
					<div class="checkbox">
						<label> <input type="checkbox" value="payment history"
							name="paymenthistory">payment history
						</label>
					</div>
					<div class="checkbox">
						<label> <input type="checkbox" value="transaction history"
							name="transactionhistory">transaction history
						</label>
					</div>
					<div class="checkbox">
						<label> <input type="checkbox"
							value="transaction or loss history"
							name="transactionorlosshistory">transaction or loss
							history
						</label>
					</div>
					<div class="checkbox">
						<label> <input type="checkbox" value="credit history"
							name="credithistory">credit history
						</label>
					</div>
					<div class="checkbox">
						<label> <input type="checkbox" value="credit scores"
							name="creditscores">credit scores
						</label>
					</div>
					<div class="checkbox">
						<label> <input type="checkbox" value="assets"
							name="assets">assets
						</label>
					</div>
					<div class="checkbox">
						<label> <input type="checkbox"
							value="investment experience" name="investmentexperience">investment
							experience
						</label>
					</div>
					<div class="checkbox">
						<label> <input type="checkbox"
							value="credit-based insurance scores"
							name="credit-basedinsurancescores">credit-based insurance
							scores
						</label>
					</div>
					<div class="checkbox">
						<label> <input type="checkbox"
							value="insurance claim history" name="insuranceclaimhistory">insurance
							claim history
						</label>
					</div>
					<div class="checkbox">
						<label> <input type="checkbox" value="medical information"
							name="medicalinformation">medical information
						</label>
					</div>
					<div class="checkbox">
						<label> <input type="checkbox" value="overdraft history"
							name="overdrafthistory">overdraft history
						</label>
					</div>
					<div class="checkbox">
						<label> <input type="checkbox" value="purchase history"
							name="purchasehistory">purchase history
						</label>
					</div>
					<div class="checkbox">
						<label> <input type="checkbox"
							value="account transactions" name="accounttransactions">account
							transactions
						</label>
					</div>
					<div class="checkbox">
						<label> <input type="checkbox" value="risk tolerance"
							name="risktolerance">risk tolerance
						</label>
					</div>
					<div class="checkbox">
						<label> <input type="checkbox"
							value="medical-related debts" name="medical-relateddebts">medical-related
							debts
						</label>
					</div>
					<div class="checkbox">
						<label> <input type="checkbox"
							value="credit card or other debt" name="creditcardorotherdebt">credit
							card or other debt
						</label>
					</div>
					<div class="checkbox">
						<label> <input type="checkbox"
							value="mortgage rates and payments"
							name="mortgageratesandpayments">mortgage rates and
							payments
						</label>
					</div>
					<div class="checkbox">
						<label> <input type="checkbox" value="retirement assets"
							name="retirementassets">retirement assets
						</label>
					</div>
					<div class="checkbox">
						<label> <input type="checkbox"
							value="checking account information"
							name="checkingaccountinformation">checking account
							information
						</label>
					</div>
					<div class="checkbox">
						<label> <input type="checkbox"
							value="employment information" name="employmentinformation">employment
							information
						</label>
					</div>
					<div class="checkbox">
						<label> <input type="checkbox"
							value="wire transfer instructions"
							name="wiretransferinstructions">wire transfer
							instructions
						</label>
					</div>






					<div class="form-group">
						<label for="exampleInputPassword1">Do you have affiliate
							program</label>
						<div class="radio">
							<label> <input type="radio" name="haveaffiliate"
								id="optionsRadios1" value="yes"> Yes
							</label>
						</div>
						<div class="radio">
							<label> <input type="radio" name="haveaffiliate"
								id="optionsRadios2" value="no"> No
							</label>
						</div>
					</div>

					<script>
						$("input[name='haveaffiliate']").change(function() {

							if ($(this).val() == "yes") {
								$("#sharepersonalinfo").show();
							} else {
								$("#sharepersonalinfo").hide();
							}

						});
					</script>

					<div class="form-group" id="sharepersonalinfo"
						style="display: none">
						<label for="exampleInputEmail1">Do you share personal
							information with affiliates?</label>
						<div class="radio">
							<label> <input type="radio" name="sharepersonalinfo"
								id="sharepersonalinfo" value="yes"> Yes
							</label>
						</div>
						<div class="radio">
							<label> <input type="radio" name="sharepersonalinfo"
								id="sharepersonalinfo" value="no"> No
							</label>
						</div>
					</div>
					<script>
						$("input[name='sharepersonalinfo']").change(function() {

							if ($(this).val() == "yes") {
								$("#whoareyouraffiliates").show();
							} else {
								$("#whoareyouraffiliates").hide();
							}

						});
					</script>
					<div class="form-group" id="whoareyouraffiliates"
						style="display: none">
						<label for="exampleInputPassword1">Who are your
							affiliates?</label>
						<textarea class="form-control" rows="3"
							name="whoareyouraffiliates"></textarea>
					</div>
					<div class="form-group">
						<label for="exampleInputPassword1">Do you share
							information with non-affiliates?</label>
						<div class="radio">
							<label> <input type="radio"
								name="sharepersonalinfononaffiliates"
								id="sharepersonalinfononaffiliates" value="yes"> Yes
							</label>
						</div>
						<div class="radio">
							<label> <input type="radio"
								name="sharepersonalinfononaffiliates"
								id="sharepersonalinfononaffiliates" value="no"> No
							</label>
						</div>
					</div>
					<script>
						$("input[name='sharepersonalinfononaffiliates']")
								.change(function() {

									if ($(this).val() == "yes") {
										$("#whoareyournonaffiliates").show();
									} else {
										$(whoareyournonaffiliates).hide();
									}

								});
					</script>
					<div class="form-group" id="whoareyournonaffiliates"
						style="display: none;">
						<label for="exampleInputPassword1">Who are your
							non-affiliates?</label>
						<textarea class="form-control" rows="3"
							name="whoareyournonaffiliates"></textarea>
					</div>
					<div class="form-group">
						<label for="exampleInputPassword1">Do you engage in joint
							marketing?</label>
						<div class="radio">
							<label> <input type="radio" name="jointmarketing"
								id="jointmarketing" value="yes"> Yes
							</label>
						</div>
						<div class="radio">
							<label> <input type="radio" name="jointmarketing"
								id="jointmarketing" value="no"> No
							</label>
						</div>
					</div>
					<script>
						$("input[name='jointmarketing']").change(function() {

							if ($(this).val() == "yes") {
								$("#whoareyourmarketingpartners").show();
							} else {
								$(whoareyourmarketingpartners).hide();
							}

						});
					</script>
					<div class="form-group" id="whoareyourmarketingpartners"
						style="display: none;">
						<label for="exampleInputPassword1">Who are your joint
							marketing partners?</label>
						<textarea class="form-control" rows="3"
							name="whoareyourmarketingpartners"></textarea>
					</div>


					<table class="table table-bordered">
						<thead>
							<tr>
								<th>Reasons you can share your customer's information</th>
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
											id="EverydayBusiness1" value="yes"> Yes
										</label>
									</div>
									<div class="radio">
										<label> <input type="radio" name="EverydayBusiness"
											id="EverydayBusiness2" value="no"> No
										</label>
									</div>
								</td>
								<td>

									<div id="EverydayBusiness_limit_div">
										<div class="radio">
											<label> <input type="radio"
												name="EverydayBusiness_limit" id="EverydayBusiness_limit"
												value="yes"> Yes
											</label>
										</div>
										<div class="radio">
											<label> <input type="radio"
												name="EverydayBusiness_limit" id="EverydayBusiness_limit"
												value="no"> No
											</label>
										</div>
									</div>
									<div id="wedonotshare" style="display: none">
										<span>We do not share</span>
									</div> <script>
										$("input[name='EverydayBusiness']")
												.change(
														function() {

															if ($(this).val() == "no") {
																$(
																		"#wedonotshare")
																		.show();
																$(
																		"#EverydayBusiness_limit_div")
																		.hide();
															} else {
																$(
																		"#wedonotshare")
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
										<label> <input type="radio" name="optionsRadios"
											id="optionsRadios1" value="option1"> Yes
										</label>
									</div>
									<div class="radio">
										<label> <input type="radio" name="optionsRadios"
											id="optionsRadios2" value="option2"> No
										</label>
									</div>
								</td>
								<td>
									<div class="radio">
										<label> <input type="radio" name="optionsRadios"
											id="optionsRadios1" value="option1"> Yes
										</label>
									</div>
									<div class="radio">
										<label> <input type="radio" name="optionsRadios"
											id="optionsRadios2" value="option2"> No
										</label>
									</div>
								</td>
							</tr>
							<tr>
								<td>For joint marketing with other financial companies</td>
								<td>
									<div class="radio">
										<label> <input type="radio" name="optionsRadios"
											id="optionsRadios1" value="option1"> Yes
										</label>
									</div>
									<div class="radio">
										<label> <input type="radio" name="optionsRadios"
											id="optionsRadios2" value="option2"> No
										</label>
									</div>
								</td>
								<td>
									<div class="radio">
										<label> <input type="radio" name="optionsRadios"
											id="optionsRadios1" value="option1"> Yes
										</label>
									</div>
									<div class="radio">
										<label> <input type="radio" name="optionsRadios"
											id="optionsRadios2" value="option2"> No
										</label>
									</div>
								</td>
							</tr>
							<tr>
								<td>For afiliate's everyday business purpose information
									about your transactions and experiences</td>
								<td>
									<div class="radio">
										<label> <input type="radio" name="optionsRadios"
											id="optionsRadios1" value="option1"> Yes
										</label>
									</div>
									<div class="radio">
										<label> <input type="radio" name="optionsRadios"
											id="optionsRadios2" value="option2"> No
										</label>
									</div>
								</td>
								<td>
									<div class="radio">
										<label> <input type="radio" name="optionsRadios"
											id="optionsRadios1" value="option1"> Yes
										</label>
									</div>
									<div class="radio">
										<label> <input type="radio" name="optionsRadios"
											id="optionsRadios2" value="option2"> No
										</label>
									</div>
								</td>
							</tr>

							<tr>
								<td>For affiliates' everyday business purposes information
									about your creditworthiness</td>
								<td>
									<div class="radio">
										<label> <input type="radio" name="optionsRadios"
											id="optionsRadios1" value="option1"> Yes
										</label>
									</div>
									<div class="radio">
										<label> <input type="radio" name="optionsRadios"
											id="optionsRadios2" value="option2"> No
										</label>
									</div>
								</td>
								<td>
									<div class="radio">
										<label> <input type="radio" name="optionsRadios"
											id="optionsRadios1" value="option1"> Yes
										</label>
									</div>
									<div class="radio">
										<label> <input type="radio" name="optionsRadios"
											id="optionsRadios2" value="option2"> No
										</label>
									</div>
								</td>
							</tr>

							<tr style="display: none" id="sharepersonalinfo">
								<td>For our affiliates to market to customer</td>
								<td>
									<div class="radio">
										<label> <input type="radio" name="optionsRadios"
											id="optionsRadios1" value="option1"> Yes
										</label>
									</div>
									<div class="radio">
										<label> <input type="radio" name="optionsRadios"
											id="optionsRadios2" value="option2"> No
										</label>
									</div>
								</td>
								<td>
									<div class="radio">
										<label> <input type="radio" name="optionsRadios"
											id="optionsRadios1" value="option1"> Yes
										</label>
									</div>
									<div class="radio">
										<label> <input type="radio" name="optionsRadios"
											id="optionsRadios2" value="option2"> No
										</label>
									</div>
								</td>
							</tr>

							<tr>
								<td>For nonaffiliates to market to customer</td>
								<td>
									<div class="radio">
										<label> <input type="radio" name="optionsRadios"
											id="optionsRadios1" value="option1"> Yes
										</label>
									</div>
									<div class="radio">
										<label> <input type="radio" name="optionsRadios"
											id="optionsRadios2" value="option2"> No
										</label>
									</div>
								</td>
								<td>
									<div class="radio">
										<label> <input type="radio" name="optionsRadios"
											id="optionsRadios1" value="option1"> Yes
										</label>
									</div>
									<div class="radio">
										<label> <input type="radio" name="optionsRadios"
											id="optionsRadios2" value="option2"> No
										</label>
									</div>
								</td>
							</tr>
						</tbody>
					</table>

					<div class="form-group">
						<label for="exampleInputEmail1">Enter your phone number</label> <input
							type="tel" class="form-control" id="exampleInputEmail1"
							name="phoneNumber">
					</div>

					<div class="form-group">
						<label for="exampleInputEmail1">Enter your website domain
							name</label> <input type="url" class="form-control"
							id="exampleInputEmail1" name="websiteDomainName">
					</div>

					<form role="form">
						<div class="form-group">
							<label for="exampleInputEmail1">Is this privacy policy
								jointly provided by two or more financial institutions?</label>
							<div class="radio">
								<label> <input type="radio" name="JointPolicy"
									id="JointPolicy" value="yes"> Yes
								</label>
							</div>
							<div class="radio">
								<label> <input type="radio" name="JointPolicy"
									id="JointPolicy" value="no"> No
								</label>
							</div>
						</div>
						<script>
							$("input[name='JointPolicy']").change(function() {

								if ($(this).val() == "yes") {
									$("#Whoisprovidingthisnotice").show();
								} else {
									$("#Whoisprovidingthisnotice").hide();
								}

							});
						</script>
						<div class="form-group" id="Whoisprovidingthisnotice"
							style="display: none;">
							<label for="who">Who is providing this notice?</label> <input
								type="text" class="form-control" id="who">
						</div>
						<div class="form-group">
							<label for="who">How do you protect user's personal
								information?</label>
							<textarea class="form-control" rows="3"></textarea>
						</div>
						<div class="form-group">
							<label for="exampleInputPassword1">How do you collect
								user's personal information?</label>


							<div class="checkbox">
								<label> <input type="checkbox" value="open an account"
									name="openanaccount">open an account
								</label>
							</div>
							<div class="checkbox">
								<label> <input type="checkbox" value="deposit money"
									name="depositmoney">deposit money
								</label>
							</div>
							<div class="checkbox">
								<label> <input type="checkbox" value="pay your bills"
									name="payyourbills">pay your bills
								</label>
							</div>
							<div class="checkbox">
								<label> <input type="checkbox" value="apply for a loan"
									name="applyforaloan">apply for a loan
								</label>
							</div>
							<div class="checkbox">
								<label> <input type="checkbox"
									value="use your credit or debit card"
									name="useyourcreditordebitcard">use your credit or
									debit card
								</label>
							</div>
							<div class="checkbox">
								<label> <input type="checkbox"
									value="seek financial or tax advice"
									name="seekfinancialortaxadvice">seek financial or tax
									advice
								</label>
							</div>
							<div class="checkbox">
								<label> <input type="checkbox"
									value="apply for insurance" name="applyforinsurance">apply
									for insurance
								</label>
							</div>
							<div class="checkbox">
								<label> <input type="checkbox"
									value="pay insurance premiums" name="payinsurancepremiums">pay
									insurance premiums
								</label>
							</div>
							<div class="checkbox">
								<label> <input type="checkbox"
									value="file an insurance claim" name="fileaninsuranceclaim">file
									an insurance claim
								</label>
							</div>
							<div class="checkbox">
								<label> <input type="checkbox"
									value="seek advice about your investments"
									name="seekadviceaboutyourinvestments">seek advice about
									your investments
								</label>
							</div>
							<div class="checkbox">
								<label> <input type="checkbox"
									value="buy securities from us" name="buysecuritiesfromus">buy
									securities from us
								</label>
							</div>
							<div class="checkbox">
								<label> <input type="checkbox"
									value="sell securities to us" name="sellsecuritiestous">sell
									securities to us
								</label>
							</div>
							<div class="checkbox">
								<label> <input type="checkbox"
									value="direct us to buy securities"
									name="directustobuysecurities">direct us to buy
									securities
								</label>
							</div>
							<div class="checkbox">
								<label> <input type="checkbox"
									value="direct us to sell your securities"
									name="directustosellyoursecurities">direct us to sell
									your securities
								</label>
							</div>
							<div class="checkbox">
								<label> <input type="checkbox"
									value="make deposits or withdrawals from your account"
									name="makedepositsorwithdrawalsfromyouraccount">make
									deposits or withdrawals from your account
								</label>
							</div>
							<div class="checkbox">
								<label> <input type="checkbox"
									value="enter into an investment advisory contract"
									name="enterintoaninvestmentadvisorycontract">enter into
									an investment advisory contract
								</label>
							</div>
							<div class="checkbox">
								<label> <input type="checkbox"
									value="give us your income information"
									name="giveusyourincomeinformation">give us your income
									information
								</label>
							</div>
							<div class="checkbox">
								<label> <input type="checkbox"
									value="provide employment information"
									name="provideemploymentinformation">provide employment
									information
								</label>
							</div>
							<div class="checkbox">
								<label> <input type="checkbox"
									value="give us your employment history"
									name="giveusyouremploymenthistory">give us your
									employment history
								</label>
							</div>
							<div class="checkbox">
								<label> <input type="checkbox"
									value="tell us about your investment or retirement portfolio"
									name="tellusaboutyourinvestmentorretirementportfolio">tell
									us about your investment or retirement portfolio
								</label>
							</div>
							<div class="checkbox">
								<label> <input type="checkbox"
									value="tell us about your investment or retirement earnings"
									name="tellusaboutyourinvestmentorretirementearnings">tell
									us about your investment or retirement earnings
								</label>
							</div>
							<div class="checkbox">
								<label> <input type="checkbox"
									value="apply for financing" name="applyforfinancing">apply
									for financing
								</label>
							</div>
							<div class="checkbox">
								<label> <input type="checkbox" value="apply for a lease"
									name="applyforalease">apply for a lease
								</label>
							</div>
							<div class="checkbox">
								<label> <input type="checkbox"
									value="provide account information"
									name="provideaccountinformation">provide account
									information
								</label>
							</div>
							<div class="checkbox">
								<label> <input type="checkbox"
									value="give us your contact information"
									name="giveusyourcontactinformation">give us your
									contact information
								</label>
							</div>
							<div class="checkbox">
								<label> <input type="checkbox" value="pay us by check"
									name="payusbycheck">pay us by check
								</label>
							</div>
							<div class="checkbox">
								<label> <input type="checkbox"
									value="give us your wage statements"
									name="giveusyourwagestatements">give us your wage
									statements
								</label>
							</div>
							<div class="checkbox">
								<label> <input type="checkbox"
									value="provide your mortgage information"
									name="provideyourmortgageinformation">provide your
									mortgage information
								</label>
							</div>
							<div class="checkbox">
								<label> <input type="checkbox"
									value="make a wire transfer" name="makeawiretransfer">make
									a wire transfer
								</label>
							</div>
							<div class="checkbox">
								<label> <input type="checkbox"
									value="tell us who receives the money"
									name="telluswhoreceivesthemoney">tell us who receives
									the money
								</label>
							</div>
							<div class="checkbox">
								<label> <input type="checkbox"
									value="tell us where to send the money"
									name="telluswheretosendthemoney">tell us where to send
									the money
								</label>
							</div>
							<div class="checkbox">
								<label> <input type="checkbox"
									value="show your government-issued ID"
									name="showyourgovernment-issuedID">show your
									government-issued ID
								</label>
							</div>
							<div class="checkbox">
								<label> <input type="checkbox"
									value="show your driver’s license"
									name="showyourdriver’slicense">show your driver’s
									license
								</label>
							</div>
							<div class="checkbox">
								<label> <input type="checkbox"
									value="order a commodity futures or option trade"
									name="orderacommodityfuturesoroptiontrade">order a
									commodity futures or option trade
								</label>
							</div>


							<div class="form-group">
								<label for="exampleInputPassword1">Do you collect
									information from affiliates and/or credit bureaus?</label>
								<div class="radio">
									<label> <input type="radio"
										name="AffiliatesandCreditBureaus"
										id="AffiliatesandCreditBureaus" value="yes"> Yes
									</label>
								</div>
								<div class="radio">
									<label> <input type="radio"
										name="AffiliatesandCreditBureaus"
										id="AffiliatesandCreditBureaus" value="no"> No
									</label>
								</div>
							</div>
							<script>
								$("input[name='AffiliatesandCreditBureaus']")
										.change(
												function() {

													if ($(this).val() == "yes") {
														$(
																"#Shareinfowithcompany")
																.hide();
													} else {
														$(
																"#Shareinfowithcompany")
																.show();
													}

												});
							</script>
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



							<div class="form-group">
								<label for="why">Are you going to describe state privacy
									law previous in "Other important information" section?</label>
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

							<div class="form-group">
								<label for="why">What happens when users limit sharing
									for an account that is jointly held with someone else?</label>
								<div class="radio">
									<label> <input type="radio" name="optionsRadios"
										id="optionsRadios1" value="option1" checked> Your
										choices apply to everyone on the account
									</label>
								</div>
								<div class="radio">
									<label> <input type="radio" name="optionsRadios"
										id="optionsRadios2" value="option2"> Your choices will
										apply to everyone on the account - unless you tell us
										otherwise
									</label>
								</div>
							</div>

							<div class="form-group">
								<label for="exampleInputEmail1"> Provide information
									about state laws below</label>
								<textarea class="form-control" rows="10"></textarea>
							</div>



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
