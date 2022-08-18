package com.techelevator.services;

import com.techelevator.model.dto.RestoCount;
import com.techelevator.model.dto.User;
import com.techelevator.model.dto.YelpResult;
import org.springframework.http.HttpEntity;

import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.ResponseEntity;
import org.springframework.web.client.RestTemplate;

import javax.imageio.ImageIO;
import java.awt.*;
import java.awt.image.BufferedImage;
import java.io.IOException;
import java.io.InputStream;
import java.net.URL;
import java.net.URLConnection;
import java.util.Map;


public class RestaurantService {

    private static final String API_KEY = "WQgzjaoJ93z36bo3xbzdlrwg-4yW2PvaaBFi2xezzMiST7YEVZWtY23sZf6N1lMkNZfeQG-hyhwEMZqEnRlJI-KwXXpUbx23XxqpmDQWUTz88d2_gwegiBttEq77YnYx";
    private static final String API_BASE_URL = "https://api.yelp.com/v3/businesses";
    private final RestTemplate restTemplate = new RestTemplate();
    private final String DEFAULT_LOCATION = "NYC";
    private final int LIMIT = 50;


    private int getMaxCount(User user) {
        String categories = getFormattedCuisineTypes(user);
        String zipcode = user.getZipcode();
        String url = String.format("%s/search?location=%s&categories=%s&limit=%s",API_BASE_URL,zipcode,categories,LIMIT);

        HttpHeaders headers = new HttpHeaders();
        headers.setBearerAuth(API_KEY);
        HttpEntity<Void> entity = new HttpEntity<>(headers);

        ResponseEntity<RestoCount> response = restTemplate.exchange(url, HttpMethod.GET, entity, RestoCount.class);
        RestoCount restoCount = response.getBody();

        int maxNum = 0;
        if(restoCount != null){
            maxNum = Math.max(restoCount.getTotal() - 50, 0);
        }

        return Math.min(maxNum, 1000);
    }


    public YelpResult getRestaurantData(User user) {
        String categories = getFormattedCuisineTypes(user);
        String zipcode = user.getZipcode();
        int randomOffset = (int)(Math.random()* getMaxCount(user));
//        int randomOffset = 0;
        String url = String.format("%s/search?location=%s&categories=restaurants%s&limit=%s&offset=%s",API_BASE_URL,zipcode,categories,LIMIT,randomOffset);
        HttpHeaders headers = new HttpHeaders();
        headers.setBearerAuth(API_KEY);
        HttpEntity<Void> entity = new HttpEntity<>(headers);

        ResponseEntity<YelpResult> response = restTemplate.exchange(url, HttpMethod.GET, entity, YelpResult.class);
        YelpResult result = response.getBody();

        return result;
    }


    public String getFormattedCuisineTypes(User user){
        StringBuilder categories = new StringBuilder();
        categories.append(",");

        for(Map.Entry<String, Boolean> restaurant : user.getCuisineChoices().entrySet()){
            if(restaurant.getValue()){
                categories.append(restaurant.getKey()).append(",");
            }
        }
        //need to remove trailing comma
        String categoriesStr = categories.toString();
        String trimmedCategories = categoriesStr.substring(0,categoriesStr.length()-1);

        return trimmedCategories;
    }

}



