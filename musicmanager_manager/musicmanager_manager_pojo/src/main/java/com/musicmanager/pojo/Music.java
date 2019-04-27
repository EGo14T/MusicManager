package com.musicmanager.pojo;

import java.util.Date;

public class Music {
    private Integer id;

    private String name;

    private String singer;

    private String album;

    private Date length;

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

    public String getSinger() {
        return singer;
    }

    public void setSinger(String singer) {
        this.singer = singer == null ? null : singer.trim();
    }

    public String getAlbum() {
        return album;
    }

    public void setAlbum(String album) {
        this.album = album == null ? null : album.trim();
    }

    public Date getLength() {
        return length;
    }

    public void setLength(Date length) {
        this.length = length;
    }
}