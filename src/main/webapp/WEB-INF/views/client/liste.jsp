<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="f"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<jsp:include page="/WEB-INF/views/fragments/head.jsp">
	<jsp:param name="" value="" />
</jsp:include>
<title>Liste des clients</title>
</head>
<body>
	<jsp:include page="/WEB-INF/views/fragments/header.jsp">
		<jsp:param name="" value="" />
	</jsp:include>
	<table class="table table-striped">
		<thead>
			<tr>
				<th scope="col">Nom</th>
				<th scope="col">Prénom</th>
				<th scope="col">Adresse</th>
				<th scope="col">Opération</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="client" items="${clients}">
				<tr>
					<td>${client.nom }</td>
					<td>${client.prenom }</td>
					<td>${client.adresse }</td>
					<td><spring:url value="/client/client/delete?id=${client.id}"
							var="deleteUrl">
						</spring:url> <spring:url value="/client/client/update/${client.id}"
							var="updateUrl"></spring:url>

						<button class="btn btn-danger">
							<a href="${deleteUrl}" style="color: white">Suprimer</a>
						</button>
						<button class="btn btn-primary">
							<a href="${updateUrl}" style="color: white">Modifier</a>
						</button></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	<jsp:include page="/WEB-INF/views/fragments/footer.jsp">
		<jsp:param name="" value="" />
	</jsp:include>

</body>
</html>