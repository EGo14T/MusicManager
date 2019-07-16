package com.musicmanager.service.impl;

import com.musicmanager.mapper.UserLoginMapper;
import com.musicmanager.pojo.UserLogin;
import com.musicmanager.pojo.UserLoginExample;
import com.musicmanager.service.LoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import pojo.ResponseJsonResult;

import java.util.List;

/**
 * Create by EGo1ST on 2019/7/15.
 * 说明：
 */
@Service
public class LoginServiceImpl implements LoginService {
    @Autowired
    UserLoginMapper userLoginMapper;
    @Override
    public ResponseJsonResult Login(String username, String password) {
        UserLoginExample userLoginExample = new UserLoginExample();
        UserLoginExample.Criteria criteria = userLoginExample.createCriteria();
        criteria.andUsernameEqualTo(username);
        List<UserLogin> userLogins = userLoginMapper.selectByExample(userLoginExample);
        if (userLogins.size()!=0){
                    if (userLogins.get(0).getUserpassword().equals(password)){
                        System.out.printf(userLogins.get(0).getUserpassword());
                        ResponseJsonResult responseJsonResult = new ResponseJsonResult();
                        responseJsonResult.setStatus(200);
                        return responseJsonResult;
                    }else {
                        ResponseJsonResult responseJsonResult = new ResponseJsonResult();
                        responseJsonResult.setStatus(400);
                        return responseJsonResult;
                    }
        }else {
            ResponseJsonResult responseJsonResult = new ResponseJsonResult();
            responseJsonResult.setStatus(404);
            return responseJsonResult;
        }


    }
}

