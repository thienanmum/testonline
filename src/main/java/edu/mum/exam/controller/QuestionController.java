package edu.mum.exam.controller;

import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import edu.mum.exam.domain.Question;
import edu.mum.exam.domain.QuestionType;
import edu.mum.exam.service.QuestionService;
import edu.mum.formatter.QuestionTypeFormatter;

@RequestMapping("/questions")
@Controller
public class QuestionController {
	
	@Autowired
	MessageSource messageSource;	
	@Autowired
	private QuestionTypeFormatter questionTypeFormatter;
	@Autowired
	private QuestionService questionService;
	
	@InitBinder
	private void initBinder(WebDataBinder binder) {
		binder.addCustomFormatter(questionTypeFormatter);
	}
	
	@RequestMapping(value= "/", method=RequestMethod.GET)
	public String list(Model model) {
		Iterable<Question> questions = questionService.getAllQuestions();
		model.addAttribute("questions", questions);
		return "question/questions";
	}
	
	@RequestMapping(value="/add", method=RequestMethod.GET)
	public String addQuestion(@ModelAttribute("question") Question question) {
		return "question/addQuestion";
	}
	
	@RequestMapping(value="/detail", method=RequestMethod.GET)
	public String showQuestionDetail(@RequestParam("id") Long id, Model model) {
		model.addAttribute("question", questionService.getQuestionById(id));
		return "question/question";
	}
	
	@RequestMapping(value="/add", method=RequestMethod.POST)
	public String saveQuestion(@Valid @ModelAttribute("question") Question question, BindingResult result) {
		if (result.hasErrors()) return "question/addQuestion";
		return "redirect:/questions";
	}
	
//	@ModelAttribute("questionTypes")
//	Map<String, String> getQuestionTypes(Locale locale) {
//		Map<String, String> questionTypes = new HashMap<>();
//		for (QuestionType type : QuestionType.values()) {
//			questionTypes.put(type.name(), 
//					messageSource.getMessage(type.getClass().getName()+ "." + type.name(), null, locale));
//		}
//		return questionTypes;
//	}
}
