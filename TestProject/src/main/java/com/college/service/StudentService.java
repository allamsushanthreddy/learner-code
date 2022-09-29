package com.college.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.college.entity.Student;

@Service
public interface StudentService {
	public List<Student>findAll();
	 public void save(Student theStudent);
	 public void deleteById(int theId);
 	public Student findById(int theId);
}
