package com.kolhun.demorunner.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping
public class TestController {

    @RequestMapping
    public String indexPage() {
        return "index";
    }

}
