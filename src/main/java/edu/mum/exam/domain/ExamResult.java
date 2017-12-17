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
public class ExamResult {
	
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
	
}
