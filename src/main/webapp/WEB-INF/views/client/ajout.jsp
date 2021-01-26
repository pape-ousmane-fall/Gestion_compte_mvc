<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="f"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<jsp:include page="/WEB-INF/views/fragments/head.jsp">
	<jsp:param name="" value="" />
</jsp:include>
<title>Nouveau client</title>
</head>
<body>
	<jsp:include page="/WEB-INF/views/fragments/header.jsp">
		<jsp:param name="" value="" />
	</jsp:include>
	<c:set var="context" value="${pageContext.request.contextPath}" />
	<spring:url value="/client/client/add" var="ajoutUrl"></spring:url>

	<!--panel centre-->
	<div class="col-xs-6 col-sm-6 col-md-7 col-lg-8 text-left couleur">

		<!-- Formulaire creation d'amin CM1 -->

		<div class="panel panel-info  style= border-color: rgb(193, 25, 83)">

			<f:form modelAttribute="client" action="${ajoutUrl}" method="POST"
				id="submitFormcm1">

				<div class="panel-heading"
					style="background-color: rgb(193, 25, 83)">

					<h3 class="panel-title " style="color: white">
						<spring:message code="titre.ajout.client" />
					</h3>
				</div>

				<div class="panel-body" style="color: #000033">

					<fieldset>
						<legend>
							<spring:message code="titre.ajout.client" />
						</legend>
						<spring:bind path="nom">
							<label for="nomInput"><spring:message code="labelle.nom" />:</label>
							<spring:message code="labelle.nom" var="nom" />
							<f:input path="nom" type="text" class="form-control"
								required="required" placeholder="${nom}" id="nomInput" />
						</spring:bind>
						<br> 
						<spring:bind path="prenom">
						<label for="prenomInput"><spring:message
								code="labelle.prenom" />:</label>
						<spring:message code="labelle.prenom" var="prenom" />
						<f:input path="prenom" type="text" class="form-control"
							required="required" placeholder="${prenom} " id="prenomInput" />
							</spring:bind>
						<br>
						
						<spring:bind path="adresse">
						 <label for="adresseInput"><spring:message
								code="labelle.adresse" />:</label>
						<spring:message code="labelle.adresse" var="adresse" />
						<f:input path="adresse" type="text" class="form-control"
							required="required" placeholder="${adresse} " id="adresseInput" />
							</spring:bind>
						<br> 
						
						<spring:bind path="salarie">
						<label for="salInput"><spring:message
								code="labelle.salaire" />:</label>
						<spring:message code="labelle.salaire" var="salaire" />
						<f:input path="salarie" type=checkbox " class="form-control"
							required="required" id="salInput" />
							</spring:bind>
						<br>


						<button type="submit"
							class="btn btn-info active boutonSaveAnnuller ">
							<spring:message code="btn.enregistrer" />
						</button>
						<button type="reset"
							class="btn btn-info active boutonSaveAnnuller">
							<spring:message code="btn.annuler" />
						</button>
						<br>

					</fieldset>

				</div>

			</f:form>
		</div>
	</div>


	<jsp:include page="/WEB-INF/views/fragments/footer.jsp">
		<jsp:param name="" value="" />
	</jsp:include>
</body>
</html>