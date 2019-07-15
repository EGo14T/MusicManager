package com.musicmanager.controller;

import com.musicmanager.service.LoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
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
    public ResponseJsonResult Login(String name, String password){



        System.out.println(name);
        System.out.println(password);
        ResponseJsonResult responseJsonResult = loginService.Login(name, password);
        return responseJsonResult;
    }
}
