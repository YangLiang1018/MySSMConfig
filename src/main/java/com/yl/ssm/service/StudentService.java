package com.yl.ssm.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import com.yl.ssm.bean.Student;

import com.yl.ssm.dao.StudentMapper;

@Service
public class StudentService {
	
	@Autowired
	public StudentMapper stu;

	public List<Student> getAllStudent() {
		
		
		return stu.selectAll();
	}
	
	public Student getStudent(int id) {
		return stu.selectByPrimaryKey(id);
	}
	
	public int  insertStudent(Student record) {
		return stu.insert(record);
	}
	
	public void  addStudents(List<Student> students) {
		stu.addStudents(students);
	}


}
