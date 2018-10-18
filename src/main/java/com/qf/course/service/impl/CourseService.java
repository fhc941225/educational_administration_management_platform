package com.qf.course.service.impl;


import com.alibaba.fastjson.JSONObject;
import com.qf.course.dao.CourseDao;
import com.qf.course.service.ICourseService;
import com.qf.model.Course;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional(isolation= Isolation.READ_COMMITTED,propagation= Propagation.REQUIRED )
public class CourseService implements ICourseService {

    private final Logger logger = LoggerFactory.getLogger(this.getClass());
    @Autowired
    private CourseDao courseDao;


    @Override
    public Course getCourseId(int course_id) {
        Course course=null;
        try {
            course=courseDao.selectByCourseId(course_id);
        }catch (Exception e){
            logger.error(e.getMessage(), e);
            e.printStackTrace();
        }
        return course;
    }


    @Override
    public JSONObject CourseList(JSONObject jsonObject) {
        long count = courseDao.selectCount(jsonObject);
        List<Course> courses = courseDao.selectByLimitAndSearch(jsonObject);
        //System.out.println(courses);
        jsonObject.put("total",count);
        jsonObject.put("rows",courses);
        return jsonObject;
    }

    /**
     * 新增课程
     */
    @Override
    public int saveCourse(Course course) {
        int i=0;
        try {
            i=courseDao.saveCourse(course);
        }catch (Exception e){
            logger.error(e.getMessage(), e);
            e.printStackTrace();
        }
        return  i;
    }


    /**
     * 更新课程
     */
    @Override
    public int updateCourse(Course course) {
        int i=0;
        try {
            i=courseDao.updateCourse(course);
        }catch (Exception e){
            logger.error(e.getMessage(), e);
            e.printStackTrace();
        }
        return i;
    }

    /**
     * 根据Id删除课程
     */
    @Override
    public int deleteCourse(int course_id) {
        int i=0;
        try{
            i=courseDao.deleteCourse(course_id);
        }catch (Exception e){
            logger.error(e.getMessage(), e);
            e.printStackTrace();
        }
        return i;
    }

}
