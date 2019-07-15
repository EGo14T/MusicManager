package com.musicmanager.service.impl;

import com.musicmanager.mapper.UserLoginMapper;
import com.musicmanager.pojo.UserLoginExample;
import com.musicmanager.service.LoginService;
import org.springframework.beans.factory.annotation.Autowired;
import pojo.ResponseJsonResult;

/**
 * Create by EGo1ST on 2019/7/15.
 * 说明：
 */
public class LoginServiceImpl implements LoginService {
    @Autowired
    UserLoginMapper userLoginMapper;
    @Override
    public ResponseJsonResult Login(String username, String password) {
        UserLoginExample userLoginExample = new UserLoginExample();
        UserLoginExample.Criteria criteria = userLoginExample.createCriteria();
        criteria.andUsernameEqualTo(username);

        userLoginMapper



        return null;
    }
}
