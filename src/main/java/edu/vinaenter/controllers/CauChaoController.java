package edu.vinaenter.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
public class CauChaoController {

	private static final String MSG_ERR = "Please enter your name!";

	@GetMapping("bt1")
	public String inputName(Model model) {
		return "baitap1/index";
	}

	@PostMapping("greeting")
	public String handleGreeting(@RequestParam String name,	Model model, RedirectAttributes re) {
//		if do not enter the name then redirect to the input form
		if ("".equals(name)) {
			re.addFlashAttribute("msg", MSG_ERR);
			return "redirect:/bt1";
		}
		model.addAttribute("name", name);
		return "baitap1/index";
	}

}
