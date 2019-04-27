package com.musicmanager.service;


import com.musicmanager.pojo.Music;
import pojo.EasyGrid;
import pojo.ResponseJsonResult;

/**
 * Created by EGo1ST on 2019/4/27   通过GridId返回数据库的表
 */
public interface MusicService {
    ResponseJsonResult saveMusic(Music music);
    EasyGrid listMusic(int pages,int rows);
}
