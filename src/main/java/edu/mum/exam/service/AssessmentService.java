package edu.mum.exam.service;

import java.util.List;

import edu.mum.exam.domain.Assessment;

public interface AssessmentService {
	Assessment CreateAssessmentForExam(Long examId);
	void saveAssessment(Assessment assessment);
	List<Assessment> getAllAssessments();
	Assessment getAssessmentById(Long id);
}
