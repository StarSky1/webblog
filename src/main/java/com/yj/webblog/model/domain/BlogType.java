package com.yj.webblog.model.domain;

public class BlogType {
    private Integer id;

    private String type;

    private Integer tybz;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type == null ? null : type.trim();
    }

    public Integer getTybz() {
        return tybz;
    }

    public void setTybz(Integer tybz) {
        this.tybz = tybz;
    }
}