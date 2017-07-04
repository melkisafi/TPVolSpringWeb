<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title><spring:message code="reservation.list.title.edit"/></title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
</head>
<body>
	<div class="container">
		<fieldset>
			<legend><spring:message code="reservation.list.title.edit"/></legend>
			<form:form modelAttribute="reservation" action="save" method="post">
				<form:hidden path="id" />
				<form:hidden path="version" />
				
				<div class="form-group">
					<form:label path="dateResa"><spring:message code="reservation.list.dtReservation"/></form:label>
					<form:input path="dateResa" type="date" cssClass="form-control" cssStyle="width: 400px"/>
					<form:errors path ="dateResa" cssStyle="color:red"/>
				</div>
				<div class="form-group">
					<form:label path="numero"><spring:message code="reservation.list.numReservation"/></form:label>
					<form:input path="numero" type="text" cssClass="form-control" cssStyle="width: 400px"/>
					<form:errors path ="numero" cssStyle="color:red"/>
				</div>
				
 				<div class="form-group">
					<form:label path="passager.id"><spring:message code="reservation.list.passager.nom"/></form:label> 
					<form:select path="passager.id" cssClass="form-control" cssStyle="width: 400px">
						<form:option value="${null}">------------------</form:option>
						<c:forEach items="${passagers}" var="pass"> 
							<form:option value="${pass.id}">${pass.nom}</form:option> 
						</c:forEach> 
 					</form:select>  
					<form:errors path="passager.nom" cssStyle="color:red"/> 
				</div> 
				
				<div class="form-group">
					<form:label path="client.id"><spring:message code="reservation.list.client.nom"/></form:label>
					<form:select path="client.id" cssClass="form-control" cssStyle="width: 400px">
						<form:option value="${null}">------------------</form:option>
						<c:forEach items="${clients}" var="cli">
							<form:option value="${cli.id}">${cli.nom}</form:option>
						</c:forEach>
					</form:select>
					<form:errors path="client.nom" cssStyle="color:red"/>
				</div>
				
				<div class="form-group">
 					<form:label path="vol.id"><spring:message code="reservation.list.vol.id"/></form:label> 
					<form:select path="vol.id" cssClass="form-control" cssStyle="width: 400px"> 
						<form:option value="${null}">------------------</form:option> 
						<c:forEach items="${vols}" var="v"> 
							<form:option value="${v.id}">${v.id}</form:option> 
 						</c:forEach> 
					</form:select> 
					<form:errors path="vol.dateDepart" cssStyle="color:red"/> 
				</div> 
							
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