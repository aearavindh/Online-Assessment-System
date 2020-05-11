package com.aea.onlineassessmentsystem.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.aea.onlineassessmentsystem.dao.TestRepository;
import com.aea.onlineassessmentsystem.dao.UserRepository;
import com.aea.onlineassessmentsystem.model.Test;
import com.aea.onlineassessmentsystem.model.User;

@Controller
@SessionAttributes({"user", "date"})
public class AssessmentController {
	
	@Autowired
	UserRepository userRepository;
	
	@Autowired
	TestRepository testRepository;
	
	public static String date = null;
	
	@RequestMapping("/")
	public String bringHome() {
		return "index";
	}
	
	@RequestMapping("/login")
	public ModelAndView login(@RequestParam String email, @RequestParam String password, ModelMap model) {
		ModelAndView mv = null;
		
		Optional<User> user = userRepository.findById(email);
		
		if(!user.isPresent()) {
			mv = new ModelAndView("invalidUser");
		}
		else {
			if(user.get().getPassword().equals(password)) {
				if(user.get().getUserType().equals("admin"))
					mv = new ModelAndView("adminPage");
				else
					mv = new ModelAndView("userPage");
				model.put("user", user.get());
			}
			else {
				mv = new ModelAndView("passwordError");
			}
		}
		
		return mv;
	}
	
	@RequestMapping("/register")
	public ModelAndView register(@RequestParam String firstname, @RequestParam String lastname, @RequestParam String email, @RequestParam String password) {
		User user = userRepository.save(new User(email,firstname,lastname,password, "candidate"));
		ModelAndView mv = new ModelAndView("registrationConfirmation");
		mv.addObject(user);
		return mv;
	}
	
	@RequestMapping("/submit_spring")
	public String evaluateSpring(@RequestParam String Question1,
			@RequestParam String Question2, @RequestParam String Question3, 
			@RequestParam String Question4, @RequestParam String Question5, 
			@ModelAttribute User user) {
		int marks = 0;
		String result ,page;
		if(Question1.equals("J2EE App Development Framework"))
			marks += 10;
		if(Question2.equals("Inversion Of Control"))
			marks += 10;
		if(Question3.equals("Aspect Oriented Programming"))
			marks += 10;
		if(Question4.equals("Application Context"))
			marks += 10;
		if(Question5.equals("Dispatcher Servlet"))
			marks += 10;
		if(marks>=30) {
			result = "Passed";
			page = "success";
		}
		else {
			result = "Failed";
		    page = "failure";	
		}
		testRepository.save(new Test(date, "Spring-L1", marks, user, 50, result));
		return page;
	}
	
	@RequestMapping("/submit_hibernate")
	public String evaluateHibernate(@RequestParam String Question1,
			@RequestParam String Question2, @RequestParam String Question3, 
			@RequestParam String Question4, @RequestParam String Question5,
			@ModelAttribute User user) {
		int marks = 0;
		String result, page;
		if(Question1.equals("Object Relational Mapping"))
			marks += 10;
		if(Question2.equals("uni-directional & bi-directional"))
			marks += 10;
		if(Question3.equals("configuration file"))
			marks += 10;
		if(Question4.equals("Hibernate Query Language"))
			marks += 10;
		if(Question5.equals("isolation levels"))
			marks += 10;
		if(marks>=30) {
			result = "Passed";
			page = "success";
		}
		else {
			result = "Failed";
			page = "failure";
		}
		testRepository.save(new Test(date, "Hibernate-L1", marks, user, 50, result));
		return page;
	}
	
	@RequestMapping("/spring")
	public String startSpring() {
		date = new SimpleDateFormat("dd/MM/YYYY hh:mm:ss").format(new Date());
		return "springAssessment";
	}
	
	@RequestMapping("/hibernate")
	public String startHibernate() {
		date = new SimpleDateFormat("dd/MM/YYYY hh:mm:ss").format(new Date());
		return "hibernateAssessment";
	}
	
	@RequestMapping("/all_users")
	public String getAllUsers(ModelMap model) {
		List<User> users = userRepository.findAllUsers();
		model.put("users", users);
		return "allUserDetails";
	}
	
	@RequestMapping("/all_tests")
	public String getAllTests(ModelMap model) {
		List<Test> tests = testRepository.findAllTests();
		model.put("tests", tests);
		return "allTestsDetails";
	}
	
	@RequestMapping("/go_to_home")
	public String goToHome(@ModelAttribute User user) {
		if(user.getUserType().equals("admin"))
			return "adminPage";
		else 
			return "userPage";
	}
	
	@RequestMapping("/logout")
	public String logout(ModelMap model) {
		model.remove("user");
		return "index";
	}

}
