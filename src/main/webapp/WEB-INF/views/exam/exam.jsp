<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"  %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
	
<html>
 <link rel="stylesheet"	href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css">
 	<script type="text/javascript" src="http://code.jquery.com/jquery-1.10.1.min.js"></script>
	<script type="text/javascript" src="<spring:url value="/resource/js/addqn.js"/>"></script>
	
 <body>
 <div>
 Exam ID : ${exam.examId} <br>
 Subject : ${exam.subject}<br>
 </div>
<div id=questions>
<c:forEach items="${exam.questions}" var="question">
${question.questionNumber} . ${question.question.description}<br>
</c:forEach>
</div>
 <div id="existing" style="display:none">	
 	<section class="container" >
	<form:form modelAttribute="examQuestion" id="examQuestion" action="addExamQuestion" method='POST'>
	<form:errors path="*"/>
		<c:forEach items="${questions}" var="question">
		<form:radiobutton value="${question.questionId}" path="question.questionId"/>${question.description}<br>
		</c:forEach>
	
		Grade Point : <form:input path="gradePoint"/><br>
		Question Number : <form:input  path="questionNumber"/><br>
		<input type="submit" value="Add"/>
		
	</form:form>
	
	</section>
</div>	
<div id="buttons">
<input type="button" id="addNew" onclick="make_visible('new');make_hidden('existing');" value="Add New Question"></button>
<input type="button" id="addExisting" onclick="make_visible('existing');make_hidden('new')" value="Add Existing Question"></button>
</div>
<div id="new" style="display:none">
	
</div>
<div id="save">
	<form id="saveForm" class="form-horizontal" action="save" method='POST'>
	<div class="col-lg-offset-2 col-sm-10">
		<input type="submit" id="btnAdd" class="btn btn-primary" value ="Save Exam"/>
	</div>
	
	</form>
	</div>
</body>
</html>
