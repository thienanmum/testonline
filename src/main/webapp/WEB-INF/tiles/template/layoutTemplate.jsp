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

<link href="http://getbootstrap.com/dist/css/bootstrap.css"	rel="stylesheet">

<link href="http://getbootstrap.com/examples/jumbotron/jumbotron.css"	rel="stylesheet">

</head>

<body>

	<div class="container">
		<div class="header">
			<ul class="nav nav-pills pull-right">
				<tiles:insertAttribute name="navigation" />
			</ul>
			<h3 class="text-muted">Web Store</h3>
		</div>

		<div class="jumbotron">
			<h1>
			<!-- Look up Heading Name in message.properties -->
			     <c:set var="heading"><tiles:getAsString name="heading" /></c:set>			
 				<spring:message code="${heading}"/>
			</h1>
			<p>
			     <c:set var="tagline"><tiles:getAsString name="tagline" /></c:set>			
 				<spring:message code="${tagline}"/>
			</p>
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
