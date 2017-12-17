package edu.mum.exam.service.impl;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import edu.mum.exam.domain.Question;
import edu.mum.exam.repository.QuestionRepository;
import edu.mum.exam.service.QuestionService;

@Service
@Transactional
public class QuestionServiceImpl implements QuestionService {

	@Autowired
	private QuestionRepository questionRepository;
	
	@Override
	public Iterable<Question> getAllQuestions() {
		return questionRepository.findAll();
	}

	@Override
	public Question saveQuestion(Question question) {		
		return questionRepository.save(question);
	}

	@Override
	public Question getQuestionById(long questionId) {
		return questionRepository.findOne(questionId);
	}

}
