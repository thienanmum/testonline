package edu.mum.exam.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import edu.mum.exam.domain.Exam;
import edu.mum.exam.domain.ExamQuestion;
import edu.mum.exam.domain.Question;
import edu.mum.exam.repository.ExamRepository;
import edu.mum.exam.service.ExamService;
import edu.mum.exam.service.QuestionService;
@Service
@Transactional
public class ExamServiceImpl implements ExamService{
	@Autowired
	ExamRepository examRepository;
	@Autowired
	QuestionService questionService;
	public Iterable<Exam> getAllExams(){
		return examRepository.findAll();
	}
	public Exam save(Exam exam)
	{
		return examRepository.save(exam);
	}
	public Exam getExamById(String examId)
	{
		return examRepository.getExamByExamId(examId);
	}
	public ExamQuestion saveExamQuestion(ExamQuestion examQuestion)
	{
		return examRepository.save(examQuestion);
	}
	
}
