package com.ct.pojo;

public class Press {
    private int id;
    private String name;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    @Override
    public String toString() {
        return "Press{" +
                "id=" + id +
                ", name='" + name + '\'' +
                '}';
    }
}
