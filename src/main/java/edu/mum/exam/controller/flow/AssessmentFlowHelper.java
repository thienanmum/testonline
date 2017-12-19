package edu.mum.exam.controller.flow;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import edu.mum.exam.service.AssessmentService;

@Component
public class AssessmentFlowHelper {
	
	@Autowired
	AssessmentService assessmentService;
	
	public AssessmentWrapper createAssessment(Long examId) {
		return new AssessmentWrapper(assessmentService.CreateAssessmentForExam(examId));
	}
	
	public void saveAssessment(AssessmentWrapper assessmentWrapper) {
		assessmentService.saveAssessment(assessmentWrapper.getAssessment());
	}
}
