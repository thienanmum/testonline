<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>

<li><a href="<spring:url value="/welcome" />">Home</a></li>
<li><a href="<spring:url value="/questions/" />">Questions</a></li>
<security:authorize access="hasRole('ROLE_PROFESSOR')">
	<li><a href="<spring:url value="/questions/add" />">Add Question</a></li>
</security:authorize>
<li><a href="<spring:url value="/exam" />">Exams</a></li>
<security:authorize access="hasRole('ROLE_PROFESSOR')">
	<li><a href="<spring:url value="/exam/addExam" />">Add Exam</a></li>
</security:authorize>
<li><a href="<spring:url value="/assessments/" />">Assessments</a></li>