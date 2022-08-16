package com.techelevator.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpSession;

@Controller
public class HomeController {


    @RequestMapping(path = "/", method = RequestMethod.GET)
    public String getMainScreen(HttpSession session) {

        if (null == session.getAttribute("currentUser")) {
            return "redirect:/login";
        }

        return "homePage";
    }


    @RequestMapping(path = "/swipingPage", method = RequestMethod.GET)
    public String getSwipingPage(HttpSession session) {

        return "/swipingPage";
    }

    @RequestMapping(path = "/updateInfo", method = RequestMethod.GET)
    public String getUpdateInfo(HttpSession session) {

        return "/updateInfo";
    }

    @RequestMapping(path = "/viewLikedRestaurants", method = RequestMethod.GET)
    public String getViewLikedRestaurants(HttpSession session) {

        return "/viewLikedRestaurants";
    }

    @RequestMapping(path = "/logout", method = RequestMethod.GET)
    public String getLogout(HttpSession session) {

        return "/logout";
    }





}
