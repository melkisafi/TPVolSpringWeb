<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<link rel="stylesheet"
		href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	  <title><spring:message code="vol.list.title" /></title>
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
      <li><a href="aeroport/list"><spring:message code="MenuNav.aeroport" /></a></li>
      <li><a href="vol/list"><spring:message code="MenuNav.vol" /></a></li>
      <li><a href="#"><spring:message code="MenuNav.reservation" /></a></li>
      <li><a href="#"><spring:message code="MenuNav.passager" /></a></li>
      <li><a href="#"><spring:message code="MenuNav.escale" /></a></li>
      <li><a href="#"><spring:message code="MenuNav.client" /></a></li>
      <li><a href="#"><spring:message code="MenuNav.ville" /></a></li>
      <li><a href="#"><spring:message code="MenuNav.compagnie" /></a></li>
      <li><a href="#"><spring:message code="MenuNav.login" /></a></li>
    </ul>
  </div>
</nav>

<div class="container">
		<fieldset>
			<legend><spring:message code="vol.list.fieldset" /></legend>
			<table class="table table-striped">
				<tr>
					<th><spring:message code="vol.list.id" /></th>
					<th><spring:message code="vol.list.version" /></th>
					<%-- <th><spring:message code="vol.list.nom" /></th> --%>
					<th><spring:message code="vol.list.AeroportDep" /></th>
					<th><spring:message code="vol.list.dateDep" /></th>
					<th><spring:message code="vol.list.heureDep" /></th>
					<th><spring:message code="vol.list.AeroportArr" /></th>
					<th><spring:message code="vol.list.dateArr" /></th>		
					<th><spring:message code="vol.list.heureArr" /></th>
				</tr>

				<c:forEach items="${vols}" var="vol">
					<tr>
						<td>${vol.id}</td>
						<td>${vol.version}</td>
						<%-- <td>${vol.nom}</td> --%>
						<td>${vol.depart}</td>
						<td>${vol.dateDepart}</td>
						<td>${vol.heureDepart}</td>
						<td>${vol.arrivee}</td>
						<td>${vol.dateArrivee}</td>
						<td>${vol.heureDepart}</td>
						<td><a href="edit?id=${vol.id}" class="btn btn-info btn-sm"><span class="glyphicon glyphicon-pencil"></span></a></td>
						<td><a href="delete?id=${vol.id}" class="btn btn-danger btn-sm"><span class="glyphicon glyphicon-trash"></span></a></td>
					</tr>
				</c:forEach>

				<tr>
					<td colspan="10"><a href="add" class="btn btn-success btn-sm"><span class="glyphicon glyphicon-plus"></span></a></td>
				</tr>
			</table>
		</fieldset>
	</div>
</body>
</html>