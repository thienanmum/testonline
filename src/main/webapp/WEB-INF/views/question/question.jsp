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
			
			<div >
				<label class="labelDecor" for="questionId"><spring:message code="question.questionId"/></label>
				<div class="divDecor">
					<form:input id="questionId" path="questionId" type="text" class="form:input-large controlWidth"/>
					<form:errors path="questionId" cssClass="text-danger"/>
				</div>
			</div>
			
<<<<<<< HEAD
			<div class="form-group">
				<label class="control-label col-sm-4" for="subject"><spring:message code="question.subject"/></label>
				<div class="col-sm-6">												
					<form:select id="subject" path="subject.id" class="controlWidth" >
=======
			<div >
				<label class="labelDecor" for="subject"><spring:message code="question.subject"/></label>
				<div class="divDecor">												
					<form:select id="subject" path="subject.id" class="controlWidth">
>>>>>>> branch 'master' of https://abinettafa@bitbucket.org/annguyen1502/testonline.git
						<form:option value="" label="---Select a subject---"/>							
						<form:options items="${subjects}" itemLabel="name" itemValue="id"/>
					</form:select>						
				</div>
			</div>
			
			<div>
				<label class="labelDecor" for="level"><spring:message code="question.level"/></label>
				<div class="divDecor">
					<form:select id="level" path="level" class="controlWidth">
						<form:option value="" label="---Select a level---"/>
						<form:options items="${levels}"/>
					</form:select>
				</div>
			</div>
			
<<<<<<< HEAD
			<div class="form-group">
				<label class="control-label col-sm-4" for="type"><spring:message code="question.type"/></label>
				<div class="col-sm-6">
					<form:select id="type" path="type" class="controlWidth" onchange="showOrHide('#divQuestionChoice')">
=======
			<div >
				<label class="labelDecor" for="type"><spring:message code="question.type"/></label>
				<div class="divDecor">
					<form:select id="type" path="type" class="controlWidth">
>>>>>>> branch 'master' of https://abinettafa@bitbucket.org/annguyen1502/testonline.git
						<form:option value="" label="---Select a type---"/>
						<form:options items="${questionTypes}"/>
					</form:select>
				</div>
			</div>		

			<div >
				<label class="labelDecor" for="description"><spring:message code="question.description"/></label>
				<div class="divDecor">
					<form:textarea id="description" path="description" rows = "5" cols="100"/>
				</div>
			</div>
			
			<div >
				<label class="labelDecor" for="image"><spring:message code="question.image"/></label>
				<div class="divDecor">						
					<form:input id="image" path="image" type="file"/>
				</div>
			</div>					
					
									
			<div id="divQuestionChoice">			
				<c:forEach items="${question.choices}" var="choice" varStatus="loop">
					<div id="0">
						<label class="labelDecor" for="questionChoice"><spring:message code="question.questionChoice"/></label>
						<div class="divDecor">
							<form:input id="questionChoice" path="choices[${loop.index}].description" type="text" class="form:input-large controlWidth"/>						
							<form:checkbox id="isCorrect" path="choices[${loop.index}].isCorrect"/>						
							<form:errors path="choices[${loop.index}].description" cssClass="text-danger"/>
						</div>
					</div>
				</c:forEach>									
				<div class="form-group col-sm-4">
				<input type="button" id="btnAddQuestionChoice" class="btn btn-primary" value ="Add" onclick="addQuestionChoice('divQuestionChoice');"/>		
				</div>					
			</div>
			
<<<<<<< HEAD
			
=======
			<div class="divButton marginLeft">
				<input type="button" id="btnAddQuestionChoice" class="btn btn-primary" value ="<spring:message code="button.AddChoice"/>" onclick="addQuestionChoice('divQuestionChoice');"/>		
			</div>
>>>>>>> branch 'master' of https://abinettafa@bitbucket.org/annguyen1502/testonline.git
								
			
			<div class="divButton">
					<input type="submit" id="btnAdd" class="btn btn-primary" value ="<spring:message code="button.Update"/>"/>
			</div>
					
										
		</fieldset>
	</form:form>
</section>

