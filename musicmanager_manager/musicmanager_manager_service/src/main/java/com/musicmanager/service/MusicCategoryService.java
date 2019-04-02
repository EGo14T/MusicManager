package com.musicmanager.service;


import pojo.EasyUITree;

import java.util.List;

public interface MusicCategoryService {
    List<EasyUITree> findMusicCategoryListByParentId(Short parentid);

}
