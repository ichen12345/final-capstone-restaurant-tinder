package com.techelevator.services;

import com.techelevator.model.dto.RestoCount;
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


public class RestaurantService {

    private static final String API_KEY = "WQgzjaoJ93z36bo3xbzdlrwg-4yW2PvaaBFi2xezzMiST7YEVZWtY23sZf6N1lMkNZfeQG-hyhwEMZqEnRlJI-KwXXpUbx23XxqpmDQWUTz88d2_gwegiBttEq77YnYx";
    private static final String API_BASE_URL = "https://api.yelp.com/v3/businesses";
    private final RestTemplate restTemplate = new RestTemplate();
    private final String DEFAULT_LOCATION = "NYC";
    private final int LIMIT = 50;
//    private final int OFFSET = (int)(Math.random()* getOffset());

    private int getMaxCount() {
        String url = API_BASE_URL + "/search?" + "location=" + DEFAULT_LOCATION + "&categories=pizza" + "&limit=" + LIMIT;

        HttpHeaders headers = new HttpHeaders();
        headers.setBearerAuth(API_KEY);
        HttpEntity<Void> entity = new HttpEntity<>(headers);

        ResponseEntity<RestoCount> response = restTemplate.exchange(url, HttpMethod.GET, entity, RestoCount.class);
        RestoCount restoCount = response.getBody();

        return restoCount.getTotal();
    }


    public YelpResult getRestaurantData() {
//        int OFFSET = (int)(Math.random()* getMaxCount());

        int OFFSET = 50;
//        String url = API_BASE_URL + "/search?" + "location=" + DEFAULT_LOCATION + "&categories=pizza" + "&limit=" + LIMIT + ;
        String url = String.format("%s/search?location=%s&categories=%s&limit=%s&offset=%s",API_BASE_URL,DEFAULT_LOCATION,"pizza",LIMIT,OFFSET);
        HttpHeaders headers = new HttpHeaders();
        headers.setBearerAuth(API_KEY);
        HttpEntity<Void> entity = new HttpEntity<>(headers);

        ResponseEntity<YelpResult> response = restTemplate.exchange(url, HttpMethod.GET, entity, YelpResult.class);
        YelpResult result = response.getBody();

        return result;
    }

}



