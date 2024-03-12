package com.ctr;

import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HomeCtr {

    @GetMapping("/home")
    public String goHome() {
        return "Home"; 
    }
}
