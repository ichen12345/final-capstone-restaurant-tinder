package com.techelevator.controller;

import com.techelevator.model.dto.YelpResult;
import com.techelevator.services.RestaurantService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class RestaurantController {
    RestaurantService restaurantService = new RestaurantService();

//    @RequestMapping(path ="/startmatching")
//    public String getRestaurantData(ModelMap map) {
//
//        YelpResult data = restaurantService.getRestaurantData();
//        map.put("restaurantData", data.getBusinesses());
//        map.put("totalRestaurants", data.getTotal());
//
////        return "swipingPage";
//        return "demos/testPage";
//    }


}
