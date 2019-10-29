package com.yl.ssm.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.yl.ssm.bean.Msg;
import com.yl.ssm.bean.Student;
import com.yl.ssm.service.StudentService;

@Controller
public class StudentController {

	@Autowired
	StudentService stuService;

	@RequestMapping("/students")
	@ResponseBody
	public Msg student() {
	

		List<Student> stu = stuService.getAllStudent();
		return Msg.success().add("stu", stu);
	}

	

}
