package com.qf.model;

public class Select_course {
    private String stu_id;
    private String course_id;
    private Integer grade;

    public String getStu_id() {
        return stu_id;
    }

    public void setStu_id(String stu_id) {
        this.stu_id = stu_id;
    }

    public String getCourse_id() {
        return course_id;
    }

    public void setCourse_id(String course_id) {
        this.course_id = course_id;
    }

    public Integer getGrade() {
        return grade;
    }

    public void setGrade(Integer grade) {
        this.grade = grade;
    }

    @Override
    public String toString() {
        return "Select_course{" +
                "stu_id='" + stu_id + '\'' +
                ", course_id='" + course_id + '\'' +
                ", grade=" + grade +
                '}';
    }
}