package com.musicmanager.controller;

import com.musicmanager.service.MusicListService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import pojo.MusicList;

import java.util.List;

/**
 * Create by EGo1ST on 2019/6/4.
 * 说明：
 */
@Controller("MusicListController")
@RequestMapping("/rest")
public class MusicListController {
    @Autowired
    private MusicListService musicListService;

    @RequestMapping("/music/list")
    @ResponseBody
    public List<MusicList> getMusicList(){
       List<MusicList> musicLists = musicListService.getMusicList();

        return musicLists;
    }




}
