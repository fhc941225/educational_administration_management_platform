package com.qf.paper.controller;

import com.alibaba.fastjson.JSONObject;
import com.qf.model.Paper;
import com.qf.model.Student;
import com.qf.model.Teacher;
import com.qf.paper.service.PaperService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("/paper")
public class PaperController {

    @Autowired
    private PaperService service;

    //直接加载页面
    @RequestMapping("/{path}")
    public String toPage(@PathVariable String path){
        return path;
    }

    //提交论文
    @RequestMapping("/insertPaper")
    public String insertPaper(Paper paper, MultipartFile paper_file, HttpSession session) {
        Student student = (Student) session.getAttribute("student");
        //paper.setPaper_student(student.getStu_id());
        paper.setPaper_student("2b0a8763-3cbd-4009-92fd-1cc67b0a8703"); //模拟获取学生id
        service.insertPaper(paper,paper_file);
        return "redirect:paper_list_for_student";
    }

    //修改论文
    @RequestMapping("/modifyPaper")
    public String modifyPaper(Paper paper, MultipartFile paper_file){
        service.updatePaper(paper, paper_file);
        return "redirect:paper_list_for_student";
    }

    //打分（改level）
    @RequestMapping("/modifyLevel")
    public String modifyLevel(Paper paper){
        service.updateLevel(paper);
        return "redirect:paper_list_for_teacher";
    }

    //删除论文
    @RequestMapping("/deletePaper/{paper_id}/{paper_file:.+}")
    public String deletePaper(@PathVariable String paper_id,@PathVariable String paper_file){
        service.deletePaper(paper_id,paper_file);
        return "redirect:/paper/paper_list_for_student";
    }

    //加载登陆的学生所有提交的论文
    @RequestMapping("/listByStudent")
    @ResponseBody
    public JSONObject listByStudent(@RequestBody JSONObject jsonObject, HttpSession session){
        Student student = (Student) session.getAttribute("student");
        //jsonObject.put("studentId",student.getStu_id());
        jsonObject.put("studentId","2b0a8763-3cbd-4009-92fd-1cc67b0a8703"); //模拟获取学生id
        return service.listByStudent(jsonObject);
    }

    //加载登陆的老师要查看的论文
    @RequestMapping("/listByTeacher")
    @ResponseBody
    public JSONObject listByTeacher(@RequestBody JSONObject jsonObject, HttpSession session){
        Teacher teacher = (Teacher) session.getAttribute("teacher");
        //jsonObject.put("teacherId",teacher.getTea_id());
        jsonObject.put("teacherId","84c28f94-d539-4e80-afdf-9bd0905b1d1a"); //模拟获取老师id
        return service.listByTeacher(jsonObject);
    }

    //ajax加载所有老师姓名
    @RequestMapping("/listAllTeacher")
    @ResponseBody
    public List<Teacher> listAllTeacher(){
        return service.listAllTeacher();
    }

    //下载论文
    @RequestMapping("/downloadPaper/{paper_file:.+}")
    public ResponseEntity<byte[]> downloadPaper(@PathVariable String paper_file){
        return service.downloadPaper(paper_file);
    }

}
