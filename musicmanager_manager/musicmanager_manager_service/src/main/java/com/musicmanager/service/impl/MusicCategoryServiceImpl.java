package com.musicmanager.service.impl;

import com.musicmanager.mapper.MusicCategoryMapper;
import com.musicmanager.pojo.MusicCategory;
import com.musicmanager.pojo.MusicCategoryExample;
import com.musicmanager.service.MusicCategoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import pojo.EasyUITree;
import pojo.ResponseJsonResult;

import java.util.ArrayList;
import java.util.List;

/**
 * Create by EGo1ST on 2019/4/1.
 * 说明：音乐列表功能实现类
 */
@Service
public class MusicCategoryServiceImpl implements MusicCategoryService {

    @Autowired

    private MusicCategoryMapper musicCategoryMapper;
    @Override
    public List<EasyUITree> findMusicCategoryListByParentId(Short parentId) {

        MusicCategoryExample musicCategoryExample = new MusicCategoryExample();
        MusicCategoryExample.Criteria criteria = musicCategoryExample.createCriteria();
        criteria.andParentIdEqualTo(parentId);
        List<MusicCategory> musicCategoryList = musicCategoryMapper.selectByExample(musicCategoryExample);

        List<EasyUITree> easyUITrees = new ArrayList<>(musicCategoryList.size());

        for (MusicCategory musicCategory:musicCategoryList) {

            EasyUITree easyuiTree = new EasyUITree();
            easyuiTree.setId(musicCategory.getId());
            easyuiTree.setText(musicCategory.getName());
            easyuiTree.setState(musicCategory.getParentId()==0?"closed":"open");
            easyuiTree.setAttributes(musicCategory.getParentId()+"");

            easyUITrees.add(easyuiTree);
        }

        return easyUITrees;
    }

    @Override
    public ResponseJsonResult addCategory(Short parentId, String name) {
        MusicCategory musicCategory = new MusicCategory();
        musicCategory.setParentId(parentId);
        musicCategory.setName(name);

        musicCategoryMapper.insert(musicCategory);

        ResponseJsonResult responseJsonResult = new ResponseJsonResult();
        responseJsonResult.setMsg(musicCategory.getId()+"");

        return responseJsonResult;
    }

    @Override
    public ResponseJsonResult updateCategory(Short id,Short parentId,String name) {
        MusicCategory musicCategory = new MusicCategory();
        musicCategory.setParentId(parentId);
        musicCategory.setName(name);


        MusicCategoryExample musicCategoryExample = new MusicCategoryExample();
        MusicCategoryExample.Criteria criteria = musicCategoryExample.createCriteria();
        criteria.andIdEqualTo(id);

        musicCategoryMapper.updateByExampleSelective(musicCategory,musicCategoryExample);

        ResponseJsonResult responseJsonResult = new ResponseJsonResult();
        responseJsonResult.setStatus(200);
        responseJsonResult.setMsg("success");

        return responseJsonResult;
    }
}
