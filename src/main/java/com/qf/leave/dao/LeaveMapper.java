package com.qf.leave.dao;

import com.qf.model.Tb_Leave;
import com.qf.model.Teacher;

import java.util.List;

public interface LeaveMapper {
    //按审批人和未审批查找请假表
    List<Tb_Leave> selectAllByApprove(String lea_approveID);
    //按申请人查找请假表
    List<Tb_Leave> selectAllByApply(String stu_id);
    Tb_Leave selectById(String lea_id);
    void insertLeave(Tb_Leave leave);
    void updateLeave(Tb_Leave leave);
    //查找所有老师
    List<Teacher> selectAllTea();
}