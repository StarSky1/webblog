package com.yj.webblog.model.domain;

public class Role {
    private Integer id;

    private String name;

    private Integer tybz;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    public Integer getTybz() {
        return tybz;
    }

    public void setTybz(Integer tybz) {
        this.tybz = tybz;
    }
}