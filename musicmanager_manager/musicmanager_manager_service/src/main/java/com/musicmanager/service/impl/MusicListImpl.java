package com.musicmanager.service.impl;

import com.github.pagehelper.PageHelper;
import com.musicmanager.mapper.MusicMapper;
import com.musicmanager.pojo.Music;
import com.musicmanager.pojo.MusicExample;
import com.musicmanager.service.MusicListService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import pojo.MusicList;

import java.util.ArrayList;
import java.util.List;

/**
 * Create by EGo1ST on 2019/6/4.
 * 说明：
 */
@Service
public class MusicListImpl implements MusicListService {

    @Autowired
    MusicMapper musicMapper;

    @Override
    public List<MusicList> getMusicList() {

        PageHelper.startPage(1,20);
        MusicExample musicExample = new MusicExample();

        List<Music> musics = musicMapper.selectByExample(musicExample);

        List<MusicList> musicLists = new ArrayList<>();

        for (int i = 0; i < musics.size(); i++) {
            MusicList musicList = new MusicList();
            Music music = musics.get(i);
            musicList.setId(music.getId());
            musicList.setUrl(music.getId()+"");
            musicList.setName(music.getName());
            musicList.setArtist(music.getSinger());
            musicList.setLrc(music.getId());
            musicList.setLove(music.getLove());
            musicLists.add(musicList);

        }

        return musicLists;
    }
}
