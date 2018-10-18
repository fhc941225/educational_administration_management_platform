package com.qf.paper.service;

import com.alibaba.fastjson.JSONObject;
import com.qf.model.Paper;
import com.qf.model.Teacher;
import org.springframework.http.ResponseEntity;
import org.springframework.web.multipart.MultipartFile;

import java.util.List;

public interface PaperService {

    void insertPaper(Paper paper, MultipartFile paper_url);

    void updatePaper(Paper paper, MultipartFile paper_file);

    void updateLevel(Paper paper);

    void deletePaper(String paper_id, String paper_file);

    JSONObject listByStudent(JSONObject jsonObject);

    JSONObject listByTeacher(JSONObject jsonObject);

    List<Teacher> listAllTeacher();

    ResponseEntity<byte[]> downloadPaper(String paper_file);
}
