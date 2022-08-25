package com.techelevator.model.dto;

import org.springframework.web.bind.annotation.RequestParam;

import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;
import java.util.HashMap;
import java.util.Map;

public class User {

	private int id;

	private String userName;
	
	@Size(min=8, message="Password too short, must be at least 8")
	@Pattern.List({
		@Pattern(regexp=".*[a-z].*", message="Must have a lower case"),
		@Pattern(regexp=".*[A-Z].*", message="Must have a capital")
	})
	private String password;
	private String role;
	
	private String confirmPassword;

	private String zipcode;
	private String rating;
	private String price;
	private boolean foodDeliveryServices = false;
	private boolean italian = false;
	private boolean asianfusion = false;
	private boolean bbq = false;
	private boolean pizza = false;
	private boolean argentine = false;
	private boolean breakfast_brunch = false;
	private boolean burgers = false;
	private boolean newamerican = false;
	private boolean comfortfood = false;
	private boolean french = false;
	private boolean indpak = false;
	private boolean japanese = false;
	private boolean mexican = false;
	private boolean vegan = false;
	private boolean vegetarian = false;
	private boolean restaurants = false;
	

public Map<String, Boolean> getCuisineChoices() {
	Map<String, Boolean> cuisineMap = new HashMap<>();
	cuisineMap.put("fooddeliveryservices",isFoodDeliveryServices());
	cuisineMap.put("italian", isItalian());
	cuisineMap.put("asianfusion", isAsianfusion());
	cuisineMap.put("bbq", isBbq());
	cuisineMap.put("pizza", isPizza());
	cuisineMap.put("argentine", isArgentine());
	cuisineMap.put("breakfast_brunch", isBreakfast_brunch());
	cuisineMap.put("burgers", isBurgers());
	cuisineMap.put("newamerican", isNewamerican());
	cuisineMap.put("comfortfood", isComfortfood());
	cuisineMap.put("french", isFrench());
	cuisineMap.put("indpak", isIndpak());
	cuisineMap.put("japanese", isJapanese());
	cuisineMap.put("mexican", isMexican());
	cuisineMap.put("vegan", isVegan());
	cuisineMap.put("vegetarian", isVegetarian());
	cuisineMap.put("restaurants", isRestaurants());

	return cuisineMap;

}





	public String getUserName() {
		return userName;

	}
	/**
	 * @return the role
	 */
	public String getRole() {
		return role;
	}
	/**
	 * @param role the role to set
	 */
	public void setRole(String role) {
		this.role = role;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getConfirmPassword() {
		return confirmPassword;
	}
	public void setConfirmPassword(String confirmPassword) {
		this.confirmPassword = confirmPassword;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getZipcode() {
		return zipcode;
	}

	public void setZipcode(String zipcode) {
		this.zipcode = zipcode;
	}

	public String getRating() {
		return rating;
	}

	public void setRating(String rating) {
		this.rating = rating;
	}

	public String getPrice() {
		return price;
	}

	public void setPrice(String price) {
		this.price = price;
	}

	public boolean isFoodDeliveryServices() {
		return foodDeliveryServices;
	}

	public void setFoodDeliveryServices(boolean foodDeliveryServices) {
		this.foodDeliveryServices = foodDeliveryServices;
	}

	public boolean isItalian() {
		return italian;
	}

	public void setItalian(boolean italian) {
		this.italian = italian;
	}

	public boolean isAsianfusion() {
		return asianfusion;
	}

	public void setAsianfusion(boolean asianfusion) {
		this.asianfusion = asianfusion;
	}

	public boolean isBbq() {
		return bbq;
	}

	public void setBbq(boolean bbq) {
		this.bbq = bbq;
	}

	public boolean isPizza() {
		return pizza;
	}

	public void setPizza(boolean pizza) {
		this.pizza = pizza;
	}

	public boolean isArgentine() {
		return argentine;
	}

	public void setArgentine(boolean argentine) {
		this.argentine = argentine;
	}

	public boolean isBreakfast_brunch() {
		return breakfast_brunch;
	}

	public void setBreakfast_brunch(boolean breakfast_brunch) {
		this.breakfast_brunch = breakfast_brunch;
	}

	public boolean isBurgers() {
		return burgers;
	}

	public void setBurgers(boolean burgers) {
		this.burgers = burgers;
	}

	public boolean isNewamerican() {
		return newamerican;
	}

	public void setNewamerican(boolean newamerican) {
		this.newamerican = newamerican;
	}

	public boolean isComfortfood() {
		return comfortfood;
	}

	public void setComfortfood(boolean comfortfood) {
		this.comfortfood = comfortfood;
	}

	public boolean isFrench() {
		return french;
	}

	public void setFrench(boolean french) {
		this.french = french;
	}

	public boolean isIndpak() {
		return indpak;
	}

	public void setIndpak(boolean indpak) {
		this.indpak = indpak;
	}

	public boolean isJapanese() {
		return japanese;
	}

	public void setJapanese(boolean japanese) {
		this.japanese = japanese;
	}

	public boolean isMexican() {
		return mexican;
	}

	public void setMexican(boolean mexican) {
		this.mexican = mexican;
	}

	public boolean isVegan() {
		return vegan;
	}

	public void setVegan(boolean vegan) {
		this.vegan = vegan;
	}

	public boolean isVegetarian() {
		return vegetarian;
	}

	public void setVegetarian(boolean vegetarian) {
		this.vegetarian = vegetarian;
	}

	public boolean isRestaurants() {
		return restaurants;
	}

	public void setRestaurants(boolean restaurants) {
		this.restaurants = restaurants;
	}
}
