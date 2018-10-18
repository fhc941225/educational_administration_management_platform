package com.qf.paper;

import com.alibaba.fastjson.JSONObject;
import com.qf.model.Paper;
import com.qf.paper.service.PaperService;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.UUID;

public class PaperTest extends BaseJunit4Test {

    @Autowired
    private PaperService service;

    @Test
    public void insertPaperTest(){
        Paper paper = new Paper();
        paper.setPaper_id(UUID.randomUUID().toString());
        paper.setPaper_student(UUID.randomUUID().toString());
        paper.setPaper_teacher(UUID.randomUUID().toString());
        paper.setPaper_title("论文标题");
        paper.setPaper_introduction("论文介绍");
        paper.setPaper_url("论文上传地址");
        paper.setPaper_updataTime(new SimpleDateFormat("yyyy-MM-dd HH-mm-ss").format(new Date()));
        paper.setPaper_level(0);
        service.insertPaper(paper,null);
    }

    @Test
    public void deletePaperTest(){
        service.deletePaper("515de693-48ff-425e-8025-cb4685701ffc","");
    }

    @Test
    public void updateLevelTest(){
        Paper paper = new Paper();
        paper.setPaper_id("21ca8b20-7b3b-4848-93f3-27f125c10917");
        paper.setPaper_level(5);
        service.updateLevel(paper);
    }

    @Test
    public void listByStudentTest(){
        JSONObject jsonObject = new JSONObject();
        jsonObject.put("offset",0);
        jsonObject.put("limit",10);
        jsonObject.put("studentId","2b0a8763-3cbd-4009-92fd-1cc67b0a8703");
        jsonObject = service.listByStudent(jsonObject);
        for (Paper paper:(List<Paper>) jsonObject.get("rows")) {
            System.out.println(paper);
        }
    }

}
