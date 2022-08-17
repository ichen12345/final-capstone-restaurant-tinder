package com.techelevator.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.techelevator.model.dto.User;
import com.techelevator.model.dao.UserDAO;

@Controller
public class UserController {

	private UserDAO userDAO;

	@Autowired
	public UserController(UserDAO userDAO) {
		this.userDAO = userDAO;
	}

	@RequestMapping(path="/users/checkusername", method = RequestMethod.GET)
	public @ResponseBody
	Boolean checkUserName(@RequestParam String userName)
	{
		return userDAO.isUserNameAvailable(userName);
	}

	@RequestMapping(path="/users/new", method=RequestMethod.GET)
	public String displayNewUserForm(ModelMap modelHolder) {
		if( ! modelHolder.containsAttribute("user")) {
			modelHolder.addAttribute("user", new User());

		}
		return "newUser";
	}
	
	@RequestMapping(path="/users", method=RequestMethod.POST)
	public String createUser(@Valid @ModelAttribute User user, BindingResult result, RedirectAttributes flash) {

		boolean isUserNameAvailable = userDAO.isUserNameAvailable(user.getUserName());
		if(!isUserNameAvailable) {
			FieldError error = new FieldError("user", "userName","The UserName is not available.");
			result.addError(error);
		}

		if(result.hasErrors()) {
			flash.addFlashAttribute("user", user);
			flash.addFlashAttribute(BindingResult.MODEL_KEY_PREFIX + "user", result);
			return "redirect:/users/new";
		}
		
		userDAO.saveUser(user.getUserName(), user.getPassword());
		return "redirect:/login";
	}

	@RequestMapping(path="/users/questionnaire", method=RequestMethod.POST)
	public String updatePreferences(@Valid @ModelAttribute User user, BindingResult result, RedirectAttributes flash) {
		return "homePage";
	}
	
	
}
