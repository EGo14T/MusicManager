package pojo;



/**
 * Create by EGo1ST on 2019/5/5.
 * 说明：
 */
public class MusicList {
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

    public String getArtist() {
        return artist;
    }

    public void setArtist(String artist) {
        this.artist = artist;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public int getLrc() {
        return lrc;
    }

    public void setLrc(int lrc) {
        this.lrc = lrc;
    }

    public int getLove() {
        return love;
    }

    public void setLove(int love) {
        this.love = love;
    }

        private int id;
        private String name;
        private String artist;
        private String url;
        private int lrc;
        private int love;

}
