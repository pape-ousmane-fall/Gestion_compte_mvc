package sn.esmt.gestionCompte.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import sn.esmt.gestionCompte.dao.IClientDao;
import sn.esmt.gestionCompte.domaine.Client;
import sn.esmt.gestionCompte.domaine.Compte;

@Service
public class ClientServiceImpl implements IClientService {
	@Autowired
	IClientDao icd;

	public void enregistrer(Client c) {
		icd.save(c);
	}

	public void suprimer(Client c) {
		icd.delete(c);
	}

	public Client chercher(Long id) {
		return icd.findOne(id);
	}

	public void maj(Client c) {
		icd.saveAndFlush(c);

	}

	public String nomComplet(Client c) {
		// TODO Auto-generated method stub
		return c.getPrenom() + c.getNom();
	}

	public Boolean aDroitAuPret(Client c) {
		if (c.getCompte().getTypeCompte() == Compte.COMPTE_COURRENT) {
			return true;
		} else {
			return false;
		}

	}

	public List<Client> findAll() {
		// TODO Auto-generated method stub
		return icd.findAll();
	}
}
