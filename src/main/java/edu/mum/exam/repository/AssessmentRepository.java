package edu.mum.exam.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import edu.mum.exam.domain.Assessment;

@Repository
public interface AssessmentRepository extends CrudRepository<Assessment, Long>{

}
