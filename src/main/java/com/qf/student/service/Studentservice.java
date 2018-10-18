package com.qf.student.service;

import com.alibaba.fastjson.JSONObject;
import com.qf.model.Student;
import com.qf.student.dao.Studentdao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
@Service
@Transactional(isolation = Isolation.READ_COMMITTED,propagation = Propagation.REQUIRED)
public class Studentservice implements IStudentservice {
    @Autowired
    private Studentdao dao;
    /*查询所有*/
    @Override
    @Transactional(readOnly = true)
    public List<Student> listByAll(JSONObject jsonObject) throws Exception {
        return dao.selectByAll(jsonObject);
    }
    /*通过学号查询*/
    @Override
    @Transactional(readOnly = true)
    public Student listBysnumber(Student student) throws Exception {
        return dao.selectBysnumber(student);
    }
    /*学生添加*/
    @Override
    public void insertByStudent(Student student) throws Exception {
        dao.insertByStudent(student);
    }/*通过id修改*/
    @Override
    public int updateBysid(Student student) throws Exception {
      int  i=dao.updateBysid(student);
      return i;
    }
    /*修改状态1*/
    @Override
    public void updateBystate(Student student) throws Exception {
        dao.updateBystate(student);
    }
    /*修改状态2*/
    @Override
    public void updateBystatetwo(Student student) throws Exception {
        dao.updateBystatetwo(student);
    }
    /*登入*/
    @Override
    public Student selectByname(Student student) throws Exception {

        return dao.selectByname(student);
    }

    @Override
    @Transactional(readOnly = true)
    public Student selectid(Student student) throws Exception {
        return dao.selectid(student);
    }

    @Override
    public int fincunt() throws Exception {
        return dao.fincunt();
    }
}
