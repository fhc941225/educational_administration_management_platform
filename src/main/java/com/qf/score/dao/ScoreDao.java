package com.qf.score.dao;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.qf.model.Select_course;

import java.util.List;

public interface ScoreDao {

     void update(Select_course sc) throws Exception;


     long count(JSONObject jsonObject);

     List<Select_course> selectAll(JSONObject jsonObject);

    //public List<Select_course> selectMyself(JSONObject jsonObject);

     List<Select_course> selectStu(JSONObject jsonObject);

     List<Select_course> selectMyStu(JSONObject jsonObject);


}
