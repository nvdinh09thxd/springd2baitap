package edu.vinaenter.controllers;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import edu.vinaenter.models.User;

@Controller
public class LoginController {

	private static final String ERR_INPUT = "Please enter username or password!";
	private static final String ERR_LOGIN = "Invalid username or password!";

	@GetMapping("bt4")
	public String login() {
		return "baitap4/login";
	}

	@GetMapping("welcome")
	public String welcome() {
		return "baitap4/welcome";
	}

	@PostMapping("login")
	public String login(@ModelAttribute User user, Model model, RedirectAttributes re, HttpSession session) {
//		if do not enter the username or password then redirect to the input form
		if ("".equals(user.getUsername()) || "".equals(user.getPassword())) {
			re.addFlashAttribute("msg", ERR_INPUT);
			return "redirect:/bt4";
		}
		session.setAttribute("userLogin", user);
		if (!"admin".equals(user.getUsername()) || !"123456".equals(user.getPassword())) {
			re.addFlashAttribute("msg", ERR_LOGIN);
			return "redirect:/bt4";
		}
		return "redirect:/welcome";
	}

}
