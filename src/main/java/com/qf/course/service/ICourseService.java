package com.qf.course.service;

import com.alibaba.fastjson.JSONObject;
import com.qf.model.Course;


public interface ICourseService {

    int  saveCourse(Course course);

    int updateCourse(Course course);

    int deleteCourse(int course_id);

    JSONObject CourseList(JSONObject jsonObject);


    Course getCourseId(int id);

}
