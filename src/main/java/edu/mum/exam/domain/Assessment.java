package edu.mum.exam.domain;

import java.util.Date;
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

import edu.mum.registration.domain.Student;
import edu.mum.registration.domain.User;

@Entity
public class Assessment {
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private Long id;
	
	@ManyToOne(fetch=FetchType.EAGER)
	@JoinColumn
	private Student student;
	
	@ManyToOne(fetch=FetchType.EAGER)
	@JoinColumn
	private Exam exam;
	
	/**
	 * All the answers of exam questions given by the student.
	 */
	@OneToMany(fetch=FetchType.EAGER,cascade=CascadeType.ALL)
	private List<Answer> answers;
	
	/*
	 * The total core calculated base on the answers of student.
	 */
	private Integer score;
	
	/*
	 * The time at that student begins the exam.
	 */
	private Date startTime;
	
	/*
	 * The time at that student finishs the exam.
	 */
	private Date endTime;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public Student getStudent() {
		return student;
	}

	public void setStudent(Student student) {
		this.student = student;
	}

	public Exam getExam() {
		return exam;
	}

	public void setExam(Exam exam) {
		this.exam = exam;
	}

	public List<Answer> getAnswers() {
		return answers;
	}

	public void setAnswers(List<Answer> answers) {
		this.answers = answers;
	}

	public Integer getScore() {
		return score;
	}

	public void setScore(Integer score) {
		this.score = score;
	}

	public Date getStartTime() {
		return startTime;
	}

	public void setStartTime(Date startTime) {
		this.startTime = startTime;
	}

	public Date getEndTime() {
		return endTime;
	}

	public void setEndTime(Date endTime) {
		this.endTime = endTime;
	}
	
}
