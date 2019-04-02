package com.musicmanager.pojo;

public class Music {
    private Integer id;

    private Short categoryId;

    private String name;

    private String image;

    private Byte status;

    private String description;

    private String musicNumber;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Short getCategoryId() {
        return categoryId;
    }

    public void setCategoryId(Short categoryId) {
        this.categoryId = categoryId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image == null ? null : image.trim();
    }

    public Byte getStatus() {
        return status;
    }

    public void setStatus(Byte status) {
        this.status = status;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description == null ? null : description.trim();
    }

    public String getMusicNumber() {
        return musicNumber;
    }

    public void setMusicNumber(String musicNumber) {
        this.musicNumber = musicNumber == null ? null : musicNumber.trim();
    }
}