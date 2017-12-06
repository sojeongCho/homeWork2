package kr.ac.hansung.controller;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.ObjectError;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.ac.hansung.model.Subject;
import kr.ac.hansung.service.SubjectService;

@Controller
public class SubjectController {
	@Autowired
	private SubjectService subjectService;

	@RequestMapping("/subjects")
	public String showSubjects(Model model) {
		List<Subject> subjects = subjectService.getCurrent();
		model.addAttribute("subjects", subjects);

		return "subjects";
	}

	
	@RequestMapping("/detail1")
	public String showDetailSubjects(Model model) {
		List<Subject> subjects = subjectService.getCurrent();
		model.addAttribute("subjects", subjects);

		return "detail1";
	}
	@RequestMapping("/detail2")
	public String showDetail2Subjects(Model model) {
		List<Subject> subjects = subjectService.getCurrent();
		model.addAttribute("subjects", subjects);

		return "detail2";
	}

	@RequestMapping("/detail3")
	public String showDetail3Subjects(Model model) {
		List<Subject> subjects = subjectService.getCurrent();
		model.addAttribute("subjects", subjects);

		return "detail3";
	}

	@RequestMapping("/detail4")
	public String showDetail4Subjects(Model model) {
		List<Subject> subjects = subjectService.getCurrent();
		model.addAttribute("subjects", subjects);

		return "detail4";
	}

	@RequestMapping("/detail5")
	public String showDetail5Subjects(Model model) {
		List<Subject> subjects = subjectService.getCurrent();
		model.addAttribute("subjects", subjects);

		return "detail5";
	}

	@RequestMapping("/detail6")
	public String showDetail6Subjects(Model model) {
		List<Subject> subjects = subjectService.getCurrent();
		model.addAttribute("subjects", subjects);

		return "detail6";
	}
	@RequestMapping("/dividesubjects")
	public String showDivideSubjects(Model model) {
		List<Subject> subjects = subjectService.getCurrent();
		model.addAttribute("subjects", subjects);

		return "dividesubjects";
	}
	@RequestMapping("/checkapplysubjects")
	public String checkapplySubjects(Model model) {
		List<Subject> subjects = subjectService.getCurrent();
		model.addAttribute("subjects", subjects);

		return "checkapplysubjects";
	}
	@RequestMapping("/applysubjects")
	public String applySubject(Model model) {
		
		model.addAttribute("subject", new Subject());
		
		return "applysubjects";
	}
	
	@RequestMapping("/docreate")
	public String doCreate(Model model,@Valid Subject subject, BindingResult result) {
		System.out.println("in do");
		if(result.hasErrors()) {
			System.out.println("===Form data does not validated");
			List<ObjectError> errors = result.getAllErrors();
				
			for(ObjectError error:errors) {
				System.out.println(error.getDefaultMessage());
			}
			return "applysubjects";
		}
		
		subjectService.insert(subject);
		
		return "subjectcreated";
	}
	


}
