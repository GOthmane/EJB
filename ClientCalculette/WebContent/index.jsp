<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="CalculServlet">
		X : <input type="text" name="x"><br/> 
		Y : <input type="text" name="y"><br/> 
		<input type="submit" value="valider" />
	</form>
	<c:if test="${!empty(resultat1) && !empty(resultat2) && !empty(resultat3) && !empty(resultat4)}">
	RESULTAT ADDITION = ${resultat1}<br/>
	RESULTAT SOUSTRACTION = ${resultat2}<br/>
	RESULTAT DIVISION = ${resultat3}<br/>
	RESULTAT MULTIPLICATION = ${resultat4}
	</c:if>
</body>
</html>