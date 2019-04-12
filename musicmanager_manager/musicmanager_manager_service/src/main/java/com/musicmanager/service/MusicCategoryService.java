package com.musicmanager.service;


import pojo.EasyUITree;
import pojo.ResponseJsonResult;

import java.util.List;

public interface MusicCategoryService {

    List<EasyUITree> findMusicCategoryListByParentId(Short parentid);

    ResponseJsonResult addCategory(Short parentId,String name);

    ResponseJsonResult updateCategory(Short id,Short parentId,String name);
}
