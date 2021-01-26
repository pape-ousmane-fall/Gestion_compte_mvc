<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>mise à jour client</title>
</head>
<body>
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
	<spring:message code="titre.ajoutsuperadmin" />
	<!-- ================================================================== -->

	<f:form modelAttribute="client"
 		action="/connecmedias/admin1/enregistrercm1" method="post"
		id="submitFormcm1">

		<div class="panel-heading" style="background-color: rgb(193, 25, 83)">

			<h3 class="panel-title " style="color: white"> 
 				<spring:message code="titre.ajoutsuperadmin" />
 			</h3> -->
 		</div>

 		<div class="panel-body" style="color: #000033">

			<fieldset> --%>
<!-- 				<legend> -->
<%-- 					<spring:message code="titre.informationsuperadmin" /> --%>
<!-- 				</legend> -->

<%-- 				<label for="nomInput"><spring:message code="labelle.nom" />:</label> --%>
<%-- 				<spring:message code="labelle.nom" var="nom" /> --%>
<%-- 				<f:input path="nom" type="text" class="form-control" --%>
<%-- <%-- 					required="required" name="matricule" placeholder="${nom}" --%> --%>
<%-- <%-- 					id="nomInput" /> --%> --%>
<%-- 				<br> --%>
<%-- <%-- 				<f:errors path="nom" cssClass="errors" /> --%> --%>

<%-- <%-- 				<label for="prenomInput"><spring:message --%> --%>
<%-- <%-- 						code="labelle.prenom" />:</label> --%> --%>
<%-- <%-- 				<spring:message code="labelle.prenom" var="prenom" /> --%> --%>
<%-- <%-- 				<f:input path="prenom" type="text" class="form-control" --%> --%>
<%-- <%-- 					required="required" name="prenom" placeholder="${prenom} " --%> --%>
<%-- <%-- 					id="prenomInput" /> --%> --%>
<%-- <!-- 				<br> --> --%>
<%-- <%-- 				<f:errors path="prenom" cssClass="errors" /> --%> --%>

<%-- <%-- 				<label for="adresseInput"><spring:message --%> --%>
<%-- <%-- 						code="labelle.adresse" />:</label> --%> --%>
<%-- <%-- 				<spring:message code="labelle.adresse" var="adresse" /> --%> --%>
<%-- <%-- 				<f:input path="adresse" type="text" class="form-control" --%> --%>
<%-- <%-- 					required="required" name="adresse" placeholder="${adresse} " --%> --%>
<%-- <%-- 					id="adresseInput" /> --%> --%>
<%-- <!-- 				<br> --> --%>
<%-- <%-- 				<f:errors path="adresse" cssClass="errors" /> --%> --%>

<%-- <%-- 				<label for="telInput"><spring:message code="labelle.tel" />:</label> --%> --%>
<%-- <%-- 				<spring:message code="labelle.tel" var="tel" /> --%> --%>
<%-- <%-- 				<f:input path="tel" type="text" class="form-control" --%> --%>
<%-- <%-- 					required="required" name="tel" placeholder="${tel} " id="telInput" /> --%> --%>
<%-- <!-- 				<br> --> --%>
<%-- <%-- 				<f:errors path="tel" cssClass="errors" /> --%> --%>

<%-- <%-- 				<label for="telServiceInput"><spring:message --%> --%>
<%-- <%-- 						code="labelle.service.tel" />:</label> --%> --%>
<%-- <%-- 				<spring:message code="labelle.service.tel" var="telServ" /> --%> --%>
<%-- <%-- 				<f:input path="telService" type="text" class="form-control" --%> --%>
<%-- <%-- 					required="required" name="telService" placeholder="${telServ}" --%> --%>
<%-- <%-- 					id="telServiceInput" /> --%> --%>
<%-- <!-- 				<br> --> --%>
<%-- <%-- 				<f:errors path="telService" cssClass="errors" /> --%> --%>

<%-- <%-- 				<label for="villeInput"><spring:message code="labelle.ville" />:</label> --%> --%>
<%-- <%-- 				<spring:message code="labelle.ville" var="ville" /> --%> --%>
<%-- <%-- 				<f:input path="ville" type="text" class="form-control" --%> --%>
<%-- <%-- 					required="required" name="ville" placeholder="${ville} " --%> --%>
<%-- <%-- 					id="villeInput" /> --%> --%>
<%-- <!-- 				<br> --> --%>
<%-- <%-- 				<f:errors path="ville" cssClass="errors" /> --%> --%>

<%-- <%-- 				<label for="mailInput"><spring:message code="labelle.email" />:</label> --%> --%>
<%-- <%-- 				<spring:message code="labelle.email" var="email" /> --%> --%>
<%-- <%-- 				<f:input path="mail" type="email" class="form-control" --%> --%>
<%-- <%-- 					required="required" name="mail" placeholder="${email} " --%> --%>
<%-- <%-- 					id="mailInput" /> --%> --%>
<%-- <!-- 				<br> --> --%>
<%-- <%-- 				<f:errors path="mail" cssClass="errors" /> --%> --%>

<%-- <%-- 				<label for="pswInput"><spring:message code="labelle.mdp" />:</label> --%> --%>
<%-- <%-- 				<label for="pswInput"><spring:message code="labelle.mdp" --%> --%>
<%-- <%-- 						var="mdp" />:</label> --%> --%>
<%-- <%-- 				<f:input path="mdp" type="password" class="form-control" --%> --%>
<%-- <%-- 					required="required" name="psw" placeholder="${mdp} " id="pswInput" /> --%> --%>
<%-- <!-- 				<br> --> --%>
<%-- <%-- 				<f:errors path="mdp" cssClass="errors" /> --%> --%>

<%-- <!-- 				<button type="submit" --> --%>
<%-- <!-- 					class="btn btn-info active boutonSaveAnnuller "> --> --%>
<%-- <%-- 					<spring:message code="btn.enregistrer" /> --%> --%>
<%-- <!-- 				</button> --> --%>
<%-- <!-- 				<button type="reset" class="btn btn-info active boutonSaveAnnuller"> --> --%>
<%-- <%-- 					<spring:message code="btn.annuler" /> --%> --%>
<%-- <!-- 				</button> --> --%>
<%-- <!-- 				<br> --> --%>

<%-- <%-- 			</fieldset> --%> --%>

<%-- <!-- 		</div> --> --%>

<%-- <%-- 	</f:form> --%> --%>



	<!-- ################################################################################### -->
	<jsp:include page="/WEB-INF/views/fragments/footer.jsp">
	<jsp:param name="" value="" /> 
	</jsp:include>

</body>
</body>
</html>