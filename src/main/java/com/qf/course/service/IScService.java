package com.qf.course.service;

import com.alibaba.fastjson.JSONObject;
import com.qf.model.Select_course;


public interface IScService {

    int  saveScourse(Select_course select_course);

    int deleteScourse(Select_course select_course);

    JSONObject haveSelectScourseList(JSONObject jsonObject);

    JSONObject havenotSelectScourseList(JSONObject jsonObject);


}
