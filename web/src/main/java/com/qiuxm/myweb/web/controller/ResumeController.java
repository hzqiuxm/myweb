package com.qiuxm.myweb.web.controller;
/**
 * Created by hzqiuxm on 2015/3/31.
 */

import com.qiuxm.myweb.common.FindclientIP;
import com.qiuxm.myweb.common.IPAddressUtil;
import com.qiuxm.myweb.common.SpringContextUtil;
import com.qiuxm.myweb.dao.entity.Resume;
import com.qiuxm.myweb.service.interfaces.IResumeService;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import redis.clients.jedis.ShardedJedis;

import javax.servlet.http.HttpServletRequest;
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
    public String home(ModelMap modelMap,HttpServletRequest httpRequest){
        System.out.println("=======================================");
        String strip = FindclientIP.getIpAddr(httpRequest);
        System.out.println("本次访问的IP地址是："+strip);
        System.out.println("它的来源是："+ IPAddressUtil.getIpContents(strip));
        modelMap.put("name", "照片墙");
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

        log.info("test1(111) is end! ... ...");
        return  modelMap;
    }

    @RequestMapping(value = "/test2",method = RequestMethod.POST)
    public String test2(ModelMap modelMap){

//         = new ModelMap();
        log.info("test2() is begin ... ...");
        Resume queryCondition = new Resume();
        List<Resume> resumeList = resumeService.queryListByCondition(queryCondition);
        modelMap.put("rows", resumeList);
        modelMap.put("retcode",200);
        modelMap.put("msg","success");

        log.info("test2(222) is end! ... ...");
        return  "resume";
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

    @ResponseBody
    @RequestMapping(value = "/redis", method = RequestMethod.GET)
    public String redis(){

        log.info("========resumne redis begin=========");
        ShardedJedis shardedJedis = (ShardedJedis) SpringContextUtil.getBean("shardedJedis");
        System.out.println(SpringContextUtil.isSingleton("shardedJedis"));
        System.out.println("判断qxm键是否存在：" + shardedJedis.exists("qxm"));
        log.info("========resumne redis end=========");
        return "test";
    }

    @RequestMapping(value = "/uetest", method = RequestMethod.GET)
    public String uetest(){

        log.info("========ue test=========");
        return "uetest";
    }



}
