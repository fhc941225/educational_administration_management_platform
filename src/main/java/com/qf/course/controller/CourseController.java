package com.qf.course.controller;


import com.alibaba.fastjson.JSONObject;
import com.qf.course.service.ICourseService;
import com.qf.course.service.IScService;
import com.qf.model.Course;
import com.qf.model.Select_course;
import com.qf.model.Student;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpSession;

@Controller
public class CourseController {

    @Autowired
    private IScService scService;
    @Autowired
    private ICourseService courseService;

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String pageIndex() {
        return "index";
    }


    @RequestMapping(value = "/{path}", method = RequestMethod.GET)
    public String toPage(@PathVariable String path) {
        return path;
    }


    /**
     * 查询所有用户跟分页
     */
    @ResponseBody
    @RequestMapping(value = "/courses", method = RequestMethod.POST, produces = "application/json;charset=UTF-8")
    public JSONObject allCourse(@RequestBody JSONObject jsonObject) {
        //System.out.println(courseService.CourseList(jsonObject));
        jsonObject = courseService.CourseList(jsonObject);
        return jsonObject;
    }


    //添加
    @ResponseBody
    @RequestMapping(value = "/course", method = RequestMethod.POST)
    public int saveCourse(Course course) {
        int i = courseService.saveCourse(course);
        return i;
    }

    //删除
    @ResponseBody
    @RequestMapping(value = "/course/{course_id}", method = RequestMethod.DELETE)
    public int deleteCourse(@PathVariable int course_id) {
        int i = courseService.deleteCourse(course_id);
        return i;
    }


    //修改
    @ResponseBody
    @RequestMapping(value = "/course", method = RequestMethod.PUT)
    public int updateCourse(Course course) {
        //System.out.println(user);
        int i = courseService.updateCourse(course);
        return i;
    }

    //按course_id查询
    @ResponseBody
    @RequestMapping(value = "/course/{course_id}", method = RequestMethod.GET)
    public Course select(@PathVariable int course_id) {
        return courseService.getCourseId(course_id);
    }

    //选课
    @ResponseBody
    @RequestMapping(value = "/scourse/{course_id}", method = RequestMethod.POST)
    public int saveScourse(@PathVariable int course_id, HttpSession session) {
        Student stu = (Student) session.getAttribute("student");
        Select_course select_course = new Select_course();
        select_course.setStu_number(stu.getStu_number());
        //select_course.setStu_number(201801010);
        select_course.setCourse_id(course_id);
        int i = scService.saveScourse(select_course);
        return i;
    }

    //退课
    @ResponseBody
    @RequestMapping(value = "/scourse/{course_id}", method = RequestMethod.DELETE)
    public int deleteScourse(@PathVariable int course_id, HttpSession session) {
        Student stu = (Student) session.getAttribute("Student");
        Select_course select_course = new Select_course();
        select_course.setStu_number(stu.getStu_number());
        //select_course.setStu_number(201801010);
        select_course.setCourse_id(course_id);
        int i = scService.deleteScourse(select_course);
        return i;
    }


    //已选课程
    @ResponseBody
    @RequestMapping(value = "/haveScourses", method = RequestMethod.POST, produces = "application/json;charset=UTF-8")
    public JSONObject allHaveScourse(@RequestBody JSONObject jsonObject, HttpSession session) {
        //System.out.println(courseService.CourseList(jsonObject));
        Student stu = (Student) session.getAttribute("Student");
        jsonObject.put("stu_number", stu.getStu_number());
        jsonObject = scService.haveSelectScourseList(jsonObject);

        return jsonObject;
    }

    //未选课程
    @ResponseBody
    @RequestMapping(value = "/haveNotScourses", method = RequestMethod.POST, produces = "application/json;charset=UTF-8")
    public JSONObject allHaveNotScourse(@RequestBody JSONObject jsonObject, HttpSession session) {
        //System.out.println(courseService.CourseList(jsonObject));
        Student stu = (Student) session.getAttribute("Student");
        jsonObject.put("stu_number", stu.getStu_number());
        jsonObject = scService.havenotSelectScourseList(jsonObject);
        return jsonObject;
    }


}
