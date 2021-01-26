package sn.esmt.gestionCompte.controllers;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

public class HomeController {
	
	@RequestMapping(value = "/home", method = RequestMethod.GET)
	public String index() {
		return "home";
	}
}
