package com.anjaneya.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.anjaneya.entity.Student;

public interface StudentRepository extends JpaRepository<Student, Integer>{

}
