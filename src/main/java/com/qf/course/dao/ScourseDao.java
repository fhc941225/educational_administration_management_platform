package com.qf.course.dao;

import com.alibaba.fastjson.JSONObject;
import com.qf.model.Select_course;

import java.util.List;

public interface ScourseDao {


    int saveScourse(Select_course select_course);

    int deleteScourse(Select_course select_course);

    Long haveSelectScount(JSONObject jsonObject);

    Long havenotSelectScount(JSONObject jsonObject);

    List<Select_course> havenotSelectCourse(JSONObject jsonObject);


    List<Select_course> haveSelectCourse(JSONObject jsonObject);


}
