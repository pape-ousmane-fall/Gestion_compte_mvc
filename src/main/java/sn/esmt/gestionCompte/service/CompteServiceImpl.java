package sn.esmt.gestionCompte.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import sn.esmt.gestionCompte.dao.ICompteDao;
import sn.esmt.gestionCompte.domaine.Client;
import sn.esmt.gestionCompte.domaine.Compte;

@Service
public class CompteServiceImpl implements ICompteService {

	
	

	private ICompteDao icd;

	public CompteServiceImpl(ICompteDao icd) {
		super();
		this.icd = icd;
	}
	
	public void enregistrer(Compte c) {
icd.save(c);		
	}

	public void suprimer(Compte c) {
icd.delete(c);		
	}

	public Compte chercher(Long id) {
		// TODO Auto-generated method stub
		return icd.findOne(id);
	}

	public void maj(Compte c) {
icd.saveAndFlush(c);		
	}

	public Boolean aDroitAuDecouvert(Compte c) {
		
		if (c.getTypeCompte() == Compte.COMPTE_COURRENT) {
			return true;
		} else {
			return false;
		}
	}

	
}
