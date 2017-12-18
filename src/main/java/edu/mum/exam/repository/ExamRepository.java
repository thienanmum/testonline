package edu.mum.exam.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import edu.mum.exam.domain.Exam;

@Repository
public interface ExamRepository extends CrudRepository<Exam, Long> {

}
