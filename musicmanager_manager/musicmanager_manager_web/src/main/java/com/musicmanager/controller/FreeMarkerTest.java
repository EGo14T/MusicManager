package com.musicmanager.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Create by EGo1ST on 2019/5/5.
 * 说明：
 */
@Controller
public class FreeMarkerTest {
    @RequestMapping("/hello")
    public String sayHello(Model model){
        model.addAttribute("name","wfx");
        return "hello";
    }

    @RequestMapping("/hi")
    public String sayHi(Model model){
        model.addAttribute("name","wfx");
        return "hi";
    }
}
