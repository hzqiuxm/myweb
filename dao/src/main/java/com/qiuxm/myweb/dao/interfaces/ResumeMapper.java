package com.qiuxm.myweb.dao.interfaces;

import com.qiuxm.myweb.dao.entity.Resume;

import java.util.List;

public interface ResumeMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Resume record);

    int insertSelective(Resume record);

    Resume selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Resume record);

    int updateByPrimaryKeyWithBLOBs(Resume record);

    int updateByPrimaryKey(Resume record);

    List<Resume> queryListByCondition(Resume resume);
}