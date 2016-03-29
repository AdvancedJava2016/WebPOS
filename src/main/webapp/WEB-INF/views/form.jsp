<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="f" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<f:form modelAttribute="cart" action="addcart.htm" method="POST">
		ID: <f:input path="ID" /> <br/>
		Name: <f:input path="name" /> <br/>
		Price: <f:input path="price" /> <br/>
		Quantity: <f:input path="quantity" /> <br/>
		<input type="submit" value= "Add to cart"/>
	</f:form>
</body>
</html>