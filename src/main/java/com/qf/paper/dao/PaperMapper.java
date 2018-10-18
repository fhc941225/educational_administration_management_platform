package com.qf.paper.dao;

import com.alibaba.fastjson.JSONObject;
import com.qf.model.Paper;
import com.qf.model.Teacher;

import java.util.List;

public interface PaperMapper {

    void insertPaper(Paper paper);

    void updatePaper(Paper paper);

    void updateLevel(Paper paper);

    void deletePaper(String paper_id);

    Long selectCountByStudent(JSONObject jsonObject);

    List<Paper> selectAllByStudent(JSONObject jsonObject);

    Long selectCountByTeacher(JSONObject jsonObject);

    List<Paper> selectAllByTeacher(JSONObject jsonObject);

    List<Teacher> selectAllTeacher();

}