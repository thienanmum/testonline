package edu.mum.exam.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import edu.mum.exam.service.AssessmentService;
import edu.mum.registration.domain.User;

@Controller
@RequestMapping("assessments")
public class AssessmentController {
	
	@Autowired
	AssessmentService assessmentService;
	
	@RequestMapping(value= {"", "/"}, method=RequestMethod.GET)
	public String list(Model model) {
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		User user = (User) auth.getPrincipal();
		model.addAttribute("assessments", assessmentService.getUserAssessments(user.getId()));
		return "assessment/assessments";
	}
}
