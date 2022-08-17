package com.techelevator.services;

import com.techelevator.model.dto.YelpResult;
import org.springframework.http.HttpEntity;

import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.ResponseEntity;
import org.springframework.web.client.RestTemplate;

public class RestaurantService {

    private static final String API_KEY = "WQgzjaoJ93z36bo3xbzdlrwg-4yW2PvaaBFi2xezzMiST7YEVZWtY23sZf6N1lMkNZfeQG-hyhwEMZqEnRlJI-KwXXpUbx23XxqpmDQWUTz88d2_gwegiBttEq77YnYx";
    private static final String API_BASE_URL = "https://api.yelp.com/v3/businesses";
    private final RestTemplate restTemplate = new RestTemplate();

    String url = API_BASE_URL + "/search?term=";

    HttpHeaders headers = new HttpHeaders();
    // add apikey to header or token
    headers.setBearerAuth(API_KEY);
    HttpEntity<Void> entity = new HttpEntity<>(headers);

    ResponseEntity<YelpResult> response = restTemplate.exchange(url, HttpMethod.GET, entity, YelpResult.class);
    YelpResult result = response.getBody();


}
