package com.musicmanager.rest.controller;

import com.musicmanager.rest.service.MusicListService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import pojo.ResponseJsonResult;

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
    public ResponseJsonResult getMusicList(){
       ResponseJsonResult responseJsonResult = musicListService.getMusicList();


        return responseJsonResult;
    }




}
