<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"  %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<section class="container">
	<form:form  modelAttribute="question" class="form-horizontal" method="POST" action="add">
		<fieldset>
			<legend>Add new question</legend>
			
			<div class="form-group">
				<label class="control-label col-sm-4" for="questionId"><spring:message code="question.questionId"/></label>
				<div class="col-sm-6">
					<form:input id="questionId" path="questionId" type="text" class="form:input-large"/>
					<form:errors path="questionId" cssClass="text-danger"/>
				</div>
			</div>
			
			<div class="form-group">
				<label class="control-label col-sm-4" for="subject"><spring:message code="question.subject"/></label>
				<div class="col-sm-6">
					<div class="form:input-prepend">
						<form:input id="subject" path="subject" type="text" class="form:input-large"/>
						<form:errors path="subject" cssClass="text-danger"/>
					</div>
				</div>
			</div>
			
			<div class="form-group">
				<label class="control-label col-sm-4" for="level"><spring:message code="question.level"/></label>
				<div class="col-sm-6">
					<div class="form:input-prepend">
						<form:input id="level" path="level" type="text" class="form:input-large"/>
						<form:errors path="level" cssClass="text-danger"/>
					</div>
				</div>
			</div>
			
			<div class="form-group">
				<label class="control-label col-sm-4" for=description><spring:message code="question.description"/></label>
				<div class="col-sm-6">
					<form:textarea id="text" path="description" rows = "5" cols="100"/>
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
