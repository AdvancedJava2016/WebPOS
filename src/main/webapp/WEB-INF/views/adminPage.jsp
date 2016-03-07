   
<!-- 
/* -------------------------------------------------------------------------
 * Unauthorized copying of this file, via any medium is strictly prohibited
 * Proprietary and confidential
 * Copyright (C) Moneytor
 * -------------------------------------------------------------------------
 -->
 
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
				<a class="hddt"> POS </a>
			</div>	
		</div>

		</div>
		<div id="hder2">
		<div class="ui container">
			<div class="ui inverted segment">
			  <div class="ui inverted secondary pointing menu">
				<a class="active item">
				  Home
				</a>
				<a class="item">
				  Reports
				</a>
				<a class="item">
				  Products
				</a>
				<a class="item">
				  Logout
				</a>
			  </div>
			</div>

			</div>	
		</div>
		</div>
		<!--end of to be included-->
		<!--modal start-->
<div id="addUsermodal" class="ui modal">
	<div class="header" style="padding-top: 16px; padding-bottom: 13px;">
		<i class="circular yellow edit icon"
			style="margin-right: 10px;"></i>New User</div>
		
		<div class="content">
			<form name="addUserForm" class="ui form" id="addUserForm" action="addUser">
    			<div class="inline fields">
						<div class="two wide field">
							<label>First Name</label>
						</div>
						<div class="fourteen wide field">
				            <input type="text" name="fname" id="fName" required="true"/>
						</div>
				</div>

				<div class="inline fields">
						<div class="two wide field">
							<label>Last Name</label>
						</div>
						<div class="fourteen wide field">
				            <input type="text" name="lname" id="lName" required="true"/>
						</div>
				</div>

				<div class="inline fields">
						<div class="two wide field">
							<label>Username</label>
						</div>
						<div class="fourteen wide field">
				            <input type="text" id="username" name="username" required="true"/>
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
				            <input type="password" id="password" name="password" required="true"/>
						</div>
				</div>
				<div class="inline fields">
						<div class="two wide field">
							<label>Confirm Password</label>
						</div>
						<div class="fourteen wide field">
				            <input type="password" id="cpassword"  name="cpassword" required="true"/>
						</div>
				</div>
			<div class="ui divider"></div>
			<div class="actions" style="float:right; margin-bottom:14px;">				   			
				<button type="submit" class="ui yellow labeled icon button" id="saveUserbtn"><i class="add circle icon"></i> Save </button>
				<button type="reset" class="ui gray labeled icon button" id="cancelUserbtn"><i class="remove circle outline icon"></i>Cancel </button>
			</div>
			</form>
		</div>
</div>

		<!--modal end-->
		<!--modal start-->
<div id="editUsermodal" class="ui modal">
	<div class="header" style="padding-top: 16px; padding-bottom: 13px;">
		<i class="circular yellow edit icon"
			style="margin-right: 10px;"></i>Edit User</div>
		
		<div class="content">
			<form name="editUserForm" class="ui form" id="editUserForm">
    			<div class="inline fields">
						<div class="two wide field">
							<label>First Name</label>
						</div>
						<div class="fourteen wide field">
				            <input type="text" name="efname" id="efname" required="true"/>
						</div>
				</div>

				<div class="inline fields">
						<div class="two wide field">
							<label>Last Name</label>
						</div>
						<div class="fourteen wide field">
				            <input type="text" name="elname" id="elname" required="true"/>
						</div>
				</div>

				<div class="inline fields">
						<div class="two wide field">
							<label>Username</label>
						</div>
						<div class="fourteen wide field">
				            <input type="text" id="eusername" name="eusername" required="true"/>
						</div>

				</div>
				
				<div class="inline fields">
						<div class="two wide field">
							<label>Role</label>
						</div>
						<div class="fourteen wide field">
							<select class="ui dropdown">
								<option value=""></option>
								<option value="Admin">Admin</option>
								<option value="Cashier">Cashier</option>
							</select>
						</div>

				</div>
				
				<div class="inline fields">
						<div class="two wide field">
							<label>Password</label>
						</div>
						<div class="fourteen wide field">
				            <input type="password" id="epassword" name="epassword" required="true"/>
						</div>
				</div>
				<div class="inline fields">
						<div class="two wide field">
							<label>Confirm Password</label>
						</div>
						<div class="fourteen wide field">
				            <input type="password" id="ecpassword"  name="ecpassword" required="true"/>
						</div>
				</div>
			<div class="ui divider"></div>
			<div class="actions" style="float:right; margin-bottom:14px;">				   			
				<button type="submit" class="ui yellow labeled icon button" id="esaveUserbtn"><i class="add circle icon"></i> Save </button>
				<button type="reset" class="ui gray labeled icon button" id="ecancelUserbtn"><i class="remove circle outline icon"></i>Cancel </button>
			</div>
			</form>
		</div>
</div>

		<!--modal end-->

		<div class="ui container">
		<div class="ui middle aligned center aligned grid">
		<a class="ui large yellow submit button aud" id="addUserbtn">  <i class="add icon"></i></a>
	</div>
	</div>
	<div class="ui top aligned center aligned grid">
			<div class="column column2">
				<a class="hddst left aligned"> USERS </a>

					<table class="ui striped yellow fixed single line celled table">
					  <thead>
						<tr><th>First Name</th>
						<th>Last Name</th>
						<th>Username</th>
						<th>Password</th>
						<th>Role</th>
						</tr></thead>
					  <tbody>
						<tr onClick="editMod()">
						  <td>John</td>
						  <td>Doe</td>
						  <td>johndoe</td>
						  <td>password</td>
						  <td>admin</td>
						</tr>
						<tr>
						  <td>John</td>
						  <td>Doe</td>
						  <td>johndoe</td>
						  <td>password</td>
						  <td>admin</td>
					    </tr>
						<tr>
						  <td>John</td>
						  <td>Doe</td>
						  <td>johndoe</td>
						  <td>password</td>
						  <td>admin</td>
						</tr>
					  </tbody>
					</table>				
			</div>	
		</div>

		<script src="resources/js/jquery.min.js"></script>
		<script src="resources/js/jquery-ui.min.js"></script>
		<script src="resources/css/dist/semantic.js"></script>
		<script src="resources/css/dist/semantic.min.js"></script>
		<script src="jresources/js/index.js"></script>
	</body>
	<footer>		
		<div class="ui middle aligned center aligned grid">
			<a>lalalaunicorn random designs daw kunohay hahah</a>
		</div>

	</footer>
</html>
