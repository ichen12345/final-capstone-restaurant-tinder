package com.techelevator.model.dao.jdbc;

import com.techelevator.model.dao.RestaurantDAO;
import com.techelevator.model.dto.Business;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;
import org.springframework.stereotype.Component;

import javax.sql.DataSource;
import java.util.ArrayList;
import java.util.List;

@Component
public class JDBCRestaurantDAO implements RestaurantDAO {


    private JdbcTemplate jdbcTemplate;


    @Autowired
    public JDBCRestaurantDAO(DataSource dataSource) {
        this.jdbcTemplate = new JdbcTemplate(dataSource);
    }

    @Override
    public void addLikedRestaurant(Business restaurant, int userId) {
        String sql = "INSERT INTO saved_restaurant(user_id,\n" +
                "     restaurant_id)\n" +
                "VALUES (?,?)";
        jdbcTemplate.update(sql,userId, restaurant.getId());
    }

    @Override
    public void deleteFromLikedRestaurants(Business restaurant) {
        String sql = "DELETE FROM saved_restaurant WHERE restaurant_id = ?";
        jdbcTemplate.update(sql,restaurant.getId());
    }

    @Override
    public List<String> getLikedRestaurants(int userId) {
        List<String> likedRestos = new ArrayList<>();
        String sql = "  SELECT restaurant_id " +
                     "  FROM saved_restaurant" +
                     "  WHERE user_id = ?";

        SqlRowSet resto = jdbcTemplate.queryForRowSet(sql, userId);

        while(resto.next()){
            String restaurantId = resto.getString("restaurant_id");
            likedRestos.add(restaurantId);
        }

        return likedRestos;
    }

    @Override
    public boolean checkRestaurantIsLiked(int userId, String restaurantId) {
        String query = "SELECT * FROM saved_restaurant WHERE user_id = ? AND restaurant_id = ?";
        SqlRowSet row = jdbcTemplate.queryForRowSet(query, userId, restaurantId);
        if(row.next()) {
            return true;
        }
        return false;
    }
}
