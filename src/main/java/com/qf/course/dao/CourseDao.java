package com.qf.course.dao;

import com.alibaba.fastjson.JSONObject;
import com.qf.model.Course;

import java.util.List;

public interface CourseDao {

    int saveCourse(Course course);

    int deleteCourse(Integer course_id);

    int updateCourse(Course course);

    Long selectCount(JSONObject jsonObject);

    List<Course> selectByLimitAndSearch(JSONObject jsonObject);

    Course selectByCourseId(Integer course_id);

}
