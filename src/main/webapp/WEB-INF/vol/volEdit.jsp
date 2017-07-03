<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<link rel="stylesheet"
		href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<title><spring:message code="aeroport.edit.title" /></title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	
</head>
<body>

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" ><spring:message code="accueil.title2" /></a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="accueil"><b><spring:message code="MenuNav.accueil" /></b></a></li>
	      <li><a href="../aeroport/list"><spring:message code="MenuNav.aeroport" /></a></li>
	      <li><a href="./list"><spring:message code="MenuNav.vol" /></a></li>
	      <li><a href="#"><spring:message code="MenuNav.reservation" /></a></li>
	      <li><a href="#"><spring:message code="MenuNav.passager" /></a></li>
	      <li><a href="#"><spring:message code="MenuNav.escale" /></a></li>
	      <li><a href="../client/list"><spring:message code="MenuNav.client" /></a></li>
	      <li><a href="../ville/list"><spring:message code="MenuNav.ville" /></a></li>
	      <li><a href="#"><spring:message code="MenuNav.compagnie" /></a></li>
	      <li><a href="#"><spring:message code="MenuNav.login" /></a></li>
    </ul>
  </div>
</nav>

<div class="container">
		<fieldset>
			<legend><spring:message code="aeroport.edit.fieldset" /></legend>
			<form:form modelAttribute="aeroport" action="save" method="post">
				<input type="hidden" name="mode" value="${mode}"/>
				<form:hidden path="id" />
				<form:hidden path="version" />
				<div class="form-group">
					<form:label path="nom"><spring:message code="aeroport.edit.nom" /></form:label>
					<form:input path="nom" type="text" cssClass="form-control" cssStyle="width: 400px"/>
					<form:errors path="nom" cssStyle="color:red"/>
				</div>
			
				<%-- <div class="form-group">
					<form:label path="villes.ville"><spring:message code="aeroport.edit.choixville" /></form:label>
					<form:select path="villes.ville" cssClass="form-control" cssStyle="width: 400px">
						<form:option value="${null}"><spring:message code="aeroport.edit.choixville" /></form:option>
						<c:forEach items="${villes}" var="villes">
							<form:option value="${villes.id}">${ville.nom}</form:option>
						</c:forEach>
						
					</form:select>
					<form:errors path="ville.id" cssStyle="color:red"/>
				</div> --%>
				<button class="btn btn-success" type="submit">
					<span class="glyphicon glyphicon-ok"></span>
				</button>
				<button class="btn btn-warning">
					<span class="glyphicon glyphicon-arrow-left"></span>
				</button>
			</form:form>
		</fieldset>
	</div>


</body>
</html>