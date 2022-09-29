package com.college.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.college.entity.Student;
import com.college.service.StudentService;
import com.college.service.StudentServiceImpl;

@Controller
@RequestMapping("/student")
public class StudentController {
	
	@Autowired
	StudentService studentService;

	@RequestMapping("/list")
	public String listBooks(Model theModel) {
		System.out.println("request Recieved");
		List<Student> theStudents = (studentService).findAll();
		theModel.addAttribute("student", theStudents);

		return "studentlist";
	}

	@RequestMapping("/showFormForAdd")
	public String showFormForAdd(Model theModel) {
		Student theStudent = new Student();
		theModel.addAttribute("student", theStudent);
		return "studentform";
	}

	@RequestMapping("/showFormForUpdate")
	public String showFormFormForUpdate(@RequestParam("studentId") int theId, Model theModel) {
		Student theStudent = studentService.findById(theId);
		theModel.addAttribute("student", theStudent);
		return "studentform";
	}

	@PostMapping("/save")
	public String saveStudent(@RequestParam("id") int id, @RequestParam("name") String name,
			@RequestParam("department") String department, @RequestParam("country") String country) {
		System.out.println(id);
		Student theStudent;
		if (id != 0) {
			theStudent = studentService.findById(id);
			theStudent.setName(name);
			theStudent.setDepartment(department);
			theStudent.setCountry(country);
		} else {
			theStudent = new Student(id, name, department, country);
		}
		studentService.save(theStudent);
		return "redirect:/student/list";
	}

	private Student studentService(int id) {

		return null;
	}

	@RequestMapping("/delete")
	public String delete(@RequestParam("studentId") int theId) {

		studentService.deleteById(theId);
		return "redirect:/student/list";

	}
}