package edu.mum.exam.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import edu.mum.exam.service.AssessmentService;

@Controller
@RequestMapping("assessments")
public class AssessmentController {
	
	@Autowired
	AssessmentService assessmentService;
	
	@RequestMapping(value= {"", "/"}, method=RequestMethod.GET)
	public String list() {
		return "assessment/assessments";
	}
}
