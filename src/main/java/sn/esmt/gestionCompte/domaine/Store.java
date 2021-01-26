package sn.esmt.gestionCompte.domaine;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.ManyToMany;

@Entity
public class Store {
	@Id
	private Long id;
	@ManyToMany(mappedBy = "store")
	private List<Categorie> categorie;
	private String adresse;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	
	public List<Categorie> getCategorie() {
		return categorie;
	}

	public void setCategorie(List<Categorie> categorie) {
		this.categorie = categorie;
	}

	public String getAdresse() {
		return adresse;
	}

	public void setAdresse(String adresse) {
		this.adresse = adresse;
	}

}
