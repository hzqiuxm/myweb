package com.qiuxm.myweb.service.impl;/**
 * Created by hzqiuxm on 2015/3/31.
 */

import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import com.qiuxm.myweb.dao.entity.Resume;
import com.qiuxm.myweb.dao.interfaces.ResumeMapper;
import com.qiuxm.myweb.service.interfaces.IResumeService;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
/**
 * Created by hzqiuxm on 2015/3/31.
 */
@SuppressWarnings("ALL")
@Service
public class ResumeServiceImpl implements IResumeService {

    private  static Logger log = Logger.getLogger(ResumeServiceImpl.class);

    @Autowired
    ResumeMapper resumeDao;
    @Override
    public boolean save(Resume resume) {
        return resumeDao.insert(resume) == 1 ? true : false;
    }

    @Override
    public boolean delete(int id) {
        return resumeDao.deleteByPrimaryKey(id) == 1 ? true : false;
    }

    @Override
    public boolean update(Resume resume) {
        return resumeDao.updateByPrimaryKeySelective(resume) == 1 ? true : false;
    }

    @Override
    public List<Resume> queryListByCondition(Resume resume) {
        return resumeDao.queryListByCondition(resume);
    }

    @Override
    public Page<Resume> queryListPage(Resume resume, int pageNumber, int pagesize) {
        PageHelper.startPage(pageNumber,pagesize);
        List<Resume> page = resumeDao.queryListByCondition(resume);
        return (Page<Resume>)page;
    }
}
