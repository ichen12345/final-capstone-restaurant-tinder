package com.techelevator.model.dao;

import com.techelevator.model.dto.User;

public interface UserDAO {

	public void saveUser(User user);

	public boolean searchForUsernameAndPassword(String userName, String password);

	public void updatePassword(String userName, String password);

	public Object getUserByUserName(String userName);

	Boolean isUserNameAvailable(String userName);

	public void updateUserPreferences(User user, int id);
}
