package com.qiuxm.myweb.web.controller.lister;

import javax.jms.JMSException;
import javax.jms.Message;
import javax.jms.MessageListener;
import javax.jms.TextMessage;

/**
 * Created by Administrator on 2015/6/2.
 */
public class MyMessageListener implements MessageListener {
    public void onMessage(Message arg0) {
        TextMessage msg = (TextMessage)arg0;
        try {
            System.out.println("receive txt msg==="+msg.getText());
        } catch (JMSException e) {
            e.printStackTrace();
        }
    }
}
