package sn.esmt.gestionCompte.domaine;

import javax.persistence.DiscriminatorValue;
import javax.persistence.Entity;

@Entity
@DiscriminatorValue("STANDARD")
public class Standard extends Client {

}
