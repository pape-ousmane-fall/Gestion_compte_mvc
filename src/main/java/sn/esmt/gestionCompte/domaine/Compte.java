package sn.esmt.gestionCompte.domaine;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Date;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
@Entity
public class Compte implements Serializable {
	public static final String COMPTE_COURRENT = "COURRENT"; 
	public static final String COMPTE_EPARGNE = "EPARGNE";  
	
	@Id
	private Long id;
	private String typeCompte;
	@Temporal(TemporalType.DATE)
	private Date dateCreation;
	private BigDecimal solde;
	@OneToOne(cascade = CascadeType.REMOVE)
	private Client client;
	
	public Compte() {
		super();
	}
	public Compte(String typeCompte, Date dateCreation) {
		super();
		this.typeCompte = typeCompte;
		this.dateCreation = dateCreation;
	}
	
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	
	public BigDecimal getSolde() {
		return solde;
	}
	public void setSolde(BigDecimal solde) {
		this.solde = solde;
	}
	public String getTypeCompte() {
		return typeCompte;
	}
	public void setTypeCompte(String typeCompte) {
		this.typeCompte = typeCompte;
	}
	public Date getDateCreation() {
		return dateCreation;
	}
	public void setDateCreation(Date dateCreation) {
		this.dateCreation = dateCreation;
	}
	
	

	
	
}
