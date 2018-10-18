package com.qf.student.service;

import com.alibaba.fastjson.JSONObject;
import com.qf.model.Student;

import java.util.List;

public interface IStudentservice {

    /*查询所有*/
    public List<Student> listByAll(JSONObject jsonObject)throws Exception;
    /*通过学号查询*/
    public  Student listBysnumber(Student student)throws Exception;
    /*学生添加*/
    public void insertByStudent(Student student)throws Exception;
    /*通过id修改*/
    public int updateBysid(Student student)throws Exception;
    /*修改状态1*/
    public void updateBystate(Student student)throws Exception;
    /*修改状态2*/
    public void updateBystatetwo(Student student)throws Exception;
    /*登入*/
    public Student selectByname(Student student)throws Exception;

    public Student selectid(Student student)throws Exception;
    public int fincunt()throws Exception;

}
