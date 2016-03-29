<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>YOur Cart!</h1>
<table border="1" cellpadding="10px" width="100%" style="border-collapse: collapse">
	<c:forEach items='<%= request.getSession().getAttribute("cart") %>' var = "c">
		<tr>
		<td>${c.ID }<td>
		<td>${c.name }<td>
		<td>${c.price }<td>
		<td>${c.quantity }<td>
		<td> <a href="./remove.htm?id= ${c.ID }" onClick="return confirm('Are you sure?')"> 
				Remove</a>
		</td>
		</tr>
	</c:forEach>
	<tr>
		<td colspan="5">
			Total: <%=request.getSession().getAttribute("total") %>
		</td>
	</tr>
</table>
<a href="./form.htm">Continue Shopping</a>
</body>
</html>