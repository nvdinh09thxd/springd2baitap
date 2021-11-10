package edu.vinaenter.controllers;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import edu.vinaenter.models.VinaEnter;

@Controller
public class VinaEnterController {

	@RequestMapping(value = { "/" }, method = RequestMethod.GET)
	public String addEmployee(Model model) throws ParseException {
		ArrayList<VinaEnter> arPlace = new ArrayList<>();
		arPlace.add(new VinaEnter(1, "VinaEnter - 154 Phạm Như Xương", new SimpleDateFormat("dd/MM/yyyy").parse("12/12/2021"), 500));
		arPlace.add(new VinaEnter(2, "VinaEnter - 52 Ninh Tốn", new SimpleDateFormat("dd/MM/yyyy").parse("12/8/2013"),	240));
		arPlace.add(new VinaEnter(3, "VinaEnter - 5", new SimpleDateFormat("dd/MM/yyyy").parse("05/12/2015"), 300));
		arPlace.add(new VinaEnter(4, "VinaEnter - 263 Tiểu La", new SimpleDateFormat("dd/MM/yyyy").parse("16/08/2017"),	280));
		int sum = 0;
		for (VinaEnter el : arPlace) {
			if (el.getId() % 2 != 0)
				sum += el.getStudent();
		}
		model.addAttribute("sum", sum);
		model.addAttribute("arPlace", arPlace);
		return "index";
	}

}
