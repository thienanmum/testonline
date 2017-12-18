package edu.mum.exam.controller.flow;

import edu.mum.exam.domain.Answer;
import edu.mum.exam.domain.Assessment;
import edu.mum.exam.domain.Question;

public class AssessmentWrapper {
	
	private Assessment assessment;
	private int currentIndex;
	
	// default constructor for used in webflow scopes.
	public AssessmentWrapper() {
		
	}
	
	public AssessmentWrapper(Assessment assessment) {
		this.assessment = assessment;
		currentIndex = 0;
	}
	
	public Answer getAnswer() {
		return assessment.getAnswers().get(currentIndex);
	}
	
	public boolean nextAnswer() {		
		if (currentIndex < assessment.getAnswers().size()) {
			currentIndex++;
			return true;
		} else {
			return false;
		}
	}
	
	public boolean previousAnswer() {		
		if (currentIndex >= 0) {
			currentIndex--;
			return true;
		} else {
			return false;
		}
	}
	
	public boolean hasNextAnswer() {
		return currentIndex < assessment.getAnswers().size() - 1;
	}
	
	public boolean hasPreviousAnswer() {
		return currentIndex > 0;
	}
	
	public Assessment getAssessment() {
		return assessment;
	}
	
	public Question getQuestion() {
		return getAnswer().getQuestion();
	}
}
