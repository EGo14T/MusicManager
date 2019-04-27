package com.musicmanager.controller;

import com.musicmanager.pojo.Music;
import com.musicmanager.service.MusicService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import pojo.EasyGrid;
import pojo.ResponseJsonResult;


/**
 * Create by EGo1ST on 2019/3/31.
 * 说明：音乐管理的控制层
 */

@Controller
public class MusicController {
    @Autowired
    MusicService musicService;

    @RequestMapping("/music/list")
    @ResponseBody
    public EasyGrid listMusic(@RequestParam(value = "page" , defaultValue = "1")int pages,@RequestParam(value =
        "rows",defaultValue = "10")int rows){

            EasyGrid easyGrid = musicService.listMusic(pages, rows);

            return easyGrid;
        }

    @RequestMapping("product_save")
    @ResponseBody
    public ResponseJsonResult saveProduct(Music music){
        ResponseJsonResult responseJsonResult = musicService.saveMusic(music);
        return responseJsonResult;
    }



}

