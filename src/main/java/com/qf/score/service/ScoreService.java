package com.qf.score.service;

import com.alibaba.fastjson.JSONObject;
import com.qf.model.Select_course;
import com.qf.score.dao.ScoreDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ScoreService implements IScoreService {

    @Autowired
    private ScoreDao dao;



    @Override
    public JSONObject SCList(JSONObject jsonObject) {
        long count = dao.count(jsonObject);
        List<Select_course> sc = dao.selectAll(jsonObject);
        jsonObject.put("total",count);
        jsonObject.put("rows",sc);
        return jsonObject;
    }



    @Override
    public void update(Select_course sc) throws Exception {
        dao.update(sc);
    }

    @Override
    public JSONObject StuList(JSONObject jsonObject) {
        long count = dao.count(jsonObject);
        List<Select_course> Stusc = dao.selectMyStu(jsonObject);
        jsonObject.put("total",count);
        jsonObject.put("rows",Stusc);
        return jsonObject;
    }

    public JSONObject myList(JSONObject jsonObject){
        long count = dao.count(jsonObject);
        List<Select_course> selectStu = dao.selectStu(jsonObject);
        jsonObject.put("total",count);
        jsonObject.put("rows",selectStu);
        return jsonObject;

    }




}
