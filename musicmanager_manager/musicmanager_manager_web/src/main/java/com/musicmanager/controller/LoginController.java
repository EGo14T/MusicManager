package com.musicmanager.controller;

import com.musicmanager.service.LoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import pojo.ResponseJsonResult;

/**
 * Create by EGo1ST on 2019/7/15.
 * 说明：
 */
@Controller
public class LoginController {
    @Autowired
    LoginService loginService;


    @RequestMapping("/loginRequest")
    @ResponseBody
    public ResponseJsonResult Login(String username, String password){
        ResponseJsonResult responseJsonResult = loginService.Login(username, password);
        return responseJsonResult;
    }
}
