package sn.esmt.gestionCompte.controllers;

import java.util.List;

import org.apache.log4j.Logger;
//import org.slf4j.Logger;
//import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import sn.esmt.gestionCompte.domaine.Client;
import sn.esmt.gestionCompte.domaine.Compte;
import sn.esmt.gestionCompte.service.IClientService;
import sn.esmt.gestionCompte.service.ICompteService;

@Controller
@RequestMapping(value = "/client")
public class ClientController {

	@Autowired
	private IClientService ics;
	
	@Autowired
	private ICompteService icompteService;
	
    private Logger LOGGER = Logger.getLogger(ClientController.class);

	
	private static final String ALL_CLIENTS = "/clients";
	private static final String ADD_CLIENT = "/client/add";
	private static final String TO_ADD_CLIENT = "/client/add";
	private static final String DELETE_CLIENT = "/client/delete";
	private static final String UPDATE_CLIENT = "/client/update";
	private static final String TO_UPDATE_CLIENT = "/client/update/{id}";
	//<>
	@RequestMapping(value = TO_ADD_CLIENT, method =RequestMethod.GET)
	public String toAddClient(Model model) {
		Client client = new Client();
		model.addAttribute("client", client);
		//ics.enregistrer(client);
		 return "/client/ajout";
	}
	@RequestMapping(value = ADD_CLIENT, method=RequestMethod.POST)
	public String addClient(@ModelAttribute(value="client") Client client) {
		ics.enregistrer(client);
		 return "/client/liste";
	}
	@RequestMapping(value = ALL_CLIENTS, method = RequestMethod.GET)
	public String listeClients(Model model) {
		Compte compte = icompteService.chercher(1L);
		icompteService.suprimer(compte);
		
		List<Client> liste;
		liste = ics.findAll();
		model.addAttribute("clients", liste);
		return "/client/liste";
	}
	@RequestMapping(value = DELETE_CLIENT, method = RequestMethod.GET)
	public String supression(@RequestParam Long id, Model model){
		Client client = ics.chercher(id);
		ics.suprimer(client);
		List<Client> liste;
		liste = ics.findAll();
		model.addAttribute("clients", liste);
		return "client/liste";
	}
@RequestMapping(value = TO_UPDATE_CLIENT, method = RequestMethod.GET)
public String toUpdate(@PathVariable Long id, Model model) {
	
	Client client = ics.chercher(id);
	model.addAttribute("client", client);
	
	return "/client/update";
}

@RequestMapping(value = UPDATE_CLIENT, method = RequestMethod.PUT)
public String update(@ModelAttribute("client") Client client) {
	ics.maj(client);
	return "/client/liste";
}
}
