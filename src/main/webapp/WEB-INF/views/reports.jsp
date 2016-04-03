   
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
	  	<title>Products Page</title>
		
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
				<a class="item" href="home">
				  Users
				</a>
				<a class="active item" href="report">
				  Reports
				</a>
				<a class="item" href="logout"> 
				  Logout
				</a>
			  </div>
			</div>

			</div>	
		</div>
		</div>
		<!--end of to be included-->
		<!--modal start-->
<div id="addCartmodal" class="ui modal">
	<div class="header" style="padding-top: 16px; padding-bottom: 13px;">
		<i class="circular black edit icon"
			style="margin-right: 10px;"></i>Add To Cart</div>
		
		<div class="content">
			<form name="addCartForm" class="ui form" id="addCartForm">
    			<div class="inline fields">
						<div class="two wide field">
							<label>Product Name</label>
						</div>
						<div class="fourteen wide field">
				            <input type="text" name="Cartname" id="Cartname" required="true"/>
						</div>
				</div>

				<div class="inline fields">
						<div class="two wide field">
							<label>Quantity</label>
						</div>
						<div class="fourteen wide field">
				            <input type="number" name="Cartqty" id="Cartqty" required="true"/>
						</div>
				</div>

				<div class="inline fields">
						<div class="two wide field">
							<label>Price</label>
						</div>
						<div class="fourteen wide field">
				            <input type="number" id="Cartprice" name="Cartprice" required="true"/>
						</div>

				</div>
				
			<div class="ui divider"></div>
			<div class="actions" style="float:right; margin-bottom:14px;">				   			
				<button type="submit" class="ui black labeled icon button" id="saveCartbtn"><i class="add circle icon"></i> Save </button>
				<button type="submit" class="ui gray labeled icon button" id="cancelCartbtn"><i class="remove circle outline icon"></i>Cancel </button>
			</div>
		</form>
		</div>
</div>

		<!--modal end-->

	<div class="ui container">
		<div class="ui middle aligned center aligned grid">
		<a class="ui large yellow submit button aud" id="prodsalesbtn"> Product Sales </a>
		<a class="ui large yellow submit button aud aud2" id="cashsalesbtn"> Cashier Sales </a>
	</div>
	</div>
	<div class="ui top aligned center aligned grid">
			<div class="column column2">
			<div id="productsales">
				<a class="hddst"> PRODUCT SALES </a>
				<hr/>
					<table class="ui striped yellow fixed single line celled table">
					  <thead>
						<tr><th>Product Name</th>
						<th>Quantity</th>
						<th>Total</th>
						</tr></thead>
					  <tbody>
						<c:forEach items="${ productReportList }" var="x">
							<tr>
								<td>${ x.name }</td>
								<td>${ x.qty }</td>
								<td>${ x.total }</td>
							</tr>
						</c:forEach>
					  </tbody>
					</table>
			</div>
						<div id="cashsales">
				<a class="hddst"> CASHIER SALES </a>
				<hr/>
				<div class="labelnames">
							
				</div>
					<table class="ui striped yellow fixed single line celled table">
					  <thead>
						<tr>
						<th>Date</th>
						<th>Cashier Name</th>
						<th>Total Income</th>
						</tr></thead>
					  <tbody>
						<c:forEach items="${ income }" var="i">
							<tr>
								<td>${ i.date }</td>
								<td>${ i.cashier }</td>
								<td>${ i.total }</td>
							</tr>
						</c:forEach>
					  </tbody>
					</table>
			</div>

			
		</div>
			

		</div>
		<!--javscripts-->
		<script src="resources/js/jquery.min.js"></script>
		<script src="resources/js/jquery-ui.min.js"></script>
		<script src="resources/css/dist/semantic.js"></script>
		<script src="resources/css/dist/semantic.min.js"></script>
		<script src="resources/js/index.js"></script>
	</body>
	<footer>		
		<div class="ui middle aligned center aligned grid">
			<a></a>
		</div>

	</footer>
</html>
