package sn.esmt.gestionCompte.domaine;

import java.io.Serializable;
import java.util.List;

import javax.persistence.DiscriminatorColumn;
import javax.persistence.DiscriminatorValue;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Inheritance;
import javax.persistence.InheritanceType;
import javax.persistence.MappedSuperclass;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;

@Entity
@Inheritance(strategy = InheritanceType.JOINED)
@DiscriminatorColumn(name = "TYPE_CLIENT")
@DiscriminatorValue("CLIENT")
//@MappedSuperclass
public class Client implements Serializable {

	@Id
	private Long id;
	private String nom;
	private String prenom;
	private String adresse;		
	@OneToMany(mappedBy = "client")
	private List<Produit> produits;
	@OneToOne(mappedBy = "client")
	private Compte compte;
	private Boolean salarie;
	
	public Client() {
		super();
	}

	public Client(String nom, String prenom, String adresse, Compte compte, Boolean salarie) {
		super();
		this.nom = nom;
		this.prenom = prenom;
		this.adresse = adresse;
		this.compte = compte;
		this.salarie = salarie;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public Boolean getSalarie() {
		return salarie;
	}

	public void setSalarie(Boolean salarie) {
		this.salarie = salarie;
	}

	public String getNom() {
		return nom;
	}

	public void setNom(String nom) {
		this.nom = nom;
	}

	public String getPrenom() {
		return prenom;
	}

	public void setPrenom(String prenom) {
		this.prenom = prenom;
	}

	public String getAdresse() {
		return adresse;
	}

	public void setAdresse(String adresse) {
		this.adresse = adresse;
	}

	public Compte getCompte() {
		return compte;
	}

	public void setCompte(Compte compte) {
		this.compte = compte;
	}

	public List<Produit> getProduits() {
		return produits;
	}

	public void setProduits(List<Produit> produits) {
		this.produits = produits;
	}
	

}
