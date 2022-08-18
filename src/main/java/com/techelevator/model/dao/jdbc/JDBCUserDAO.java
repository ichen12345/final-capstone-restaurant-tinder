package com.techelevator.model.dao.jdbc;

import javax.sql.DataSource;

import com.techelevator.model.dao.UserDAO;
import org.bouncycastle.util.encoders.Base64;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;
import org.springframework.stereotype.Component;

import com.techelevator.model.dto.User;
import com.techelevator.services.security.PasswordHasher;

@Component
public class JDBCUserDAO implements UserDAO
{

	private JdbcTemplate jdbcTemplate;
	private PasswordHasher hashMaster;

	@Autowired
	public JDBCUserDAO(DataSource dataSource, PasswordHasher hashMaster) {
		this.jdbcTemplate = new JdbcTemplate(dataSource);
		this.hashMaster = hashMaster;
	}
	
	@Override
	public void saveUser(User user) {
		byte[] salt = hashMaster.generateRandomSalt();
		String hashedPassword = hashMaster.computeHash(user.getPassword(), salt);
		String saltString = new String(Base64.encode(salt));
		String zipcode = user.getZipcode();
		String rating = user.getRating();
		String price = user.getPrice();
		boolean fooddeliveryservices = user.isFoodDeliveryServices();
		boolean italian = user.isItalian();
		boolean asianfusion = user.isAsianfusion();
		boolean bbq = user.isBbq();
		boolean pizza = user.isPizza();
		boolean argentine = user.isArgentine();
		boolean breakfast_brunch = user.isBreakfast_brunch();
		boolean burgers = user.isBurgers();
		boolean newamerican = user.isNewamerican();
		boolean comfortfood = user.isComfortfood();
		boolean french = user.isFrench();
		boolean indpak = user.isIndpak();
		boolean japanese =  user.isJapanese();
		boolean mexican = user.isMexican();
		boolean vegan = user.isVegan();
		boolean vegetarian = user.isVegetarian();
		
		jdbcTemplate.update("INSERT INTO app_user(user_name, password, salt, zipcode," +
						"  rating,\n" +
						"  price,\n" +
						"  fooddeliveryservices,\n" +
						"  italian,\n" +
						"  asianfusion,\n" +
						"  bbq,\n" +
						"  pizza,\n" +
						"  argentine,\n" +
						"  breakfast_brunch,\n" +
						"  burgers,\n" +
						"  newamerican,\n" +
						"  comfortfood,\n" +
						"  french,\n" +
						"  indpak,\n" +
						"  japanese,\n" +
						"  mexican,\n" +
						"  vegan,\n" +
						"  vegetarian) VALUES ( ?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)",
				user.getUserName(),
				hashedPassword,
				saltString,
				user.getZipcode(),
				user.getRating(),
				user.getPrice(),
				user.isFoodDeliveryServices(),
				user.isItalian(),
				user.isAsianfusion(),
				user.isBbq(),
				user.isPizza(),
				user.isArgentine(),
				user.isBreakfast_brunch(),
				user.isBurgers(),
				user.isNewamerican(),
				user.isComfortfood(),
				user.isFrench(),
				user.isIndpak(),
				user.isJapanese(),
				user.isMexican(),
				user.isVegan(),
				user.isVegetarian());
	}

	@Override
	public boolean searchForUsernameAndPassword(String userName, String password) {
		String sqlSearchForUser = "SELECT * "+
							      "FROM app_user "+
							      "WHERE UPPER(user_name) = ? ";
		
		SqlRowSet user = jdbcTemplate.queryForRowSet(sqlSearchForUser, userName.toUpperCase());
		if(user.next()) {
			String dbSalt = user.getString("salt");
			String dbHashedPassword = user.getString("password");
			String givenPassword = hashMaster.computeHash(password, Base64.decode(dbSalt));
			return dbHashedPassword.equals(givenPassword);
		} else {
			return false;
		}
	}

	@Override
	public void updatePassword(String userName, String password) {
		jdbcTemplate.update("UPDATE app_user SET password = ? WHERE user_name = ?", password, userName);
	}

	@Override
	public Object getUserByUserName(String userName) {
		String sqlSearchForUsername ="SELECT * "+
		"FROM app_user "+
		"WHERE UPPER(user_name) = ? ";

		SqlRowSet user = jdbcTemplate.queryForRowSet(sqlSearchForUsername, userName.toUpperCase()); 
		User thisUser = null;
		if(user.next()) {
			thisUser = new User();
			thisUser.setUserName(user.getString("user_name"));
			thisUser.setPassword(user.getString("password"));
			thisUser.setZipcode(user.getString("zipcode"));
			thisUser.setRating(user.getString("rating"));
			thisUser.setPrice(user.getString("price"));
			thisUser.setFoodDeliveryServices(user.getBoolean("fooddeliveryservices"));
			thisUser.setItalian(user.getBoolean("italian"));
			thisUser.setAsianfusion(user.getBoolean("asianfusion"));
			thisUser.setBbq(user.getBoolean("bbq"));
			thisUser.setPizza(user.getBoolean("pizza"));
			thisUser.setArgentine(user.getBoolean("argentine"));
			thisUser.setBreakfast_brunch(user.getBoolean("breakfast_brunch"));
			thisUser.setBurgers(user.getBoolean("burgers"));
			thisUser.setNewamerican(user.getBoolean("newamerican"));
			thisUser.setComfortfood(user.getBoolean("comfortfood"));
			thisUser.setFrench(user.getBoolean("french"));
			thisUser.setIndpak(user.getBoolean("indpak"));
			thisUser.setJapanese(user.getBoolean("japanese"));
			thisUser.setMexican(user.getBoolean("mexican"));
			thisUser.setVegan(user.getBoolean("vegan"));
			thisUser.setVegetarian(user.getBoolean("vegetarian"));
		}

		return thisUser;
	}

	@Override
	public Boolean isUserNameAvailable(String userName)
	{
		String query = "SELECT user_name FROM app_user WHERE user_name ILIKE ?;";

		SqlRowSet row = jdbcTemplate.queryForRowSet(query, userName);

		if(row.next())
		{
			// userName already exists
			return false;
		}

		// userName is available
		return true;
	}

}
