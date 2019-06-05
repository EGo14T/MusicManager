package com.musicmanager.rest.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import pojo.MusicList;

/**
 * Create by EGo1ST on 2019/6/4.
 * 说明：
 */
@Controller
@RequestMapping("/rest")
public class MusicListController {

    @RequestMapping("/music/list")
    @ResponseBody
    public MusicList getMusicList(){
return null;
    }




}
