<!doctype html>
<html>
<head>
<meta charset="UTF-8">
<title>Interactive Form Builder</title>
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/jumbotron-narrow.css" rel="stylesheet">
<script type="text/javascript" src="http://code.jquery.com/jquery-1.11.0.js"></script>
</head>

<body>
	<div class="container">
      <div class="header">
        <ul class="nav nav-pills pull-right">
          <li class="active"><a href="index.html">Build</a></li>
          <li><a href="import.html">Import</a></li>
        </ul>
        <h3 class="text-muted">Interactive Form Builder</h3>
      </div>
      <div class="content">
        <form role="form">
          <div class="form-group">
            <label for="exampleInputEmail1">Enter the name of financial institution</label>
            <input type="text" class="form-control" id="exampleInputEmail1" >
          </div>
          <div class="form-group">
            <label for="exampleInputPassword1">Enter last revised date</label>
            <input type="text" class="form-control" id="exampleInputPassword1" >
          </div>
          <div class="form-group">
            <label for="exampleInputPassword1">What types of personal information you collect and share? (Choose minimum of 5)</label>
            <div class="checkbox">
                  <label>
                    <input type="checkbox" value="" checked disabled>
                    social security number
                  </label>
            </div>
            <div class="checkbox">
                <label>
                    <input type="checkbox" value="">
                    income
                </label>
            </div>
            <div class="checkbox">
                <label>
                    <input type="checkbox" value="">
                    account balances
                </label>
            </div>
            <div class="checkbox">
                <label>
                    <input type="checkbox" value="">
                    payment history
                </label>
            </div>
            <div class="checkbox">
                <label>
                    <input type="checkbox" value="">
                    transaction history
                </label>
            </div>
            <div class="checkbox">
                <label>
                    <input type="checkbox" value="">
                    transaction or loss history
                </label>
            </div>
            <div class="checkbox">
                <label>
                    <input type="checkbox" value="">
                    credit history
                </label>
            </div><div class="checkbox">
                <label>
                    <input type="checkbox" value="">
                    credit scores
                </label>
            </div>
            <div class="checkbox">
                <label>
                    <input type="checkbox" value="">
                     assets
                </label>
            </div>
            <div class="checkbox">
                <label>
                    <input type="checkbox" value="">
                     investment experience
                </label>
            </div>
            
            <div class="checkbox">
                <label>
                    <input type="checkbox" value="">
                    credit-based insurance scores
                </label>
            </div>
            
            <div class="checkbox">
                <label>
                    <input type="checkbox" value="">
                    insurance claim history
                </label>
            </div>
            <div class="checkbox">
                <label>
                    <input type="checkbox" value="">
                    medical information
                </label>
            </div>
            <div class="checkbox">
                <label>
                    <input type="checkbox" value="">
                    overdraft history
                </label>
            </div>
            <div class="checkbox">
                <label>
                    <input type="checkbox" value="">
                    purchase history
                </label>
            </div>
            <div class="checkbox">
                <label>
                    <input type="checkbox" value="">
                    account transactions
                </label>
            </div>
            <div class="checkbox">
                <label>
                    <input type="checkbox" value="">
                    risk tolerance
                </label>
            </div>
            <div class="checkbox">
                <label>
                    <input type="checkbox" value="">
                    medical-related debts
                </label>
            </div>
            <div class="checkbox">
                <label>
                    <input type="checkbox" value="">
                    credit card or other debt
                </label>
            </div>
            
            <div class="checkbox">
                <label>
                    <input type="checkbox" value="">
                    mortgage rates and payments
                </label>
            </div>
            <div class="checkbox">
                <label>
                    <input type="checkbox" value="">
                    retirement assets
                </label>
            </div>
            <div class="checkbox">
                <label>
                    <input type="checkbox" value="">
                    checking account information
                </label>
            </div>
            <div class="checkbox">
                <label>
                    <input type="checkbox" value="">
                    employment information
                </label>
            </div>
            <div class="checkbox">
                <label>
                    <input type="checkbox" value="">
                   wire transfer instructions
                </label>
            </div>
            
            <div class="form-group">
            	<label for="exampleInputPassword1">Do you have affiliate program</label>
                <div class="radio">
                  <label>
                    <input type="radio" name="optionsRadios" id="optionsRadios1" value="option1">
                    Yes
                  </label>
                </div>
                <div class="radio">
                  <label>
                    <input type="radio" name="optionsRadios" id="optionsRadios2" value="option2">
                    No
                  </label>
                </div>
            </div>
            
            <table class="table table-bordered">
            	<thead>
              		<tr>
                    	<th>
                        Reasons you can share your customer's information
                      </th>
                      <th>
                      	Do you share?
                      </th>
                      <th>
                      	Can customer limit this sharing?
                      </th>
                  </tr>  
              </thead>
              <tbody>
              		<tr>
                    	<td>
                        	For our everyday business purposes-such as to process your transactions, maintain your account(s), respond to court orders and legal investigations, or report to credit bureaus
                      </td>
                      <td>
                 <div class="radio">
                  <label>
                    <input type="radio" name="EverydayBusiness" id="EverydayBusiness1" value="yes">
                    Yes
                  </label>
                </div>
                <div class="radio">
                  <label>
                    <input type="radio" name="EverydayBusiness" id="EverydayBusiness2" value="no">
                    No
                  </label>
                </div>
                      </td>
                      <td>
                      
                  <div id="EverydayBusiness_limit_div">
                  <div class="radio">
                  <label>
                    <input type="radio" name="EverydayBusiness_limit" id="EverydayBusiness_limit" value="yes">
                    Yes
                  </label>
                </div>
                <div class="radio">
                  <label>
                    <input type="radio" name="EverydayBusiness_limit" id="EverydayBusiness_limit" value="no">
                    No
                  </label>
                </div>
                </div>
                <div id="wedonotshare" style="display:none"><span>We do not share</span></div>
                <script>
						$("input[name='EverydayBusiness']").change(function(){
						   
							if($(this).val()=="no")
							{
								$("#wedonotshare").show();
								$("#EverydayBusiness_limit_div").hide();
							}
							else
							{
								 $("#wedonotshare").hide(); 
								 $("#EverydayBusiness_limit_div").show();
							}
							
						});
                </script>
                      </td>
                  </tr>
                 <tr>
                    	<td>
                       For our marketing purposes-with service providers we use to offer our products and services to you (please see below to limit the ways we contact you)
                      </td>
                      <td>
                 <div class="radio">
                  <label>
                    <input type="radio" name="optionsRadios" id="optionsRadios1" value="option1">
                    Yes
                  </label>
                </div>
                <div class="radio">
                  <label>
                    <input type="radio" name="optionsRadios" id="optionsRadios2" value="option2">
                    No
                  </label>
                </div>
                      </td>
                      <td>
                     <div class="radio">
                  <label>
                    <input type="radio" name="optionsRadios" id="optionsRadios1" value="option1">
                    Yes
                  </label>
                </div>
                <div class="radio">
                  <label>
                    <input type="radio" name="optionsRadios" id="optionsRadios2" value="option2">
                    No
                  </label>
                </div>
                      </td>
                  </tr>
                <tr>
                    	<td>
                        	For joint marketing with other financial companies
                      </td>
                      <td>
                 <div class="radio">
                  <label>
                    <input type="radio" name="optionsRadios" id="optionsRadios1" value="option1">
                    Yes
                  </label>
                </div>
                <div class="radio">
                  <label>
                    <input type="radio" name="optionsRadios" id="optionsRadios2" value="option2">
                    No
                  </label>
                </div>
                      </td>
                      <td>
                     <div class="radio">
                  <label>
                    <input type="radio" name="optionsRadios" id="optionsRadios1" value="option1">
                    Yes
                  </label>
                </div>
                <div class="radio">
                  <label>
                    <input type="radio" name="optionsRadios" id="optionsRadios2" value="option2">
                    No
                  </label>
                </div>
                      </td>
                  </tr>
              </tbody>
            </table>
            
            <div class="form-group">
            <label for="exampleInputEmail1">Enter your phone number</label>
            <input type="tel" class="form-control" id="exampleInputEmail1" >
          </div>
            
            <div class="form-group">
            <label for="exampleInputEmail1">Enter your website domain name</label>
            <input type="url" class="form-control" id="exampleInputEmail1" >
          </div>
            
          </div>
          
          <!--
          <div class="checkbox">
            <label>
              <input type="checkbox"> Check me out
            </label>
          </div>
          -->
          
          
          <button type="submit" class="btn btn-default">Save</button>
          <button type="submit" class="btn btn-default">Save and continue</button>
        </form>
      </div>
    </div>

</body>
</html>
