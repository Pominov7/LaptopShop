package org.top.laptopshop.datasource.models;

import java.io.Serializable;

public class Image implements Serializable {
    private int id;
    private String uri;
    private int laptopId;

    public Image() {
        this.id = -1;
        this.uri = "#";
        this.laptopId = -1;
    }

    public Image(int id, String uri, int laptopId) {
        this.id = id;
        this.uri = uri;
        this.laptopId = laptopId;
    }

    public String getUri() {
        return uri;
    }

    public void setUri(String uri) {
        this.uri = uri;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getLaptopId() {
        return laptopId;
    }

    public void setLaptopId(int laptopId) {
        this.laptopId = laptopId;
    }
}
