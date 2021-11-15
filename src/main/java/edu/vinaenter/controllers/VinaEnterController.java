package edu.vinaenter.controllers;

import java.text.ParseException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import edu.vinaenter.daos.VinaEnterDao;
import edu.vinaenter.models.VinaEnter;

@Controller
public class VinaEnterController {

	@Autowired
	private VinaEnterDao vinaEnterDao;

	@GetMapping("/bt3")
	public String addEmployee(Model model) throws ParseException {
		
		int sum = 0;
		for (VinaEnter el : vinaEnterDao.getList()) {
			if (el.getId() % 2 != 0)
				sum += el.getStudent();
		}

		model.addAttribute("sum", sum);
		model.addAttribute("arPlace", vinaEnterDao.getList());
		return "baitap3";
	}

}
