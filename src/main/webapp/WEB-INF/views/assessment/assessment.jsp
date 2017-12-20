<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
 
<div class="container">
<div>Exam - ${assessment.exam.examId}</div>
<hr>
<div>
	<c:forEach items="${assessment.answers}" var="answer" varStatus="loop">
		<div class="question">
			<p>${loop.index + 1}.${answer.question.description}</p>													
			<p><img src="<c:url value ="/resource/images/${answer.question.questionId}.png"/>" alt="" height="150" width="150"/></p>
			<c:if test="${answer.question.type eq 'FreeText'}">
				<textarea readonly><c:out value="${answer.description}"/></textarea>
			</c:if>
			<ol class="choices">
				<c:forEach items="${answer.choices}" var="choice">
					<li>
						<c:choose>
							<c:when test="${choice.selected}"><input type="checkbox" disabled checked/></c:when>
							<c:otherwise><input type="checkbox" disabled/></c:otherwise>
						</c:choose>
					${choice.questionChoice.description}
					</li>
				</c:forEach>
			</ol>
		</div>
	</c:forEach>
</div>
</div>

