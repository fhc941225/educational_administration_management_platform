package com.qf.student.controller;

import com.alibaba.fastjson.JSONObject;
import com.qf.model.Student;
import com.qf.student.service.IStudentservice;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.util.List;
import java.util.UUID;

@Controller
@RequestMapping("/stu")
public class Studentcontroller {

    @Autowired
    private IStudentservice ser;
    /*访问登入页面*/
    @RequestMapping(method = RequestMethod.GET)
    public String stulogin(){
        return "studentlogin";
    }
    /*登入验证*/
    @ResponseBody
    @RequestMapping(method = RequestMethod.POST)
    public String tologin(Student student, HttpSession session)  {
        System.out.println(student);
        Student stu = null;
        try {
            stu = ser.listBysnumber(student);
        } catch (Exception e) {
            e.printStackTrace();
        }
        if(stu!=null){
           if(stu.getStu_pwd().equals(student.getStu_pwd())){
                session.setAttribute("student",stu);
                return "ok";
            }

        }

            return "no";

    }
    /*后台页面*/
    @RequestMapping("/personalInformation")
    public String personalInformation(){

        return "personalInformation";
    }
    /*修改*/
    @RequestMapping(value = "/edit",method = RequestMethod.PUT)
    @ResponseBody
    public int updatestu(Student student ,HttpSession session){
        System.out.println("被访问了");
        int i =0;
        Student stu= null;
        try {
          i= ser.updateBysid(student);
            stu=ser.selectid(student);
        } catch (Exception e) {
            e.printStackTrace();
        }
        session.setAttribute("student",stu);


        return i;
    }
    @RequestMapping("/studentlist")
    public String studentlist(){

        return "studentlist";
    }
    @ResponseBody
    @RequestMapping(value = "/stulist",method = RequestMethod.POST,produces = "application/json;charset=UTF-8")
    public JSONObject slectall(@RequestBody JSONObject jsonObject){
        List<Student> list = null;
        int bk =0;
        try {
            list = ser.listByAll(jsonObject);
            bk = ser.fincunt();
        } catch (Exception e) {
            e.printStackTrace();
        }

        JSONObject js = new JSONObject();
        js.put("total",bk);
        js.put("rows",list);

        return js;
    }
    /*删除*/
    @RequestMapping(value = "/delete")
    public void delete(String id) {
        System.out.println(id);
        Student student = new Student();
        student.setStu_id(id);
        try {
            ser.updateBystate(student);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }@RequestMapping(value = "/deletetwo")
    public void deletetwo(String id) {
        System.out.println(id);
        Student student = new Student();
        student.setStu_id(id);
        try {
            ser.updateBystatetwo(student);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
   /*添加*/
    @RequestMapping(value = "/insertstudent",method = RequestMethod.POST)
    @ResponseBody
    public void insertstuent(Student student){
        String id = UUID.randomUUID().toString();
        student.setStu_id(id);
        try {
            ser.insertByStudent(student);
        } catch (Exception e) {
            e.printStackTrace();
        }

    }


}
