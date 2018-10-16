package com.qf.paper.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/paper")
public class PaperController {

    //直接加载页面
    @RequestMapping("/{path}")
    public String toPage(@PathVariable String path){
        return path;
    }
}
