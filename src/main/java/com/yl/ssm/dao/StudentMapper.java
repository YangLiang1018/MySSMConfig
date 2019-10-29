package com.yl.ssm.dao;


import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.yl.ssm.bean.Student;


public interface StudentMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Student record);

    Student selectByPrimaryKey(Integer id);

    List<Student> selectAll();

    int updateByPrimaryKey(Student record);

	void addStudents(@Param("students") List<Student> students);
}