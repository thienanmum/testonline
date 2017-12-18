<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"  %>

<form:form modelAttribute="assessment.answer">
	<div><c:out value="${assessment.question.description}"/></div>
	<input type="hidden" name="_flowExecutionKey" value="${flowExecutionKey}"/>
	
	<form:input id="description" path="description"/>
	
	<c:if test="assessment.hasPreviousAnswer()">
		<button id="previous" name="_eventId_previous">Previous</button>
	</c:if>
	<c:choose>
		<c:when test="assessment.hasNextAnswer()">
			<button id="next" name="_eventId_next">Next</button>
		</c:when>
		<c:otherwise>
			<button id="finish" name="_eventId_finish">Finish</button>
		</c:otherwise>
	</c:choose>
	<button id="cancel" name="_eventId_cancel">Cancel</button>
</form:form>
	


