package com.t2010a.t2010a_again.entity;

public class Teacher {
    private String id;
    private String name;
    private String date;
    private int qty;

    public Teacher(String id, String name, String date, int qty) {
        this.id = id;
        this.name = name;
        this.date = date;
        this.qty = qty;
    }

    @Override
    public String toString() {
        return "Teacher{" +
                "id='" + id + '\'' +
                ", name='" + name + '\'' +
                ", date='" + date + '\'' +
                ", qty='" + qty + '\'' +
                '}';
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public int getQty() {
        return qty;
    }

    public void setQty(int qty) {
        this.qty = qty;
    }
}