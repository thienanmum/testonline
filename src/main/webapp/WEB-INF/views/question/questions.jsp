<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<html>
 <link rel="stylesheet"
	href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css">
 
<body>
 	<section class="container">
		<div class="row">
			<c:forEach items="${questions}" var="question">
				<div class="col-sm-6 col-md-3" style="padding-bottom: 15px">
					<div class="thumbnail">					
						<div class="caption">
							<h3>${question.questionId}</h3>
							<p>${question.description}</p>
							<!-- <p><spring:message code="QuestionType.${question.type}" /></p>  -->
							<img src="<c:url value ="/resource/images/${question.questionId}.png"/>" alt="This is the question image"/>
							<ol>
								<c:forEach items="${question.choices}" var="choice">
									<li>
										<c:choose>
											<c:when test="${question.type eq 'SingleChoice'}"><input type="radio"/></c:when>
											<c:when test="${question.type eq 'MultipleChoices'}"><input type="checkbox"/></c:when>
										</c:choose>
									${choice.text}
									</li>
								</c:forEach>
							</ol>					
							<p>
								<a
									href=" <spring:url value="/questions/detail?id=${question.id}" /> "
									class="btn btn-primary"> <span
									class="glyphicon-info-sign glyphicon" /></span> Details
								</a>
							</p>

						</div>

					</div>
				</div>
			</c:forEach>
		</div>
	</section>
</body>
</html>

