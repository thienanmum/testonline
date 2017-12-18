package edu.mum.exam.service.impl;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import edu.mum.exam.domain.Assessment;
import edu.mum.exam.domain.Exam;
import edu.mum.exam.repository.AssessmentRepository;
import edu.mum.exam.repository.ExamRepository;
import edu.mum.exam.service.AssessmentService;

@Service
@Transactional
public class AssessmentServiceImpl implements AssessmentService {
	
	@Autowired
	AssessmentRepository assessmentRepository;	
	@Autowired
	ExamRepository examRepository;
	
	@Override
	public Assessment CreateAssessmentForExam(Long examId) {
		Assessment assessment = new Assessment();
		Exam exam = examRepository.findOne(examId);
		assessment.assignExam(exam);
		return assessment;
	}
}
