package com.qiuxm.myweb.service.task;

import org.apache.log4j.Logger;

public class TestJobTask {
	private static Logger log = Logger.getLogger(TestJobTask.class);
	
	public String execute() {
		    
		log.info("test cron job start ...");
		log.info("===============欢迎来到任务调度的测试===================");
		log.info("test cron job end ...");
		return null;
		
	}
}
