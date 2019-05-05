package pojo;

import java.util.List;

/**
 * Create by EGo1ST on 2019/5/5.
 * 说明：
 */
public class MusicList {


    private List<AudioBean> audio;

    public List<AudioBean> getAudio() {
        return audio;
    }

    public void setAudio(List<AudioBean> audio) {
        this.audio = audio;
    }

    public static class AudioBean {
        /**
         * name : name1
         * artist : artist1
         * url : url1.mp3
         * cover : cover1.jpg
         * lrc : lrc1.lrc
         * theme : #ebd0c2
         */

        private String name;
        private String artist;
        private String url;
        private String lrc;

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

        public String getLrc() {
            return lrc;
        }

        public void setLrc(String lrc) {
            this.lrc = lrc;
        }
    }
}
