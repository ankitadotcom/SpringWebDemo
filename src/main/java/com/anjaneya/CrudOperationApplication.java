package com.anjaneya;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

import com.anjaneya.entity.Student;
import com.anjaneya.repository.StudentRepository;

@SpringBootApplication
public class CrudOperationApplication implements CommandLineRunner {

	public static void main(String[] args) {
		SpringApplication.run(CrudOperationApplication.class, args);
	}
	@Autowired
	private StudentRepository studentRepository;
	@Override
	public void run(String... args) throws Exception {
//		Student s1=new Student("Disha", "Trivedi", "disha@gmail.com", "9875632141", "A-26 Dwarkesh Bunglows", "Chhani Jakatnaka Chhani Gam Baroda", 10, "Female");
//		studentRepository.save(s1);
//		
//		Student s2=new Student("Ankita", "Vyas", "ankita@gmail.com", "7567033136", "103/E,Lakhavad 50 Varya", "Ghogha Jakatnaka Bhavnagar", 28, "Female");
//		studentRepository.save(s2);
	}

}
