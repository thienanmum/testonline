<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
 
<body>
 	<section class="container">
		<div class="row">
			<table>
				<tr>
					<td>ExamId</td>
					<td>Subject</td>
					<td>Start Time</td>
					<td>End Time</td>
				</tr>				
				<c:forEach items="${assessments}" var="assessment">
				<tr>
					<td><a href="<spring:url value="/assessments/detail?id=${assessment.id}"/>"> 
						${assessment.exam.examId} </a></td>
					<td>${assessment.exam.subject}</td>
					<td>${assessment.startTime}</td>
					<td>${assessment.endTime}</td>
				</tr>
				</c:forEach>
			</table>
		</div>
	</section>
</body>
</html>

