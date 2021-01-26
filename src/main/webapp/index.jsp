<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="f"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<jsp:include page="/WEB-INF/views/fragments/head.jsp"><jsp:param
		value="" name="" /></jsp:include>
<title>Bienvenu</title>
</head>
<body style="background-color: grey">
	<jsp:include page="/WEB-INF/views/fragments/header.jsp"><jsp:param
			value="" name="" /></jsp:include>

	<spring:url value="/client/clients" var="allCients"></spring:url>
	<spring:url value="/client/client/add" var="ajoutClient"></spring:url>
	
	<button style="color: white">
		<a href="${allCients}">Lister Clients</a>
	</button>
	<button style="color: white">
		<a href="${ajoutClient}">Ajouter Client</a>
	</button>
	<jsp:include page="/WEB-INF/views/fragments/footer.jsp"><jsp:param
			value="" name="" /></jsp:include>

</body>
</html>