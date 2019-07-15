package com.musicmanager.pojo;

public class Music {
    private Integer id;

    private String name;

    private String singer;

    private String album;

    private String length;

    private Short love;

    private Integer musicListId;

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

    public String getLength() {
        return length;
    }

    public void setLength(String length) {
        this.length = length == null ? null : length.trim();
    }

    public Short getLove() {
        return love;
    }

    public void setLove(Short love) {
        this.love = love;
    }

    public Integer getMusicListId() {
        return musicListId;
    }

    public void setMusicListId(Integer musicListId) {
        this.musicListId = musicListId;
    }
}