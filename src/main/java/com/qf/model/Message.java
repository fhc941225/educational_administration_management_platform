package com.qf.model;

public class Message {
    private String mes_id;
    private String mes_title;
    private String mes_appellation;
    private String mes_mainBody;
    private String mes_signature;
    private String mes_date;

    public String getMes_id() {
        return mes_id;
    }

    public void setMes_id(String mes_id) {
        this.mes_id = mes_id;
    }

    public String getMes_title() {
        return mes_title;
    }

    public void setMes_title(String mes_title) {
        this.mes_title = mes_title;
    }

    public String getMes_appellation() {
        return mes_appellation;
    }

    public void setMes_appellation(String mes_appellation) {
        this.mes_appellation = mes_appellation;
    }

    public String getMes_mainBody() {
        return mes_mainBody;
    }

    public void setMes_mainBody(String mes_mainBody) {
        this.mes_mainBody = mes_mainBody;
    }

    public String getMes_signature() {
        return mes_signature;
    }

    public void setMes_signature(String mes_signature) {
        this.mes_signature = mes_signature;
    }

    public String getMes_date() {
        return mes_date;
    }

    public void setMes_date(String mes_date) {
        this.mes_date = mes_date;
    }

    @Override
    public String toString() {
        return "Message{" +
                "mes_id='" + mes_id + '\'' +
                ", mes_title='" + mes_title + '\'' +
                ", mes_appellation='" + mes_appellation + '\'' +
                ", mes_mainBody='" + mes_mainBody + '\'' +
                ", mes_signature='" + mes_signature + '\'' +
                ", mes_date='" + mes_date + '\'' +
                '}';
    }
}