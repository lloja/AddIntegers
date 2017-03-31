<!DOCTYPE html>
<html>
<head>
<link type="text/css" rel="stylesheet" href="addintegers.css">
<title>Add Two Numbers</title>
</head>
<body>
	<%@page import="com.addints.AddIntegers"%>
	<h1>Add Two Numbers</h1>
	<%
		AddIntegers addInts = new AddIntegers();
	%>
	<%!String num1 = "", num2 = "", result = "";%>
	<%
		if (request.getParameter("add") != null) {
			num1 = request.getParameter("integer1");
			num2 = request.getParameter("integer2");
			result = addInts.addTwoIntegers(request.getParameter("integer1"), request.getParameter("integer2"));
		} else if (request.getParameter("clear") != null) {
			num1 = "";
			num2 = "";
			result = "";
		}
	%>
	<div class="_addintegers">
		<form id="addItemForm" action="addIntegers.jsp" method="POST">
			<label for="currentdate"><%=addInts.getCurrentDate()%></label> <br />
			<input class="txtfield" type="text" name="integer1" value=<%=num1%>>
			<label for="add">+</label> <input class="txtfield" type="text"
				name="integer2" value=<%=num2%>> <label for="equal">=</label>
			<input class="txtfield" type="text" name="result" value="<%=result%>"
				disabled> <br /> <input type="submit" name="add" value="Add">
			<input type="submit" name="clear" value="Clear">
		</form>
	</div>
</body>
</html>