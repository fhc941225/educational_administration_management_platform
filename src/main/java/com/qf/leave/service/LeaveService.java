package com.qf.leave.service;

import com.qf.leave.dao.LeaveMapper;
import com.qf.model.Tb_Leave;
import com.qf.model.Teacher;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class LeaveService implements ILeaveService{
    @Autowired
    private LeaveMapper mapper;
    @Override
    public List<Tb_Leave> findAllByApprove(String lea_approveID) {
        return mapper.selectAllByApprove(lea_approveID);
    }

    @Override
    public List<Tb_Leave> findAllByApply(String stu_id) {
        return  mapper.selectAllByApply(stu_id);
    }

    @Override
    public Tb_Leave findById(String lea_id) {
        return mapper.selectById(lea_id);
    }

    @Override
    @Transactional
    public void saveLeave(Tb_Leave leave) {
        mapper.insertLeave(leave);
    }

    @Override
    @Transactional
    public void modifyLeave(Tb_Leave leave) {
        mapper.updateLeave(leave);
    }

    @Override
    public List<Teacher> findAllTea() {
        return mapper.selectAllTea();
    }
}