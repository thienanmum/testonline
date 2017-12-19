package edu.mum.exam.service;

import edu.mum.exam.domain.Exam;
import edu.mum.exam.domain.ExamQuestion;
import edu.mum.exam.domain.Question;

public interface ExamService {
	Iterable<Exam> getAllExams();
	Exam save(Exam exam);
	Exam getExamById(String examId);
	ExamQuestion saveExamQuestion(ExamQuestion examQuestion);
	}
