<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<link href="resources/css/bootstrap.min.css" rel="stylesheet">

<script type="text/javascript" src="resources/js/jquery.js"></script>
<script type="text/javascript" src="resources/js/bootstrap.min.js"></script>

<title>POS</title>
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col-xs-8">
				<h2>Announcements here!</h2>
			</div>
			<div class="col-xs-4">
				<h2>Log in here</h2>
				<form method="POST" action="login">
					<div class="form-group">
						<label for="username">Username</label> 
						<input type="text" class="form-control" name="username" id="username" placeholder="Username">
					</div>
					<div class="form-group">
						<label for="pw">Password</label> <input type="password" name="password" class="form-control" id="pw" placeholder="Password">
					</div>
					<button type="submit" class="btn btn-info">Submit</button>
				</form>
			</div>
		</div>
	</div>
	<%@ include file="footer.jsp"%>
</body>
</html>