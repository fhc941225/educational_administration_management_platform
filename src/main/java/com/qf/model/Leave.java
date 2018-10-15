package com.qf.model;

public class Leave {
    private String lea_id;
    private String lea_applyID;
    private String lea_approveID;
    private Integer lea_days;
    private String lea_startTime;
    private String lea_endTime;
    private String lea_reason;
    private Integer lea_state;

    public String getLea_id() {
        return lea_id;
    }

    public void setLea_id(String lea_id) {
        this.lea_id = lea_id;
    }

    public String getLea_applyID() {
        return lea_applyID;
    }

    public void setLea_applyID(String lea_applyID) {
        this.lea_applyID = lea_applyID;
    }

    public String getLea_approveID() {
        return lea_approveID;
    }

    public void setLea_approveID(String lea_approveID) {
        this.lea_approveID = lea_approveID;
    }

    public Integer getLea_days() {
        return lea_days;
    }

    public void setLea_days(Integer lea_days) {
        this.lea_days = lea_days;
    }

    public String getLea_startTime() {
        return lea_startTime;
    }

    public void setLea_startTime(String lea_startTime) {
        this.lea_startTime = lea_startTime;
    }

    public String getLea_endTime() {
        return lea_endTime;
    }

    public void setLea_endTime(String lea_endTime) {
        this.lea_endTime = lea_endTime;
    }

    public String getLea_reason() {
        return lea_reason;
    }

    public void setLea_reason(String lea_reason) {
        this.lea_reason = lea_reason;
    }

    public Integer getLea_state() {
        return lea_state;
    }

    public void setLea_state(Integer lea_state) {
        this.lea_state = lea_state;
    }

    @Override
    public String toString() {
        return "Leave{" +
                "lea_id='" + lea_id + '\'' +
                ", lea_applyID='" + lea_applyID + '\'' +
                ", lea_approveID='" + lea_approveID + '\'' +
                ", lea_days=" + lea_days +
                ", lea_startTime='" + lea_startTime + '\'' +
                ", lea_endTime='" + lea_endTime + '\'' +
                ", lea_reason='" + lea_reason + '\'' +
                ", lea_state=" + lea_state +
                '}';
    }
}