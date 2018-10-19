package com.qf.score.service;

import com.alibaba.fastjson.JSONObject;
import com.qf.model.Select_course;

public interface IScoreService {

    JSONObject SCList(JSONObject jsonObject);

    void update(Select_course sc) throws Exception;

    JSONObject StuList(JSONObject jsonObject);

    JSONObject myList(JSONObject jsonObject);








 }
