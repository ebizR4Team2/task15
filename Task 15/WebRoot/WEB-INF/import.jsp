<!doctype html>
<html>
<head>
<meta charset="UTF-8">
<title>Interactive Form Builder</title>
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/jumbotron-narrow.css" rel="stylesheet">
</head>

<body>
	<div class="container">
      <div class="header">
        <ul class="nav nav-pills pull-right">
         <li><a href="index.do">Build</a></li>
         <li class="active"><a href="import.do">Import</a></li>
        </ul>
        <h3 class="text-muted">Interactive Form Builder</h3>
      </div>
      <div class="content">
        <form role="form">
          <div class="form-group">
            <label for="exampleInputFile">File input</label>
            <input type="file" id="exampleInputFile">
            <p class="help-block">Select the XML file</p>
          </div>
   
          <button type="submit" class="btn btn-default">Submit</button>
        </form>
      </div>
    </div>

</body>
</html>
