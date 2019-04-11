package com.musicmanager.service;


import pojo.EasyUITree;
import pojo.ResponseJsonResult;

import java.util.List;

public interface MusicCategoryService {

    List<EasyUITree> findMusicCategoryListByParentId(Short parentid);

    ResponseJsonResult addCategory(Short parentid,String name);

    ResponseJsonResult updateCategory(Short parentId, String name);
}
