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
                "     restaurant_id,\n" +
                "     image_url,\n" +
                "     restaurant_name,\n" +
                "     rating,\n" +
                "     price,\n" +
                "     address,\n" +
                "url,\n" +
                "phone)\n" +
                "VALUES (?,?,?,?,?,?,?,?,?)";
        Business restaurantTest = restaurant;
        String idTest = restaurantTest.getId();
        jdbcTemplate.update(sql,userId, restaurant.getId(),restaurant.getImage_url(), restaurant.getName(), restaurant.getRating(), restaurant.getPrice(), restaurant.getStringAddress(), restaurant.getUrl(), restaurant.getPhone());
    }

    @Override
    public void deleteFromLikedRestaurants(Business restaurant) {
        String sql = "DELETE FROM saved_restaurant WHERE restaurant_id = ?";
        jdbcTemplate.update(sql,restaurant.getId());
    }

    @Override
    public List<Business> getLikedRestaurants(int userId) {
        List<Business> likedRestos = new ArrayList<>();
        String sql = "  SELECT * " +
                "       FROM saved_restaurant" +
                "       WHERE user_id = ?";

        SqlRowSet resto = jdbcTemplate.queryForRowSet(sql, userId);

        while(resto.next()){
            Business thisResto = new Business();

            thisResto.setId(resto.getString("restaurant_id"));
            thisResto.setImage_url(resto.getString("image_url"));
            thisResto.setName(resto.getString("restaurant_name"));
            thisResto.setRating(Double.parseDouble(resto.getString("rating")));
            thisResto.setPrice(resto.getString("price"));
            thisResto.setUrl(resto.getString("url"));
            thisResto.setPhone(resto.getString("phone"));
//            thisResto.setStringAddress(resto.getString("address"));

            likedRestos.add(thisResto);
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
