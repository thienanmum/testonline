<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"  %>

<form:form modelAttribute="assessment">
	<div>${assessment.questionNumber}.<c:out value="${assessment.question.description}"/></div>
	<input type="hidden" name="_flowExecutionKey" value="${flowExecutionKey}"/>
	<c:choose>
		<c:when test="${assessment.question.type eq 'FreeText'}">
			<div>
				<form:textarea id="answerdescription" path="answer.description"/>
			</div>
		</c:when>
		<c:otherwise>		
			<c:forEach items="${assessment.question.choices}" var="choice" varStatus="loop">
				<li>
					<c:choose>
						<c:when test="${assessment.question.type eq 'SingleChoice'}">
							<form:radiobutton path="answer.choices[${loop.index}].selected" />
						</c:when>
						<c:when test="${assessment.question.type eq 'MultipleChoices'}">
							<form:checkbox path="answer.choices[${loop.index}].selected" />
						</c:when>
					</c:choose>
					${choice.description}
				</li>
			</c:forEach>
		</c:otherwise>
	</c:choose>	
	<div>	
		<c:if test="${assessment.hasPreviousAnswer}">
			<button id="previous" name="_eventId_previous">Previous</button>
		</c:if>	
		<c:choose>
			<c:when test="${assessment.hasNextAnswer}">
				<button id="next" name="_eventId_next">Next</button>
			</c:when>
			<c:otherwise>
				<button id="finish" name="_eventId_finish">Finish</button>
			</c:otherwise>
		</c:choose>
		<button id="cancel" name="_eventId_cancel">Cancel</button>
	</div>
</form:form>
	


