package com.techelevator.model.dao;

import com.techelevator.model.dto.Business;

import java.util.List;

public interface RestaurantDAO {
    public void addLikedRestaurant(Business restaurant, int userId);

    public void deleteFromLikedRestaurants(Business restaurant);

    public List<Business> getLikedRestaurants(int userId);

}
