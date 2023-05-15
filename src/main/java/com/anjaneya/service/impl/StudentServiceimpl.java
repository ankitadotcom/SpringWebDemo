package com.anjaneya.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.anjaneya.entity.Student;
import com.anjaneya.repository.StudentRepository;
import com.anjaneya.service.StudentService;

@Service
public class StudentServiceimpl implements StudentService{
	
	@Autowired
	private StudentRepository studentRepository;
	
	
	public StudentServiceimpl(StudentRepository studentRepository) {
		super();
		this.studentRepository = studentRepository;
	}


	@Override
	public List<Student> getAllstudents() {
		return studentRepository.findAll();
	}


	@Override
	public Student saveStudent(Student student) {
		return studentRepository.save(student);
	}


	@Override
	public Student getStudentById(Integer id) {
		return studentRepository.findById(id).get();
	}


	@Override
	public Student updateStudent(Student student) {
		return studentRepository.save(student);
	}


	@Override
	public void deleteStudentById(Integer id) {
		studentRepository.deleteById(id);
	}


	@Override
	public Integer SaveStudent(Student std) {
		std=studentRepository.save(std);
		return std.getId();
	}


	@Override
	public Student create(Student std) {
		return studentRepository.save(std);
	}
	
}
