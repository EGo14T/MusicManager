package com.musicmanager.controller;

import com.musicmanager.service.MusicService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import pojo.ResponseJsonResult;

/**
 * Create by EGo1ST on 2019/6/19.
 * 说明：
 */
@Controller
public class LoveMusicController {
    @Autowired
    MusicService musicService;

    @RequestMapping("/lovemusic")
    @ResponseBody
    public ResponseJsonResult addLove(int id, Short love){
        ResponseJsonResult responseJsonResult = musicService.addLove(id,love);
        return responseJsonResult;

    }



}
