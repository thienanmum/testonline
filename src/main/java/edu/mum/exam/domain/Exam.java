package edu.mum.exam.domain;

import java.io.Serializable;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;

import org.hibernate.validator.constraints.NotEmpty;

import edu.mum.registration.domain.Professor;

@Entity
public class Exam implements Serializable {	
	private static final long serialVersionUID = 4420032127533170394L;

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private Long id;
	@Column(unique=true)
	@NotEmpty
	private String examId;
	
	@NotEmpty
	private String subject;	
	
    @OneToMany(mappedBy="exam",fetch=FetchType.EAGER)
	private List<ExamQuestion> questions;
	
	@ManyToOne
	private Professor owner;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getExamId() {
		return examId;
	}

	public void setExamId(String examId) {
		this.examId = examId;
	}

	public String getSubject() {
		return subject;
	}

	public void setSubject(String subject) {
		this.subject = subject;
	}

	public List<ExamQuestion> getQuestions() {
		return questions;
	}

	public void setQuestions(List<ExamQuestion> questions) {
		this.questions = questions;
	}

	public Professor getOwner() {
		return owner;
	}

	public void setOwner(Professor owner) {
		this.owner = owner;
	}
	
}
