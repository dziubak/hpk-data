package com.hpk.data.hpkdata.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class HomeController {
    @RequestMapping(value = "/group", method = RequestMethod.GET)
    public String index1(){
        return "group";
    }

    @RequestMapping(value = "/group/create", method = RequestMethod.GET)
    public String index2(){
        return "group_create";
    }

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String index(){
        return "index";
    }


}
