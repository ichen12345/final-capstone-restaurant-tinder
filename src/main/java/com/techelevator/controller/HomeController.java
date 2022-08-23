package com.techelevator.controller;

import com.techelevator.model.dao.RestaurantDAO;
import com.techelevator.model.dao.jdbc.JDBCRestaurantDAO;
import com.techelevator.model.dto.Business;
import com.techelevator.model.dto.User;
import com.techelevator.model.dto.YelpResult;
import com.techelevator.services.RestaurantService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class HomeController {
    RestaurantService restaurantService = new RestaurantService();

    private RestaurantDAO restaurantDAO;

    @Autowired
    public HomeController(RestaurantDAO restaurantDAO){
        this.restaurantDAO = restaurantDAO;
    }

    @RequestMapping(path = "/", method = RequestMethod.GET)
    public String getMainScreen(HttpSession session) {

        if (null == session.getAttribute("currentUser")) {
            return "redirect:/login";
        }

        return "homePage";
    }


    @RequestMapping(path = "/swipingPage", method = RequestMethod.GET)
    public String getSwipingPage(HttpSession session, ModelMap map) {
        if (null == session.getAttribute("currentUser")) {
            return "redirect:/login";
        }
        User user = (User)session.getAttribute("currentUser");
        YelpResult data = restaurantService.getRestaurantData(user);
        List<Business> filteredRestaurants = restaurantService.removeRejected(session, data.getBusinesses());
        map.put("restaurantData", filteredRestaurants);
        map.put("totalRestaurants", data.getTotal());


        return "/swipingPage";
    }

    @RequestMapping(path = "/updateInfo", method = RequestMethod.GET)
    public String getUpdateInfo(HttpSession session) {
        if (null == session.getAttribute("currentUser")) {
            return "redirect:/login";
        }

        return "/updateInfo";
    }

    @RequestMapping(path = "/viewLikedRestaurants", method = RequestMethod.GET)
    public String getViewLikedRestaurants(HttpSession session, ModelMap map) {
        if (null == session.getAttribute("currentUser")) {
            return "redirect:/login";
        }
        User user = (User)session.getAttribute("currentUser");
        List<String> likedRestaurantIDs = restaurantDAO.getLikedRestaurants(user.getId());
        List<Business> likedRestaurants = restaurantService.getRestaurantById(likedRestaurantIDs);

        map.put("likedRestaurants", likedRestaurants);

        return "/viewLikedRestaurants";
    }

}
