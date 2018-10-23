package com.qf.model;

public class Course {
    private String course_id;
    private String course_name;
    private String teacher_id;
    private String course_time;
    private String class_room;
    private String course_week;
    private String course_type;
    private Integer course_score;
    private Integer grade;

    public String getClass_room() {
        return class_room;
    }

    public void setClass_room(String class_room) {
        this.class_room = class_room;
    }

    public Integer getGrade() {
        return grade;
    }

    public void setGrade(Integer grade) {
        this.grade = grade;
    }

    public String getCourse_id() {
        return course_id;
    }

    public void setCourse_id(String course_id) {
        this.course_id = course_id;
    }

    public String getCourse_name() {
        return course_name;
    }

    public void setCourse_name(String course_name) {
        this.course_name = course_name;
    }

    public String getTeacher_id() {
        return teacher_id;
    }

    public void setTeacher_id(String teacher_id) {
        this.teacher_id = teacher_id;
    }

    public String getCourse_time() {
        return course_time;
    }

    public void setCourse_time(String course_time) {
        this.course_time = course_time;
    }


    public String getCourse_week() {
        return course_week;
    }

    public void setCourse_week(String course_week) {
        this.course_week = course_week;
    }

    public String getCourse_type() {
        return course_type;
    }

    public void setCourse_type(String course_type) {
        this.course_type = course_type;
    }

    public Integer getCourse_score() {
        return course_score;
    }

    public void setCourse_score(Integer course_score) {
        this.course_score = course_score;
    }

    @Override
    public String toString() {
        return "Course{" +
                "course_id='" + course_id + '\'' +
                ", course_name='" + course_name + '\'' +
                ", teacher_id='" + teacher_id + '\'' +
                ", course_time='" + course_time + '\'' +
                ", class_room='" + class_room + '\'' +
                ", course_week='" + course_week + '\'' +
                ", course_type='" + course_type + '\'' +
                ", course_score=" + course_score +
                ", grade=" + grade +
                '}';
    }
}