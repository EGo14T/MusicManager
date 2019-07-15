package com.musicmanager.service.impl;

import com.musicmanager.service.MusicCategoryService;
import pojo.EasyUITree;
import pojo.ResponseJsonResult;

import java.util.List;

/**
 * Create by EGo1ST on 2019/7/5.
 * 说明：
 */
public class Impl implements MusicCategoryService {
    @Override
    public List<EasyUITree> findMusicCategoryListByParentId(Short parentid) {
        return null;
    }

    @Override
    public ResponseJsonResult addCategory(Short parentId, String name) {
        return null;
    }

    @Override
    public ResponseJsonResult updateCategory(Short id, Short parentId, String name) {
        return null;
    }
}
