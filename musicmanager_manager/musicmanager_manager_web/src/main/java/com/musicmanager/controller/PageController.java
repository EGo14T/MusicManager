package com.musicmanager.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Create by EGo1ST on 2019/4/1.
 * 说明：页面管理控制器
 */

@Controller

public class PageController {
    @RequestMapping("/{page}")
    public String requestPage(@PathVariable String page){
        return  page;
    }

    @RequestMapping("/")
    public String requestIndex(){
        return "mainUI";
    }


}
