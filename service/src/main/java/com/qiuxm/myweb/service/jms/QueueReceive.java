package com.qiuxm.myweb.service.jms;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.jms.core.JmsTemplate;

/**
 * Created by Administrator on 2015/6/2.
 */

//@Service
public class QueueReceive {

//    @Autowired
    private JmsTemplate jt = null;
    public static void main(String[] args) throws Exception {
        ApplicationContext ctx = new ClassPathXmlApplicationContext("applicationContext.xml");
        QueueReceive ct = (QueueReceive)ctx.getBean("queueReceive");

        String msg = (String)ct.jt.receiveAndConvert();

        System.out.println("msg==="+msg);
    }
}
