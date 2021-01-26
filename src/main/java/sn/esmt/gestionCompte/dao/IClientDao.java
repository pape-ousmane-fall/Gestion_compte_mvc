package sn.esmt.gestionCompte.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import sn.esmt.gestionCompte.domaine.Client;
import sn.esmt.gestionCompte.domaine.Compte;

public interface IClientDao extends JpaRepository<Client, Long> {

	public List<Client> findByNom(String nom);
	public List<Client> findByPrenom(String nom);
	public Client findByCompte(Compte compte);
	
}
