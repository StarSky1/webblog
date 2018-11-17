package com.yj.webblog.dao;

import com.yj.webblog.model.domain.TechnologyBlog;

public interface TechnologyBlogMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(TechnologyBlog record);

    int insertSelective(TechnologyBlog record);

    TechnologyBlog selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(TechnologyBlog record);

    int updateByPrimaryKeyWithBLOBs(TechnologyBlog record);

    int updateByPrimaryKey(TechnologyBlog record);
}