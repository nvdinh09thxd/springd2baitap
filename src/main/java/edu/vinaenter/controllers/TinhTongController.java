package edu.vinaenter.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class TinhTongController {

	@GetMapping("bt2")
	public String inputNumber() {
		return "baitap2/index";
	}

	@PostMapping("figure-out")
	public String figureOut(@RequestParam String dayso, Model model) {
		String arDaySo[] = dayso.split(",");
		int sum = 0;
		for (int i = 0; i < arDaySo.length; i++) {
			if (isNumber(arDaySo[i]))
				sum += Integer.parseInt(arDaySo[i]);
		}
		model.addAttribute("sum", sum);
		return "baitap2/index";
	}
	
	public boolean isNumber(String str) {
		try {
			Integer.parseInt(str);
		} catch (NumberFormatException e) {
			return false;
		}
		return true;
	}

}
