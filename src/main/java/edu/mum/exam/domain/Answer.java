package edu.mum.exam.domain;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;

@Entity
public class Answer {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private Long id;
	
	/**
	 * The question that is this answer for.
	 */
	@ManyToOne
	@JoinColumn
	private Question question;
	
	/**
	 * Answer for the FreeText question
	 */
	private String description;
	
	/**
	 * Answer for the single choice and multiple choices question
	 */
	@OneToMany(fetch=FetchType.EAGER, cascade=CascadeType.ALL)
	List<AnswerChoice> choices;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public Question getQuestion() {
		return question;
	}

	public void setQuestion(Question question) {
		this.question = question;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public List<AnswerChoice> getChoices() {
		return choices;
	}

	public void setChoices(List<AnswerChoice> choices) {
		this.choices = choices;
	}
	
	public void assignQuestion(Question theQuestion) {
		question = theQuestion;
		if (question.getType() == QuestionType.MultipleChoices || 
			question.getType() == QuestionType.SingleChoice) {
			choices = new ArrayList<>();
			for (QuestionChoice questionChoice : question.getChoices()) {
				AnswerChoice answerChoice = new AnswerChoice();
				answerChoice.setQuestionChoice(questionChoice);
				choices.add(answerChoice);
			}			
		}
	}
}
