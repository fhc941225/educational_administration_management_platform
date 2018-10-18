package com.qf.leave.service;

import com.qf.model.Tb_Leave;
import com.qf.model.Teacher;

import java.util.List;

public interface ILeaveService {
    //按审批人和未审批查找请假表
    List<Tb_Leave> findAllByApprove(String lea_approveID);
    //按申请人查找请假表
    List<Tb_Leave> findAllByApply(String stu_id);
    Tb_Leave findById(String lea_id);
    void saveLeave(Tb_Leave leave);
    //修改审批状态0未审1通过2拒绝
    void modifyLeave(Tb_Leave leave);
    List<Teacher> findAllTea();
}