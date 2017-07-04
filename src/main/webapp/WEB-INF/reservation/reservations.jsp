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
<title><spring:message code="reservation.list.title"/></title>
</head>
<body>
	<div class="container">
		<fieldset>
			<legend><spring:message code="reservation.list.fieldset"/></legend>
			<table class="table table-striped">
				<tr>
					<th><spring:message code="reservation.list.id"/></th>
					<th><spring:message code="reservation.list.version"/></th>
					<th><spring:message code="reservation.list.dtReservation"/></th>
					<th><spring:message code="reservation.list.numReservation"/></th>
					<th><spring:message code="reservation.list.passager.nom"/></th>
					<th><spring:message code="reservation.list.client.nom"/></th>
					<th><spring:message code="reservation.list.vol.id"/></th>
					<th></th>
					<th></th>
					<th></th>
				</tr>

				<c:forEach items="${reservations}" var="reservation">
					<tr>
						<td>${reservation.id}</td>
						<td>${reservation.version}</td>
						<td><fmt:formatDate value="${reservation.dateResa}" pattern="dd/MM/yyyy"/></td>
						<td>${reservation.numero}</td>
						<td>${reservation.passager.nom}</td>
						<td>${resrevation.client.nom}</td>
						<td>${reservation.vol.id}</td>

		
						<td><a href="edit?id=${reservation.id}" class="btn btn-info btn-sm"><span class="glyphicon glyphicon-pencil"></span></a></td>
						<td><a href="delete?id=${reservation.id}" class="btn btn-danger btn-sm"><span class="glyphicon glyphicon-trash"></span></a></td>
					</tr>
				</c:forEach>

				<tr>
					<td colspan="9"><a href="add" class="btn btn-success btn-sm"><span class="glyphicon glyphicon-plus"></span></a></td>
				</tr>
			</table>
		</fieldset>
	</div>
</body>
</html>