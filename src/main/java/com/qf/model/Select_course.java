package com.qf.model;

public class Select_course {
    private Integer stu_number;
    private Integer course_id;
    private Integer grade;
    private Course course;
    private String course_name;
    private  Student student;

    public Student getStudent() {
        return student;
    }

    public void setStudent(Student student) {
        this.student = student;
    }

    public String getCourse_name() {
        return course_name;
    }

    public void setCourse_name(String course_name) {
        this.course_name = course_name;
    }

    public Course getCourse() {
        return course;
    }

    public void setCourse(Course course) {
        this.course = course;
    }

    public Integer getStu_number() {
        return stu_number;
    }

    public void setStu_number(Integer stu_number) {
        this.stu_number = stu_number;
    }

    public Integer getCourse_id() {
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
                "stu_number='" + stu_number + '\'' +
                ", course_id='" + course_id + '\'' +
                ", grade=" + grade +
                '}';
    }
}