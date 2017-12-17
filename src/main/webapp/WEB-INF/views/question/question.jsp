<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"  %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
	
<html>
 <link rel="stylesheet"	href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css">
 	<script type="text/javascript" src="http://code.jquery.com/jquery-1.10.1.min.js"></script>
	<script type="text/javascript" src="<spring:url value="/resource/js/cart.js"/>"></script>
	
 <body>
 	<section class="container" >
	
		<form:form  modelAttribute="question" class="form-horizontal" method="POST" action="add">
			<fieldset>
				<legend>Edit a question</legend>
				<form:hidden path="id"/>
				<div class="form-group">
					<label class="control-label col-sm-4" for="questionId"><spring:message code="question.questionId"/></label>
					<div class="col-sm-6">
						<form:input id="questionId" path="questionId" type="text" class="form:input-large"/>
						<form:errors path="questionId" cssClass="text-danger"/>
					</div>
				</div>

				<div class="form-group">
					<label class="control-label col-sm-4" for="sortOrder"><spring:message code="question.sortOrder"/></label>
					<div class="col-sm-6">
						<div class="form:input-prepend">
							<form:input id="sortOrder" path="sortOrder" type="text" class="form:input-large"/>
							<form:errors path="sortOrder" cssClass="text-danger"/>
						</div>
					</div>
				</div>

				<div class="form-group">
					<label class="control-label col-sm-4" for="text"><spring:message code="question.text"/></label>
					<div class="col-sm-6">
						<form:textarea id="text" path="text" rows = "2"/>
					</div>
				</div>

				<div class="form-group">
					<label class="control-label col-sm-4" for="type"><spring:message code="question.type"/></label>
					<div class="col-sm-6">
						<form:select id="type" path="type" class="form:input-large">
							<form:option value="" label="--Select a Type--"/>
							<form:options items="${questionTypes}"/>
						</form:select>
					</div>
				</div>		
				
				<div class="form-group">
					<div class="col-lg-offset-2 col-sm-10">
						<input type="submit" id="btnAdd" class="btn btn-primary" value ="Update"/>
					</div>
				</div>
								
			</fieldset>
		</form:form>
	</section>
</body>
</html>
