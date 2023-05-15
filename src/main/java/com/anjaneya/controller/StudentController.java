package com.anjaneya.controller;

import java.sql.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.HttpStatusCode;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.anjaneya.entity.Student;
import com.anjaneya.service.StudentService;
import com.anjaneya.service.impl.StudentServiceimpl;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;

@Controller
public class StudentController {
	@Autowired
	private StudentService studentservice;

	public StudentController(StudentService studentservice) {
		super();
		this.studentservice = studentservice;
	}
	@GetMapping("/students")
	public String liststudents(Model model) {
		model.addAttribute("students",studentservice.getAllstudents());
		return "students";
	}
	@GetMapping("/students/new")
	public String CreateStudentForm(Model model) {
		Student stud=new Student();
		model.addAttribute("student", stud);
		return "/create_stud";
	}
	@PostMapping("/students")
	public String saveStudent(@ModelAttribute("student") Student student) {
		Student s=new Student();
		s.setFirstname(student.getFirstname());
		s.setLastname(student.getLastname());
		s.setAddress1(student.getAddress1());
		s.setAddress2(student.getAddress2());
		s.setAge(student.getAge());
		s.setDt(student.getDt());
		s.setEmail(student.getEmail());
		s.setGender(student.getGender());
		s.setMobile(student.getMobile());
		studentservice.saveStudent(s);
		return "redirect:/students";
	}
	@GetMapping("/students/edit/{id}")
	public String editStudent(@PathVariable Integer id,Model model) {
		model.addAttribute("student",studentservice.getStudentById(id));
		return "/edit_stud";
	}
	@PostMapping("/students/{id}")
	public String updateStudent(@PathVariable Integer id,@ModelAttribute("student") Student student,Model model) {
		Student existingstudent=studentservice.getStudentById(id);
		existingstudent.setId(id);
		existingstudent.setFirstname(student.getFirstname());
		existingstudent.setLastname(student.getLastname());
		existingstudent.setEmail(student.getEmail());
		existingstudent.setGender(student.getGender());
		existingstudent.setMobile(student.getMobile());
		existingstudent.setAge(student.getAge());
		existingstudent.setAddress1(student.getAddress1());
		existingstudent.setAddress2(student.getAddress2());
		existingstudent.setDt(student.getDt());
		studentservice.updateStudent(existingstudent);
		return "redirect:/students";	
	}
	@GetMapping("/students/{id}")
	public String deleteStudent(@PathVariable Integer id) {
		studentservice.deleteStudentById(id);
		return "redirect:/students";
	}
}
