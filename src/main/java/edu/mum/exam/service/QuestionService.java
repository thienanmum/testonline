package edu.mum.exam.service;

import edu.mum.exam.domain.Question;

public interface QuestionService {
	Iterable<Question> getAllQuestions();
	Question saveQuestion(Question question);
	Question getQuestionById(long questionId);
	
}
