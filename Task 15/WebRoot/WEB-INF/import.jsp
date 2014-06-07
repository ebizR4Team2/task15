<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
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
      <c:forEach var="error" items="${errors}">
			<h4 style="color: red">${error}</h4><br/>
		</c:forEach>
        <form method="post" action="import.do" enctype="multipart/form-data">
          <div class="form-group">
            <label for="exampleInputFile">File input</label>
            <input type="file" name="xml" value="${xml}">
            <p class="help-block">Select the XML file</p>
          </div>
          <button type="submit" class="btn btn-default">Submit</button>
        </form>
      </div>
    </div>

</body>
</html>
