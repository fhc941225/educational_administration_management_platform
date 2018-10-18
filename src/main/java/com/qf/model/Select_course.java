package com.qf.model;

public class Select_course {
    private Integer stu_number;
    private Integer course_id;
    private Integer grade;

    public Integer getStu_number() {
        return stu_number;
    }

    public void setStu_number(Integer stu_number) {
        this.stu_number = stu_number;
    }

    public int getCourse_id() {
        return course_id;
    }

    public void setCourse_id(Integer course_id) {
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
                "stu_id='" + stu_number + '\'' +
                ", course_id='" + course_id + '\'' +
                ", grade=" + grade +
                '}';
    }
}