package com.musicmanager.service.impl;


import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.musicmanager.mapper.MusicMapper;
import com.musicmanager.pojo.Music;
import com.musicmanager.pojo.MusicExample;
import com.musicmanager.service.MusicService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import pojo.EasyGrid;
import pojo.ResponseJsonResult;

import java.util.List;

/**
 * Create by EGo1ST on 2019/4/27.
 * 说明：
 */
@Service
public class MusicServiceImpl implements MusicService {

    @Autowired
    MusicMapper musicMapper;

    @Override
    public EasyGrid listMusic(int pages, int rows) {

        MusicExample musicExample = new MusicExample();
        PageHelper.startPage(pages,rows);
        List<Music> musicList= musicMapper.selectByExample(musicExample);

        PageInfo<Music> pageInfo = new PageInfo<>(musicList);

        EasyGrid easyGrid = new EasyGrid();
        easyGrid.setTotal((int)pageInfo.getTotal());
        easyGrid.setRows(musicList);
        return easyGrid;
    }

    @Override
    public ResponseJsonResult addLove(int id, Short love) {
        Music music = new Music();
        music.setId(id);
        music.setLove(love);

        MusicExample musicExample = new MusicExample();
        MusicExample.Criteria criteria = musicExample.createCriteria();
        criteria.andIdEqualTo(id);

        musicMapper.updateByExampleSelective(music,musicExample);

        ResponseJsonResult responseJsonResult = new ResponseJsonResult();
        responseJsonResult.setStatus(200);
        return responseJsonResult;
    }

    @Override
    public ResponseJsonResult saveMusic(Music music) {
        return null;
    }

}
