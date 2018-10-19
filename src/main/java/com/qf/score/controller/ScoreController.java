package com.qf.score.controller;

import com.alibaba.fastjson.JSONObject;
import com.qf.model.Select_course;
import com.qf.model.Student;
import com.qf.model.Teacher;
import com.qf.score.service.IScoreService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;


import javax.servlet.http.HttpSession;

@Controller
public class ScoreController {

    @Autowired
    IScoreService service;

    @RequestMapping(value = "/index",method = RequestMethod.GET)
    public String index(){
        return "index";
    }


    @RequestMapping(value = "/score_list_for_teacher2/{course_id}",method = RequestMethod.GET)
    public String toTeacher2(@PathVariable int course_id, Model model){
        model.addAttribute("course_id",course_id);
        System.out.println(course_id);
        return "score_list_for_teacher2";
    }

    @ResponseBody
    @RequestMapping(value = "/grades",method = RequestMethod.POST,produces = "application/json;charset=UTF-8")
    public JSONObject allSC(@RequestBody JSONObject jsonObject,HttpSession session){
        Teacher teacher = (Teacher) session.getAttribute("teacher");
        jsonObject.put("tea_number",teacher.getTea_number());
        //jsonObject.put("tea_number",2018020101);
        //System.out.println(service.SCList(jsonObject));
        return  service.SCList(jsonObject);

    }



    //修改学生成绩
    @RequestMapping(value = "/updateGrade",method = RequestMethod.POST)
    public String updateUser(Select_course sc,Model model){
        try {
            service.update(sc);
        } catch (Exception e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        model.addAttribute("course_id",sc.getCourse_id());
        return "score_list_for_teacher2";
    }

    @ResponseBody
    @RequestMapping(value = "/Stugrades")
    public JSONObject StuSC(@RequestBody JSONObject jsonObject ,HttpSession session){
       // jsonObject.put("course_id",course_id);
        Teacher teacher = (Teacher) session.getAttribute("teacher");
        //jsonObject.put("stu_number",student.getStu_number());
        //jsonObject.put("course_id" ,course_id);
        //System.out.println(jsonObject);
        return  service.StuList(jsonObject);

    }

    @ResponseBody
    @RequestMapping(value = "/selectStu",method = RequestMethod.POST,produces = "application/json;charset=UTF-8")
    public JSONObject myList (@RequestBody JSONObject jsonObject,HttpSession session){
        Student student = (Student) session.getAttribute("student");
        jsonObject.put("stu_number",student.getStu_number());
        //jsonObject.put("stu_number",2018010101);
        //System.out.println(service.myList(jsonObject));
        return  service.myList(jsonObject);

    }


}
