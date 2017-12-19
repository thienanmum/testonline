<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>

<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<c:set var="title"><tiles:getAsString name="title" /></c:set>			
	<title><spring:message code="${title}"/></title>
	<link href='<spring:url value="/resource/css/bootstrap.min.css" />'	rel="stylesheet">
	<link href='<spring:url value="/resource/css/site.css" />'	rel="stylesheet">
</head>

<body>

	<div class="container">
		<div class="header">
			<ul class="nav nav-pills pull-right">
				<tiles:insertAttribute name="navigation" />
			</ul>
			<h2 class="text-muted">Test Online</h2>
		</div>

		<div id="breadcrumb">
			<c:set var="heading"><tiles:getAsString name="heading" /></c:set>			
				<spring:message code="${heading}"/> -
			    <c:set var="tagline"><tiles:getAsString name="tagline" /></c:set>			
			<spring:message code="${tagline}"/>
		</div>

		<div class="row">
			<tiles:insertAttribute name="body" />
		</div>

		<div class="footer">
			<tiles:insertAttribute name="footer" />
		</div>

	</div>
</body>
</html>
