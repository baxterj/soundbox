package com.baxter.soundbox.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController {

    @RequestMapping("/")
    public ModelAndView getHome(ModelAndView mav) {
        mav.setViewName("home");
        return mav;
    }
}
