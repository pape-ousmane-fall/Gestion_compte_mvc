package sn.esmt.gestionCompte.service;

import java.util.List;

import sn.esmt.gestionCompte.domaine.Client;

public interface IClientService {
	
	public void enregistrer(Client c);
	public void suprimer(Client c);
	public Client chercher(Long id);
	public void maj(Client c);
	public List<Client> findAll();
	
	//Méthode spécifique 
	public String nomComplet(Client c);
	public Boolean aDroitAuPret(Client c);

}
