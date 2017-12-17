package edu.mum.exam.domain;

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
}
