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
			<form role="form">
				<div class="form-group">
					<label for="nameofinstitution">Enter the name of financial
						institution</label> <input type="text" class="form-control"
						name="nameofinstitution">
				</div>
				<div class="form-group">
					<label for="lastreviseddate">Enter last revised date</label>
					<input type="text" class="form-control" name="lastreviseddate">
				</div>
				<div class="form-group">
					<label for="typeofpersonalinfo">What types of personal
						information you collect and share? (Choose minimum of 5)</label>
					<div class="checkbox">
						<label> <input type="checkbox" name="ssn" value="" checked disabled>
							social security number
						</label>
					</div>
					<div class="checkbox">
						<label> <input type="checkbox" name="income" value=""> income
						</label>
					</div>
					<div class="checkbox">
						<label> <input type="checkbox" name="accountBalance" value=""> account
							balances
						</label>
					</div>
					<div class="checkbox">
						<label> <input type="checkbox" name="paymentHistory" value=""> payment
							history
						</label>
					</div>
					<div class="checkbox">
						<label> <input type="checkbox" name="transactionHistory" value="">
							transaction history
						</label>
					</div>
					<div class="checkbox">
						<label> <input type="checkbox" name="lossHistory" value="">
							transaction or loss history
						</label>
					</div>
					<div class="checkbox">
						<label> <input type="checkbox" value=""> credit
							history
						</label>
					</div>
					<div class="checkbox">
						<label> <input type="checkbox" value=""> credit
							scores
						</label>
					</div>
					<div class="checkbox">
						<label> <input type="checkbox" value=""> assets
						</label>
					</div>
					<div class="checkbox">
						<label> <input type="checkbox" value="">
							investment experience
						</label>
					</div>

					<div class="checkbox">
						<label> <input type="checkbox" value="">
							credit-based insurance scores
						</label>
					</div>

					<div class="checkbox">
						<label> <input type="checkbox" value=""> insurance
							claim history
						</label>
					</div>
					<div class="checkbox">
						<label> <input type="checkbox" value=""> medical
							information
						</label>
					</div>
					<div class="checkbox">
						<label> <input type="checkbox" value=""> overdraft
							history
						</label>
					</div>
					<div class="checkbox">
						<label> <input type="checkbox" value=""> purchase
							history
						</label>
					</div>
					<div class="checkbox">
						<label> <input type="checkbox" value=""> account
							transactions
						</label>
					</div>
					<div class="checkbox">
						<label> <input type="checkbox" value=""> risk
							tolerance
						</label>
					</div>
					<div class="checkbox">
						<label> <input type="checkbox" value="">
							medical-related debts
						</label>
					</div>
					<div class="checkbox">
						<label> <input type="checkbox" value=""> credit
							card or other debt
						</label>
					</div>

					<div class="checkbox">
						<label> <input type="checkbox" value=""> mortgage
							rates and payments
						</label>
					</div>
					<div class="checkbox">
						<label> <input type="checkbox" value="">
							retirement assets
						</label>
					</div>
					<div class="checkbox">
						<label> <input type="checkbox" value=""> checking
							account information
						</label>
					</div>
					<div class="checkbox">
						<label> <input type="checkbox" value="">
							employment information
						</label>
					</div>
					<div class="checkbox">
						<label> <input type="checkbox" value=""> wire
							transfer instructions
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

					<div class="form-group" id="sharepersonalinfo" style="display:none">
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
						<textarea class="form-control" rows="3"></textarea>
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
						<textarea class="form-control" rows="3"></textarea>
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
						<textarea class="form-control" rows="3"></textarea>
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
									customer's transactions, maintain customer's account(s), respond to court
									orders and legal investigations, or report to credit bureaus</td>
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
								<td>For marketing purposes-with service providers you
									use to offer your products and services to customer</td>
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
								<td>For afiliate's everyday business purpose information about your transactions and experiences 
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
								<td>For affiliates' everyday business purposes information about your creditworthiness 
								
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
							
							<tr style="display:none" id="sharepersonalinfo">
								<td  >
								For our affiliates to market to customer
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
								<td>
								For nonaffiliates to market to customer 
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
							type="tel" class="form-control" id="exampleInputEmail1">
					</div>

					<div class="form-group">
						<label for="exampleInputEmail1">Enter your website domain
							name</label> <input type="url" class="form-control"
							id="exampleInputEmail1">
					</div>

				</div>


				<button type="submit" class="btn btn-default">Save and download XML for current step</button>
				&nbsp;&nbsp;&nbsp;&nbsp;
				
			</form>
			<br>
			<a href="continue.do"><button class="btn btn-primary">Continue the step</button></a>
		</div>
	</div>

</body>
</html>
