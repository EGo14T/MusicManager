package com.musicmanager.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Create by EGo1ST on 2019/3/31.
 * 说明：音乐管理的控制层
 */

@Controller
public class MusicController {

    @RequestMapping("music_list")
    public String listMusic(){
        return "music_list";
    }
}
