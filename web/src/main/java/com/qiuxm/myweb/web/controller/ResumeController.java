package com.qiuxm.myweb.web.controller;
/**
 * Created by hzqiuxm on 2015/3/31.
 */

import com.qiuxm.myweb.dao.entity.Resume;
import com.qiuxm.myweb.service.interfaces.IResumeService;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

/**
 * Created by hzqiuxm on 2015/3/31.
 */
@Controller
@RequestMapping("resume")
public class ResumeController {
    private  static  Logger log = Logger.getLogger(ResumeController.class);
    @Autowired
    private IResumeService resumeService;

    @RequestMapping(method = RequestMethod.GET)
    public String home(ModelMap modelMap){

        modelMap.put("name","照片墙");
        return  "resume";
    }

    @ResponseBody
    @RequestMapping(value = "/test1",method = RequestMethod.POST)
    public ModelMap test1(){

        ModelMap modelMap = new ModelMap();
        log.info("test1() is begin ... ...");
        Resume queryCondition = new Resume();
        List<Resume> resumeList = resumeService.queryListByCondition(queryCondition);
        modelMap.put("rows", resumeList);
        modelMap.put("retcode",200);
        modelMap.put("msg","success");

        log.info("test1(222) is end! ... ...");
        return  modelMap;
    }

    @ResponseBody
    @RequestMapping(value = "/getallself", method = RequestMethod.GET)
    public ModelMap getself(){
        ModelMap modelMap = new ModelMap();
        log.info("getallself() is begin ... ...");
        Resume queryCondition = new Resume();
        List<Resume> resumeList = resumeService.queryListByCondition(queryCondition);

        modelMap.put("rows",resumeList);
        modelMap.put("total",resumeList.size());
        modelMap.put("retcode",200);
        modelMap.put("msg","success");

        log.info("getallself() is end! ... ...");
        return  modelMap;
    }

    @RequestMapping(value = "/getself", method = RequestMethod.GET)
    public String self(){

        log.info("========resumne getself=========");
        return "my_self";
    }

    @RequestMapping(value = "/test", method = RequestMethod.GET)
    public String test(){

        log.info("========resumne test=========");
        return "test";
    }

}
