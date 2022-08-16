package com.techelevator.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpSession;

@Controller
public class HomeController {



    @RequestMapping(path = "/", method = RequestMethod.GET)
    public String getMainScreen(HttpSession session) {

        if (null == session.getAttribute("currentUser"))
        {
            return "redirect:/login";
        }

        return "homePage";
    }
}
