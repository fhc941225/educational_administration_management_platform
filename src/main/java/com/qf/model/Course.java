package com.qf.model;

public class Course {
    private String course_id;
    private String course_name;
    private String teacher_id;
    private String course_time;
    private String course_room;
    private String course_week;
    private String course_type;
    private Integer score;

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

    public String getCourse_room() {
        return course_room;
    }

    public void setCourse_room(String course_room) {
        this.course_room = course_room;
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

    public Integer getScore() {
        return score;
    }

    public void setScore(Integer score) {
        this.score = score;
    }

    @Override
    public String toString() {
        return "Course{" +
                "course_id='" + course_id + '\'' +
                ", course_name='" + course_name + '\'' +
                ", teacher_id='" + teacher_id + '\'' +
                ", course_time='" + course_time + '\'' +
                ", course_room='" + course_room + '\'' +
                ", course_week='" + course_week + '\'' +
                ", course_type='" + course_type + '\'' +
                ", score=" + score +
                '}';
    }
}