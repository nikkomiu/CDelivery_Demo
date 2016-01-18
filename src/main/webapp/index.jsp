<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Dynatrace Continuous Delivery</title>
</head>
<body>
	<h2>Dynatrace Continuous Delivery Demo</h2>
	<script src="http://code.jquery.com/jquery-latest.min.js"></script>

	<script>
		$(document).ready(function() {
			$('#rundb').click(function(event) {
				$.get('RunDBServlet',function(responseText) {
				});
			});
		});
	</script>
	<form id="form1">
		<input type="button" id="rundb" value="Run DB Functions"/>
		<input type="button" id="problem1" value="Run Problem 1"/>
		<input type="button" id="web services" value="Run Web Services"/>
		<input type="button" id="async-worker" value="Run Async Worker"/>
	</form>
</body>
</html>
