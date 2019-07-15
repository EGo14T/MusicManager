package com.musicmanager.service;

import pojo.ResponseJsonResult;

public interface LoginService {
    ResponseJsonResult Login(String username, String password);
}
