package edu.mum.exam.domain;

import java.util.List;

import javax.persistence.*;
import javax.validation.Valid;
import javax.validation.constraints.NotNull;

import org.hibernate.validator.constraints.NotEmpty;

@Entity
public class Question {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private Long id;
	
	@NotEmpty
	private String questionId;
	
	@OneToOne(fetch=FetchType.EAGER, cascade=CascadeType.ALL)
	@JoinColumn(name="subject")
	private Subject subject;
	
	@Enumerated(EnumType.STRING)
	private Level level;
	
	@NotEmpty
	private String description;
	
	@Enumerated(EnumType.STRING)
	private QuestionType type;
	
	@OneToMany(fetch=FetchType.EAGER,cascade=CascadeType.ALL)
	@JoinColumn(name="question_id")
	private List<QuestionChoice> choices;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getQuestionId() {
		return questionId;
	}

	public void setQuestionId(String questionId) {
		this.questionId = questionId;
	}

	public String getDescription() {
		return description;
	}

	public void setText(String description) {
		this.description = description;
	}

	public QuestionType getType() {
		return type;
	}

	public void setType(QuestionType type) {
		this.type = type;
	}

	public List<QuestionChoice> getChoices() {
		return choices;
	}

	public void setChoices(List<QuestionChoice> choices) {
		this.choices = choices;
	}

	public Subject getSubject() {
		return subject;
	}

	public void setSubject(Subject subject) {
		this.subject = subject;
	}

	public Level getLevel() {
		return level;
	}

	public void setLevel(Level level) {
		this.level = level;
	}
}
