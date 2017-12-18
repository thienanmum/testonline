package edu.mum.exam.service;

import edu.mum.exam.domain.Assessment;

public interface AssessmentService {
	Assessment CreateAssessmentForExam(Long examId);
}
