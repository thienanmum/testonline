package edu.mum.exam.service.impl;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import edu.mum.exam.domain.Assessment;
import edu.mum.exam.repository.AssessmentRepository;
import edu.mum.exam.service.AssessmentService;

@Service
@Transactional
public class AssessmentServiceImpl implements AssessmentService {
	
	@Autowired
	AssessmentRepository assessmentRepository;
	
	@Override
	public Assessment CreateAssessmentForExam(Long examId) {
		// TODO Auto-generated method stub
		return null;
	}
}
