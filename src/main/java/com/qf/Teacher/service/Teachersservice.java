package com.qf.Teacher.service;

import com.qf.Teacher.dao.Teacherdao;
import com.qf.model.Teacher;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
@Service
@Transactional(isolation = Isolation.READ_COMMITTED,propagation = Propagation.REQUIRED)
public class Teachersservice implements Teacherservice {
    @Autowired
    private Teacherdao dao;

    /*查询所有*/
    @Override
    public List<Teacher> selectByAll() throws Exception {
        return dao.selectByAll();
    }
    /*查询单条*/
    @Override
    public Teacher selectBynumber(Teacher teacher) throws Exception {
        return dao.selectBynumber(teacher);
    }
    /*添加*/
    @Override
    public void insert(Teacher teacher) throws Exception {
        dao.insert(teacher);
    }
    /*通过id修改*/
    @Override
    public int updateByid(Teacher teacher) throws Exception {
        int i = dao.updateByid(teacher);
        return i;
    }
    /*修改状态*/
    @Override
    public void updateBystate(Teacher teacher) throws Exception {
            dao.updateBystate(teacher);
    }

    @Override
    public Teacher selectid(Teacher teacher) throws Exception {
        return dao.selectid(teacher);
    }
}
