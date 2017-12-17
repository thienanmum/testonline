package edu.mum.exam.domain;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.validation.constraints.NotNull;

@Entity
public class ExamQuestion {
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private Long id;
	
	@ManyToOne
	@JoinColumn
	private Exam exam;
	
	@ManyToOne
	@JoinColumn
	private Question question;
	
	@NotNull
	private Integer questionNumber;
	
	private Integer gradePoint;
	
}
