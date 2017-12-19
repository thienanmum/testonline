	package edu.mum.registration.controller;

import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.Logger;
import org.springframework.core.annotation.AnnotationUtils;
import org.springframework.http.HttpStatus;
import org.springframework.security.access.AccessDeniedException;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.servlet.ModelAndView;

import edu.mum.exam.exception.ExamNotFoundException;

@ControllerAdvice
public class ControllerExceptionHandler {
		
		private static final Logger logger = Logger.getLogger(ControllerExceptionHandler.class);
		
		public static final String DEFAULT_ERROR_VIEW = "error";

		@ExceptionHandler(ExamNotFoundException.class)
		public ModelAndView handleError(HttpServletRequest req, ExamNotFoundException exception) {
			 ModelAndView mav = new ModelAndView();
			 mav.addObject("invalidExamId", exception.getFullMessage());
 			 mav.setViewName("examNotFound");
			 return mav;
		}
		
		@ExceptionHandler(value = AccessDeniedException.class)
	    public String accessDenied() {
	        return  "error-forbidden";
	    }
		 
		// BIG BUCKET
	    @ExceptionHandler(value = Exception.class)
	    public ModelAndView defaultErrorHandler(HttpServletRequest req, Exception e) throws Exception {	    	
	        // If the exception is annotated with @ResponseStatus rethrow it and let
	        // the framework handle it -  
	        if (AnnotationUtils.findAnnotation(e.getClass(), ResponseStatus.class) != null)
	            throw e;
	        logger.error("Unknown errror.", e);
	        // Otherwise setup and send the user to a default error-view.
	        ModelAndView mav = new ModelAndView();
	        mav.addObject("exception", e);
	        mav.addObject("url", req.getRequestURL());
	        mav.setViewName(DEFAULT_ERROR_VIEW);
	        return mav;
	    }

}
