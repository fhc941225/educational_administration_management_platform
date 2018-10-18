package com.qf.Teacher.dao;

import com.qf.model.Teacher;

import java.util.List;

public interface Teacherdao {
    /*查询所有*/
    public List<Teacher> selectByAll()throws Exception;
    /*通过教师编号查询*/
    public Teacher selectBynumber(Teacher teacher)throws Exception;
    /*添加*/
    public void insert(Teacher teacher)throws Exception;
    /*通过id修改*/
    public int updateByid(Teacher teacher)throws Exception;
    /*修改状态*/
    public void updateBystate(Teacher teacher)throws Exception;
    public  Teacher selectid(Teacher teacher)throws Exception;
}
