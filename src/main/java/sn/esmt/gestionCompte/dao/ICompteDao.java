package sn.esmt.gestionCompte.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import sn.esmt.gestionCompte.domaine.Compte;

public interface ICompteDao extends JpaRepository<Compte, Long> {
	
	public List<Compte> findByTypeCompte(String type);

}
