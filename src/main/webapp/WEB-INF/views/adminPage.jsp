<!-- 
/* -------------------------------------------------------------------------
 * Unauthorized copying of this file, via any medium is strictly prohibited
 * Proprietary and confidential
 * Copyright (C) Moneytor
 * -------------------------------------------------------------------------
 -->
 <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
	<head>

  		<!-- Standard Meta -->
  		<meta charset="utf-8" />
  		<META HTTP-EQUIV="CACHE-CONTROL" CONTENT="NO-CACHE">
		<META HTTP-EQUIV="EXPIRES" CONTENT="01 Jan 1970 00:00:00 GMT">
		<META HTTP-EQUIV="PRAGMA" CONTENT="NO-CACHE">
  		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
  		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0">

	
	  	<!-- Site Properities -->
	  	<title>Admin Page</title>
		
	  	<link rel="icon" type="image/png" href="" />
		<link rel="stylesheet" href="resources/css/dist/semantic.css">
		<link rel="stylesheet" href="resources/css/normal.css">
		<link rel="stylesheet" href="resources/css/dist/semantic.min.css">


		

	</head>
	<body>
		<!--to be included-->
		<div id="hder">
		<div class="ui container">
			<div class="ui middle aligned center aligned grid">
				<a class="hddt"> WEBPOS </a>
			</div>	
		</div>

		</div>
		<div id="hder2">
		<div class="ui container">
			<div class="ui grid middle aligned center aligned">
				<a class="navie"> Announcements </a>
				<a class="navie" href="products" > Products </a>
				<a class="navie" href="#" > Users </a>
				<a class="navie" href="reports"> Report </a>
				<a class="navie" href="logout" id="logoutbtn"> Log Out </a>

			</div>	
		</div>
		</div>
		<!--end of to be included-->
		<!--modal start-->
<div id="addUsermodal" class="ui modal">
	<div class="header" style="padding-top: 16px; padding-bottom: 13px;">
		<i class="circular black edit icon"
			style="margin-right: 10px;"></i>New User</div>
		
		<div class="content">
			<form name="addUserForm" class="ui form" id="addUserForm"action="addUser" method="POST">
				<div class="inline fields">
					<div class="two wide field">
						<label>First Name</label>
					</div>
					<div class="fourteen wide field">
						<input type="text" name="fName" id="fName" required="true" />
					</div>
				</div>

				<div class="inline fields">
					<div class="two wide field">
						<label>Last Name</label>
					</div>
					<div class="fourteen wide field">
						<input type="text" name="lName" id="lName" required="true" />
					</div>
				</div>

				<div class="inline fields">
					<div class="two wide field">
						<label>Username</label>
					</div>
					<div class="fourteen wide field">
						<input type="text" id="username" name="username" required="true" />
					</div>

				</div>

				<div class="inline fields">
					<div class="two wide field">
						<label>Role</label>
					</div>
					<div class="fourteen wide field">
						<select class="ui dropdown" name="role">
							<option value=""></option>
							<option value="admin">admin</option>
							<option value="cashier">cashier</option>
						</select>
					</div>

				</div>

				<div class="inline fields">
					<div class="two wide field">
						<label>Password</label>
					</div>
					<div class="fourteen wide field">
						<input type="password" id="password" name="password"
							required="true" />
					</div>
				</div>
			<div class="ui divider"></div>
			<div class="actions" style="float:right; margin-bottom:14px;">				   			
				<button type="submit" class="ui black labeled icon button" id="saveUserbtn"><i class="add circle icon"></i> Save </button>
				<button type="submit" class="ui gray labeled icon button" id="cancelUserbtn"><i class="remove circle outline icon"></i>Cancel </button>
			</div>
			</form>
		</div>
</div>

		<!--modal end-->
		<!--modal start-->
<div id="editUsermodal" class="ui modal">
	<div class="header" style="padding-top: 16px; padding-bottom: 13px;">
		<i class="circular black edit icon"
			style="margin-right: 10px;"></i>Edit User</div>
		
		<div class="content">
			<form name="editUserForm" class="ui form" id="editUserForm" action="editUser" method="POST">
    			<div class="inline fields">
					<div class="two wide field">
						<label>ID</label>
					</div>
					<div class="fourteen wide field">
						<input type="text" name="id" id="eID" required="true" hidden/>
					</div>
				</div>
				
				<div class="inline fields">
					<div class="two wide field">
						<label>First Name</label>
					</div>
					<div class="fourteen wide field">
						<input type="text" name="firstName" id="efname" required="true" />
					</div>
				</div>

				<div class="inline fields">
					<div class="two wide field">
						<label>Last Name</label>
					</div>
					<div class="fourteen wide field">
						<input type="text" name="lastName" id="elname" required="true" />
					</div>
				</div>

				<div class="inline fields">
					<div class="two wide field">
						<label>Username</label>
					</div>
					<div class="fourteen wide field">
						<input type="text" id="eusername" name="username" required="true" />
					</div>

				</div>

				<div class="inline fields">
					<div class="two wide field">
						<label>Role</label>
					</div>
					<div class="fourteen wide field">
						<select class="ui dropdown" name="role" id="erole">
							<option value=""></option>
							<option value="admin">admin</option>
							<option value="cashier">cashier</option>
						</select>
					</div>

				</div>

				<div class="inline fields">
					<div class="two wide field">
						<label>Password</label>
					</div>
					<div class="fourteen wide field">
						<input type="password" id="epassword" name="password"
							required="true" />
					</div>
				</div>
			<div class="ui divider"></div>
			<div class="actions" style="float:right; margin-bottom:14px;">				   			
				<button type="submit" class="ui black labeled icon button" id="edeleteUserbtn" onClick="deleteUser()"><i class=""></i> Delete </button>
				<button type="submit" class="ui black labeled icon button" id="esaveUserbtn"><i class="add circle icon"></i> Save </button>
				<button type="reset" class="ui gray labeled icon button" id="ecancelUserbtn"><i class="remove circle outline icon"></i>Cancel </button>
			</div>
			</form>
		</div>
</div>

		<!--modal end-->

		<div class="ui container">
		<div class="ui middle aligned center aligned grid">
		<a class="ui large black submit button aud" id="addUserbtn"> Add New User</a>
	</div>
	</div>
	<div class="ui top aligned center aligned grid">
			<div class="column column2">
				<a class="hddst"> USERS </a>
				<hr/>
					<table class="ui fixed single line celled table">
					  <thead>
						<tr><th>First Name</th>
						<th>Last Name</th>
						<th>Username</th>
						<th>Password</th>
						<th>Role</th>
						</tr></thead>
					  <tbody>
						<c:forEach items="${ userList }" var="u">
						<tr onClick="editMod('${ u.id }', '${ u.fName }', '${ u.lName }', '${ u.role }', '${ u.username }', '${ u.password }')">
							<td>${ u.fName }</td>
							<td>${ u.lName }</td>
							<td>${ u.username }</td>
							<td>${ u.password }</td>
							<td>${ u.role }</td>
						</tr>
					</c:forEach>
					  </tbody>
					</table>				
			</div>	
		</div>

		<script src="resources/js/jquery.min.js"></script>
		<script src="resources/js/jquery-ui.min.js"></script>
		<script src="resources/css/dist/semantic.js"></script>
		<script src="resources/css/dist/semantic.min.js"></script>
		<script src="resources/js/index.js"></script>
	</body>
	<footer>		
		<div class="ui middle aligned center aligned grid">
			<a>copyright SY:2015-2016 second semester Advance Java</a>
		</div>

	</footer>
</html>
