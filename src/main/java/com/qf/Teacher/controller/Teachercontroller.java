package com.qf.Teacher.controller;

import com.qf.Teacher.service.Teacherservice;
import com.qf.model.Teacher;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("/tea")
public class Teachercontroller {
    @Autowired
    private Teacherservice ser;

    @RequestMapping(method = RequestMethod.GET)
    public String stulogin(){
        return "teacherlogin";
    }
    @ResponseBody
    @RequestMapping(method = RequestMethod.POST)
    public String tologin(Teacher teacher, HttpSession session)  {
        System.out.println(teacher);
        Teacher tea = null;
        try {
            tea = ser.selectBynumber(teacher);
        } catch (Exception e) {
            e.printStackTrace();
        }
        if(tea!=null){
            if (tea.getTea_pwd().equals(teacher.getTea_pwd())){
            session.setAttribute("teacher",tea);
            return "ok";}

        }
            return "on";

    }
    @RequestMapping("/teacherpersonalInformation")
    public String teacherpersonalInformation(){

        return "teacherpersonalInformation";
    }
    @RequestMapping(value = "/edit",method = RequestMethod.PUT)
    @ResponseBody
    public int updatestu(Teacher teacher ,HttpSession session){
        System.out.println("被访问了");
        int i =0;
        Teacher tea= null;
        try {
            i= ser.updateByid(teacher);
            tea=ser.selectid(teacher);
        } catch (Exception e) {
            e.printStackTrace();
        }
        session.setAttribute("teacher",tea);


        return i;

    }
}
