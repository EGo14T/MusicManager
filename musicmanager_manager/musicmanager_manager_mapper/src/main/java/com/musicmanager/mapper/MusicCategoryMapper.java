package com.musicmanager.mapper;

import com.musicmanager.pojo.MusicCategory;
import com.musicmanager.pojo.MusicCategoryExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface MusicCategoryMapper {
    int countByExample(MusicCategoryExample example);

    int deleteByExample(MusicCategoryExample example);

    int deleteByPrimaryKey(Short id);

    int insert(MusicCategory record);

    int insertSelective(MusicCategory record);

    List<MusicCategory> selectByExample(MusicCategoryExample example);

    MusicCategory selectByPrimaryKey(Short id);

    int updateByExampleSelective(@Param("record") MusicCategory record, @Param("example") MusicCategoryExample example);

    int updateByExample(@Param("record") MusicCategory record, @Param("example") MusicCategoryExample example);

    int updateByPrimaryKeySelective(MusicCategory record);

    int updateByPrimaryKey(MusicCategory record);
}