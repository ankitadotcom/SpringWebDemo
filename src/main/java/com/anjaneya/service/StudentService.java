package com.anjaneya.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.anjaneya.entity.Student;

@Service
public interface StudentService {
	List<Student> getAllstudents();
	Student saveStudent(Student student);
	Student getStudentById(Integer id);
	Student updateStudent(Student student);
	void deleteStudentById(Integer id);
	Integer SaveStudent(Student std);
	public Student create(Student std);
	
}
