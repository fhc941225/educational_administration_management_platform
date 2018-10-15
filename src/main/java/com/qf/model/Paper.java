package com.qf.model;

public class Paper {
    private String paper_id;
    private String paper_student;
    private String paper_teacher;
    private String paper_title;
    private String paper_introduction;
    private String paper_url;
    private String paper_updataTime;
    private Integer paper_level;

    public String getPaper_id() {
        return paper_id;
    }

    public void setPaper_id(String paper_id) {
        this.paper_id = paper_id;
    }

    public String getPaper_student() {
        return paper_student;
    }

    public void setPaper_student(String paper_student) {
        this.paper_student = paper_student;
    }

    public String getPaper_teacher() {
        return paper_teacher;
    }

    public void setPaper_teacher(String paper_teacher) {
        this.paper_teacher = paper_teacher;
    }

    public String getPaper_title() {
        return paper_title;
    }

    public void setPaper_title(String paper_title) {
        this.paper_title = paper_title;
    }

    public String getPaper_introduction() {
        return paper_introduction;
    }

    public void setPaper_introduction(String paper_introduction) {
        this.paper_introduction = paper_introduction;
    }

    public String getPaper_url() {
        return paper_url;
    }

    public void setPaper_url(String paper_url) {
        this.paper_url = paper_url;
    }

    public String getPaper_updataTime() {
        return paper_updataTime;
    }

    public void setPaper_updataTime(String paper_updataTime) {
        this.paper_updataTime = paper_updataTime;
    }

    public Integer getPaper_level() {
        return paper_level;
    }

    public void setPaper_level(Integer paper_level) {
        this.paper_level = paper_level;
    }

    @Override
    public String toString() {
        return "Paper{" +
                "paper_id='" + paper_id + '\'' +
                ", paper_student='" + paper_student + '\'' +
                ", paper_teacher='" + paper_teacher + '\'' +
                ", paper_title='" + paper_title + '\'' +
                ", paper_introduction='" + paper_introduction + '\'' +
                ", paper_url='" + paper_url + '\'' +
                ", paper_updataTime='" + paper_updataTime + '\'' +
                ", paper_level=" + paper_level +
                '}';
    }
}