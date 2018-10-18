package com.qf.leave.controller;

import com.qf.leave.service.ILeaveService;
import com.qf.model.Student;
import com.qf.model.Tb_Leave;
import com.qf.model.Teacher;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpSession;
import java.util.List;
import java.util.UUID;

@Controller
@RequestMapping("/leave")
public class LeaveController {
    @Autowired
    private ILeaveService service;
    @RequestMapping("/leave_list_for_student")
    public String leave_list_for_student(Model model,HttpSession session){
        /*Student student2=new Student();
        student2.setStu_id("52f5daee-c4da-4753-b2fc-efe5f18b98b1");
        session.setAttribute("student",student2);*/
        String stu_id=null;
        try{
            Student student=(Student)session.getAttribute("student");
            stu_id=student.getStu_id();
        }catch (Exception e){
            e.printStackTrace();
            return "studentlogin";
        }
        List<Tb_Leave> leaves=service.findAllByApply(stu_id);
        model.addAttribute("teachers", service.findAllTea());
        model.addAttribute("leaves",leaves);
        return "leave_list_for_student";
    }
    //申请休假
    @RequestMapping("/applyLeave")
    public String applyLeave(Tb_Leave leave,HttpSession session){
        Student student=(Student)session.getAttribute("student");
        leave.setLea_applyID(student.getStu_id());
        String lea_id=UUID.randomUUID().toString();
        leave.setLea_id(lea_id);
        service.saveLeave(leave);
        return "redirect:/leave/leave_list_for_student";
    }
    //以下是老师的控制器
    //展示休假列表
    @RequestMapping("/leave_list_for_teacher")
    public String leave_list_for_student(HttpSession session,Model model){
        /*Teacher teacher2=new Teacher();
        teacher2.setTea_id("52f5daee-c4da-4753-b2fc-efe5fsjwmcb1");
        session.setAttribute("teacher", teacher2);*/
        String tea_id=null;
        try{
            Teacher teacher=(Teacher)session.getAttribute("teacher");
            tea_id=teacher.getTea_id();
        }catch (Exception e){
            e.printStackTrace();
        }
        List<Tb_Leave> leaves=service.findAllByApprove(tea_id);
        model.addAttribute("leaves", leaves);
        return "leave_list_for_teacher";
    }
    //查看请假条
    @RequestMapping(value = "/watchLeave/{lea_id}",method = RequestMethod.GET)
    public String watchLeave(@PathVariable("lea_id") String lea_id,Model model){
        Tb_Leave leave=service.findById(lea_id);
        model.addAttribute("leave",leave);
        return "oneLeave";
    }
    //请假通过
    @RequestMapping(value = "/passLeave/{lea_id}",method = RequestMethod.GET)
    public String pass(@PathVariable("lea_id") String lea_id){
        Tb_Leave leave=new Tb_Leave();
        leave.setLea_id(lea_id);
        leave.setLea_state(1);
        service.modifyLeave(leave);
        return "redirect:/leave/leave_list_for_teacher";
    }
    @RequestMapping(value = "/denyLeave/{lea_id}",method = RequestMethod.GET)
    public String deny(@PathVariable("lea_id") String lea_id){
        Tb_Leave leave=new Tb_Leave();
        leave.setLea_id(lea_id);
        leave.setLea_state(2);
        service.modifyLeave(leave);
        return "redirect:/leave/leave_list_for_teacher";
    }
}