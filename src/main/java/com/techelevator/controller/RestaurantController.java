package com.techelevator.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class RestaurantController {

    private final String API_HOST = "https://api.yelp.com";
    private final String SEARCH_PATH = "/v3/businesses/search";

    @GetMapping(path=(API_HOST + SEARCH_PATH), produces = "application/json")
    public @ResponseBody String getRestaurants() {

        return null;
    }


}
