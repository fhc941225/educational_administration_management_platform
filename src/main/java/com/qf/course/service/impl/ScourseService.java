package com.qf.course.service.impl;

import com.alibaba.fastjson.JSONObject;
import com.qf.course.dao.ScourseDao;
import com.qf.course.service.IScService;
import com.qf.model.Select_course;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional(isolation = Isolation.READ_COMMITTED, propagation = Propagation.REQUIRED)
public class ScourseService implements IScService {

    private final Logger logger = LoggerFactory.getLogger(this.getClass());

    @Autowired
    private ScourseDao scourseDao;


    /**
     * 选课
     */
    @Override
    public int saveScourse(Select_course select_course) {
        int i = 0;
        try {
            i = scourseDao.saveScourse(select_course);
        } catch (Exception e) {
            logger.error(e.getMessage(), e);
            e.printStackTrace();
        }
        return i;
    }

    /**
     * 退课
     */
    @Override
    public int deleteScourse(Select_course select_course) {
        int i = 0;
        try {
            i = scourseDao.deleteScourse(select_course);
        } catch (Exception e) {
            logger.error(e.getMessage(), e);
            e.printStackTrace();
        }
        return i;
    }

    /**
     * 查询学生已选的所有课程
     */
    @Override
    public JSONObject haveSelectScourseList(JSONObject jsonObject) {
        Long count = scourseDao.haveSelectScount(jsonObject);
        List<Select_course> sc = scourseDao.haveSelectCourse(jsonObject);
        System.out.println(sc);
        jsonObject.put("total", count);
        jsonObject.put("rows", sc);
        return jsonObject;
    }

    /**
     * 待选课程
     */
    @Override
    public JSONObject havenotSelectScourseList(JSONObject jsonObject) {
        Long count = scourseDao.havenotSelectScount(jsonObject);
        List<Select_course> sc = scourseDao.havenotSelectCourse(jsonObject);
        System.out.println(sc);
        jsonObject.put("total", count);
        jsonObject.put("rows", sc);
        return jsonObject;
    }
}
