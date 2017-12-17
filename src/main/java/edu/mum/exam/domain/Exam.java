package edu.mum.exam.domain;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;

import org.hibernate.validator.constraints.NotEmpty;

@Entity
public class Exam {	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private Long id;
	
	@NotEmpty
	private String examId;
	
	@NotEmpty
	private String subject;	
	
	@OneToMany(mappedBy="exam")
	private List<ExamQuestion> questions;	
}
