package com.qf.paper.service.impl;

import com.alibaba.fastjson.JSONObject;
import com.qf.model.Paper;
import com.qf.model.Teacher;
import com.qf.paper.dao.PaperMapper;
import com.qf.paper.service.PaperService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.UUID;

@Service
@Transactional
public class PaperServiceImpl implements PaperService {

    @Autowired
    private PaperMapper mapper;

    //增加论文
    @Override
    public void insertPaper(Paper paper, MultipartFile paper_file) {
        paper.setPaper_id(UUID.randomUUID().toString());    //生成主键
        Paper newPaper = upload(paper, paper_file); //上传文件
        mapper.insertPaper(newPaper);
    }

    //改论文
    @Override
    public void updatePaper(Paper paper, MultipartFile paper_file) {
        //删除原文件
        File file = new File(paper.getPaper_url());
        if(file.exists()&&file.isFile()){
            file.delete();
        }
        Paper newPaper = upload(paper, paper_file); //上传新文件
        mapper.updatePaper(newPaper);
    }

    //改level（打分）
    @Override
    public void updateLevel(Paper paper) {
        mapper.updateLevel(paper);
    }

    //删
    @Override
    public void deletePaper(String paper_id, String paper_file) {
        //删除文件
        File file = new File(DISK_PATH + paper_file);
        if(file.exists()&&file.isFile()){
            file.delete();
        }
        mapper.deletePaper(paper_id);
    }

    //加载登陆的学生所有提交的论文
    @Override
    @Transactional(readOnly = true)
    public JSONObject listByStudent(JSONObject jsonObject) {
        Long count = mapper.selectCountByStudent(jsonObject);
        List<Paper> papers = mapper.selectAllByStudent(jsonObject);
        jsonObject.put("total",count);
        jsonObject.put("rows",papers);
        return jsonObject;
    }

    //加载登陆的老师要查看的论文
    @Override
    @Transactional(readOnly = true)
    public JSONObject listByTeacher(JSONObject jsonObject) {
        Long count = mapper.selectCountByTeacher(jsonObject);
        List<Paper> papers = mapper.selectAllByTeacher(jsonObject);
        jsonObject.put("total",count);
        jsonObject.put("rows",papers);
        return jsonObject;
    }

    //查所有老师
    @Override
    @Transactional(readOnly = true)
    public List<Teacher> listAllTeacher() {
        return mapper.selectAllTeacher();
    }

    //下载文件方法
    @Transactional(readOnly = true)
    public ResponseEntity<byte[]> downloadPaper(String paper_file){
        //1.设置响应头信息:filename属性用来设置下载后的文件名称
        HttpHeaders headers = new HttpHeaders();
        headers.add("Content-Disposition", "attachement;filename=" + paper_file);
        HttpStatus statusCode = HttpStatus.OK;  //2.设置响应状态码200
        //3.创建输入流，读取相应文件
        FileInputStream fis = null;
        byte[] bytes = new byte[0];
        try {
            fis = new FileInputStream(DISK_PATH + paper_file);
            bytes = new byte[fis.available()];
            fis.read(bytes);
        } catch (IOException e) {
            e.printStackTrace();
        } finally {
            try {
                fis.close();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
        ResponseEntity<byte[]> entity = new ResponseEntity<>(bytes,headers,statusCode);
        return entity;
    }

    //上传文件方法
    @Transactional(readOnly = true)
    private Paper upload(Paper paper, MultipartFile paper_file){
        paper.setPaper_level(0);    //设置默认评分为未打分
        Date date = new Date();
        paper.setPaper_updataTime(new SimpleDateFormat("yyyy-MM-dd").format(date)); //添加当前时间
        String originalFilename = paper_file.getOriginalFilename(); //源文件名
        String[] split = originalFilename.split("\\."); //取源文件后缀
        String newFilename = new SimpleDateFormat("yyyyMMddHHmmssSSS").format(date) +
                "." + split[split.length-1]; //拼接新文件名防止重名
        String path = DISK_PATH + newFilename; //文件绝对路径
        paper.setPaper_url(newFilename);   //添加文件存放路径
        //写入文件
        File file = new File(path);
        try {
            paper_file.transferTo(file);
        } catch (IOException e) {
            e.printStackTrace();
        }
        return paper;
    }

}
