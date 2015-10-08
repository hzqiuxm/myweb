package com.qiuxm.myweb.web.controller;

import com.alibaba.fastjson.JSONArray;
import com.qiuxm.myweb.web.controller.model.UserModel;
import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Created by hzqiuxm on 2015/5/3.
 */

@Controller
@RequestMapping("peixun")
public class Trainiing {
    private  static Logger log = Logger.getLogger(Trainiing.class);

    @RequestMapping(method = RequestMethod.GET)
    public String home(ModelMap modelMap){

        return  "peixun";
    }

    @RequestMapping("/user")
    public void test(UserModel userModel){
        log.info("--------------------------");
        log.info(JSONArray.toJSON(userModel));
    }

}
