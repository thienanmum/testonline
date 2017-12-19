package edu.mum.exam.service.impl;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import edu.mum.exam.domain.Assessment;
import edu.mum.exam.domain.Exam;
import edu.mum.exam.exception.ExamNotFoundException;
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
		if (exam == null) {
			throw new ExamNotFoundException(String.valueOf(examId), "Cannot find the exam by Id:");
		}
		assessment.assignExam(exam);
		return assessment;
	}

	@Override
	public void saveAssessment(Assessment assessment) {
		assessmentRepository.save(assessment);		
	}

	@Override
	public List<Assessment> getAllAssessments() {		
		return (List<Assessment>)assessmentRepository.findAll();
	}

	@Override
	public Assessment getAssessmentById(Long id) {
		return assessmentRepository.findOne(id);
	}

	@Override
	public List<Assessment> getUserAssessments(Long userId) {
		// TODO Auto-generated method stub
		return null;
	}	
	
}
