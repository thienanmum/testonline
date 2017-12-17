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
	
	@NotEmpty
	private String subject;
	
	@NotNull
	private Integer level;
	
	@NotEmpty
	private String description;
	
//	@NotNull
//	private Integer sortOrder;
	
	private String topic;
	
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

//	public Integer getSortOrder() {
//		return sortOrder;
//	}
//
//	public void setSortOrder(Integer sortOrder) {
//		this.sortOrder = sortOrder;
//	}

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

	public String getSubject() {
		return subject;
	}

	public void setSubject(String subject) {
		this.subject = subject;
	}

	public Integer getLevel() {
		return level;
	}

	public void setLevel(Integer level) {
		this.level = level;
	}
}
