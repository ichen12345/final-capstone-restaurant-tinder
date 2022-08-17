package com.techelevator.model.dto;

import java.util.List;


public class YelpResult {

    private int total;
    private List<Business> businesses;

    public int getTotal() {
        return total;
    }

    public void setTotal(int total) {
        this.total = total;
    }

    public List<Business> getBusinesses() {
        return businesses;
    }

    public void setBusinesses(List<Business> businesses) {
        this.businesses = businesses;
    }

}
