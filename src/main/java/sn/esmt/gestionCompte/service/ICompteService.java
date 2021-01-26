package sn.esmt.gestionCompte.service;

import sn.esmt.gestionCompte.domaine.Compte;

public interface ICompteService {

	
	public void enregistrer(Compte c);
	public void suprimer(Compte c);
	public Compte chercher(Long id);
	public void maj(Compte c);
	
	//Méthode spécifique 
	public Boolean aDroitAuDecouvert(Compte c);
}
