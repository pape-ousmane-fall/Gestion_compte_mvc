package sn.esmt.gestionCompte.service;

import sn.esmt.gestionCompte.domaine.Compte;

public class ClientServiceImpl2 {
public Boolean aDroitAuDecouvert(Compte c) {
		
		if (c.getTypeCompte() == Compte.COMPTE_COURRENT) {
			return true;
		} else {
			return false;
		}
	}

}
