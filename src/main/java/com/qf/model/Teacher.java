package com.qf.model;

public class Teacher {
    private String tea_id;
    private Integer tea_number;
    private String tea_name;
    private String tea_birthday;
    private String tea_card;
    private String tea_address;
    private String tea_phone;
    private String tea_courses;
    private String tea_pwd;
    private Integer tea_state;

    public String getTea_id() {
        return tea_id;
    }

    public void setTea_id(String tea_id) {
        this.tea_id = tea_id;
    }

    public Integer getTea_number() {
        return tea_number;
    }

    public void setTea_number(Integer tea_number) {
        this.tea_number = tea_number;
    }

    public String getTea_name() {
        return tea_name;
    }

    public void setTea_name(String tea_name) {
        this.tea_name = tea_name;
    }

    public String getTea_birthday() {
        return tea_birthday;
    }

    public void setTea_birthday(String tea_birthday) {
        this.tea_birthday = tea_birthday;
    }

    public String getTea_card() {
        return tea_card;
    }

    public void setTea_card(String tea_card) {
        this.tea_card = tea_card;
    }

    public String getTea_address() {
        return tea_address;
    }

    public void setTea_address(String tea_address) {
        this.tea_address = tea_address;
    }

    public String getTea_phone() {
        return tea_phone;
    }

    public void setTea_phone(String tea_phone) {
        this.tea_phone = tea_phone;
    }

    public String getTea_courses() {
        return tea_courses;
    }

    public void setTea_courses(String tea_courses) {
        this.tea_courses = tea_courses;
    }

    public String getTea_pwd() {
        return tea_pwd;
    }

    public void setTea_pwd(String tea_pwd) {
        this.tea_pwd = tea_pwd;
    }

    public Integer getTea_state() {
        return tea_state;
    }

    public void setTea_state(Integer tea_state) {
        this.tea_state = tea_state;
    }

    @Override
    public String toString() {
        return "Teacher{" +
                "tea_id='" + tea_id + '\'' +
                ", tea_number=" + tea_number +
                ", tea_name='" + tea_name + '\'' +
                ", tea_birthday='" + tea_birthday + '\'' +
                ", tea_card=" + tea_card +
                ", tea_address='" + tea_address + '\'' +
                ", tea_phone=" + tea_phone +
                ", tea_courses='" + tea_courses + '\'' +
                ", tea_pwd='" + tea_pwd + '\'' +
                ", tea_state=" + tea_state +
                '}';
    }
}