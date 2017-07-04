<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title><spring:message code="passager.list.title"/></title>
</head>
<body>
	<div class="container">
		<fieldset>
			<legend><spring:message code="passager.list.fieldset"/></legend>
			<table class="table table-striped">
				<tr>
					<th><spring:message code="passager.list.id"/></th>
					<th><spring:message code="passager.list.version"/></th>
					<th><spring:message code="passager.list.nom"/></th>
					<th><spring:message code="passager.list.prenom"/></th>
					<th><spring:message code="passager.list.adresse.rue"/></th>
					<th><spring:message code="passager.list.adresse.codePostal"/></th>
					<th><spring:message code="passager.list.adresse.ville"/></th>
					<th><spring:message code="passager.list.adresse.pays"/></th>
					<th></th>
					<th></th>
				</tr>

				<c:forEach items="${passagers}" var="passager">
					<tr>
						<td>${passager.id}</td>
						<td>${passager.version}</td>
						<td>${passager.nom}</td>
						<td>${passager.prenom}</td>
						<td>${passager.adresse.rue}</td>
						<td>${passager.adresse.codePostal}</td>
						<td>${passager.adresse.ville}</td>
						<td>${passager.adresse.pays}</td>
						
						<td><a href="edit?id=${passager.id}" class="btn btn-info btn-sm"><span class="glyphicon glyphicon-pencil"></span></a></td>
						<td><a href="delete?id=${passager.id}" class="btn btn-danger btn-sm"><span class="glyphicon glyphicon-trash"></span></a></td>
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