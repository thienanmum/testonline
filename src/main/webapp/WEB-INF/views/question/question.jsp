<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"  %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
	
<%--  <link rel="stylesheet"	href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css">
 <style><%@include file="/resources/css/site.css"%></style>
 	<script type="text/javascript" src="http://code.jquery.com/jquery-1.10.1.min.js"></script>
	<script type="text/javascript" src="<spring:url value="/resource/js/cart.js"/>"></script> --%>
	

<section class="container" >

	<form:form  modelAttribute="question" class="form-horizontal" method="POST" action="add">
		<fieldset>
			<legend>Edit a question</legend>			
			
			<div class="form-group">
				<label class="control-label col-sm-4" for="questionId"><spring:message code="question.questionId"/></label>
				<div class="col-sm-6">
					<form:input id="questionId" path="questionId" type="text" class="form:input-large controlWidth"/>
					<form:errors path="questionId" cssClass="text-danger"/>
				</div>
			</div>
			
			<div class="form-group">
				<label class="control-label col-sm-4" for="subject"><spring:message code="question.subject"/></label>
				<div class="col-sm-6">												
					<form:select id="subject" path="subject.id" class="controlWidth">
						<form:option value="" label="---Select a subject---"/>							
						<form:options items="${subjects}" itemLabel="name" itemValue="id"/>
					</form:select>						
				</div>
			</div>
			
			<div class="form-group">
				<label class="control-label col-sm-4" for="level"><spring:message code="question.level"/></label>
				<div class="col-sm-6">
					<form:select id="level" path="level" class="controlWidth">
						<form:option value="" label="---Select a level---"/>
						<form:options items="${levels}"/>
					</form:select>
				</div>
			</div>
			
			<div class="form-group">
				<label class="control-label col-sm-4" for="type"><spring:message code="question.type"/></label>
				<div class="col-sm-6">
					<form:select id="type" path="type" class="controlWidth">
						<form:option value="" label="---Select a type---"/>
						<form:options items="${questionTypes}"/>
					</form:select>
				</div>
			</div>		

			<div class="form-group">
				<label class="control-label col-sm-4" for="description"><spring:message code="question.description"/></label>
				<div class="col-md-4">
					<form:textarea id="description" path="description" rows = "5" cols="100"/>
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

