<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@taglib uri="http://www.springframework.org/tags/form" prefix="f"%>
     <%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<jsp:include page="/WEB-INF/views/fragments/head.jsp"> <jsp:param name="" value="" />  </jsp:include>
<title>SCHOOL-BANK</title>
</head>
<body>
<jsp:include page="/WEB-INF/views/fragments/header.jsp"> <jsp:param name="" value="" />  </jsp:include>

<spring:url value="/client/clients" var="allClients"></spring:url>
<spring:url value="/client/client/add" var="addClient"></spring:url>

<h2>Gestion Compte !</h2>
<button class="btn btn-primary"><a href="${allClients}">Afficher les clients</a></button>
<button class="btn btn-primary"><a href="${addClient }">Ajouter un client</a></button>

<jsp:include page="/WEB-INF/views/fragments/footer.jsp"> <jsp:param name="" value="" /> </jsp:include>
</body>
</html>