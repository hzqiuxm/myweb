package com.qiuxm.myweb.service.interfaces;/**
 * Created by hzqiuxm on 2015/3/31.
 */

import com.github.pagehelper.Page;
import com.qiuxm.myweb.dao.entity.Resume;

import java.util.List;

/**
 * Created by hzqiuxm on 2015/3/31.
 */
public interface IResumeService {

    public boolean save(Resume resume);

    public boolean delete(int id);

    public boolean update(Resume resume);

    public List<Resume> queryListByCondition(Resume resume);

    public Page<Resume> queryListPage(Resume resume, int pageNumber, int pagesize);

}
