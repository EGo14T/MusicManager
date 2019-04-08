package com.musicmanager.controller;


import com.musicmanager.service.MusicCategoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import pojo.EasyUITree;

import java.util.List;


/**
 * Create by EGo1ST on 2019/4/1.
 * 说明：音乐分类管理控制器
 */

@Controller
@RequestMapping("/music_category")
public class MusicCategoryController {

    @Autowired
    MusicCategoryService musicCategoryService;

    /**
     * 根据parentid返回数据列表
     */
    @RequestMapping("/list")
    @ResponseBody
    public List<EasyUITree> getMusicCategoryByParentId(@RequestParam(value = "id", defaultValue = "0")
                                                                   Short parentId) {
        List<EasyUITree> easyUITrees = musicCategoryService.findMusicCategoryListByParentId(parentId);
        return easyUITrees;


    }


}
