package com.qiuxm.myweb.web.controller.model;

import java.util.List;

/**
 * Created by hzqixm on 2015/8/20.
 */
public class UserModel {

    private List users;

    public UserModel() {
        super();
    }

    public UserModel(List users) {
        super();
        this.users = users;
    }

    public List getUsers() {
        return users;
    }

    public void setUsers(List users) {
        this.users = users;
    }


}
