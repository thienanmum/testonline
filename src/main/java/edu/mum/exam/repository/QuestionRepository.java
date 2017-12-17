package edu.mum.exam.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import edu.mum.exam.domain.Question;

@Repository
public interface QuestionRepository extends CrudRepository<Question, Long> {
	
}
