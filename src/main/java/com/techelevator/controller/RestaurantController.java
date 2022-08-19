package com.techelevator.controller;

import com.techelevator.model.dao.RestaurantDAO;
import com.techelevator.model.dto.Business;
import com.techelevator.model.dto.User;
import com.techelevator.model.dto.YelpResult;
import com.techelevator.services.RestaurantService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;

@Controller
public class RestaurantController {
    RestaurantService restaurantService = new RestaurantService();
    private RestaurantDAO restaurantDao;

    @Autowired
    public RestaurantController(RestaurantDAO restaurantDao){
        this.restaurantDao = restaurantDao;
    }

    @RequestMapping(path="/likedRestaurants")
    public @ResponseBody void addLikedRestaurants(HttpSession session, Business restaurant) {
        User user = (User)session.getAttribute("currentUser");
        int id = user.getId();

        if(!restaurantDao.checkRestaurantIsLiked(id, restaurant.getId())) {

            restaurantDao.addLikedRestaurant(restaurant, id);
        }

    }


}
