package gestionCompte;

import static org.junit.jupiter.api.Assertions.assertEquals;

import java.util.Date;

import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;

import sn.esmt.gestionCompte.domaine.Client;
import sn.esmt.gestionCompte.domaine.Compte;
import sn.esmt.gestionCompte.service.ClientServiceImpl2;

class ClientTest {

	ClientService cs;
	ClientServiceImpl2 csi;
	Compte compte;

	@BeforeAll
	static void setUpBeforeClass() throws Exception {
	}

	@AfterAll
	static void tearDownAfterClass() throws Exception {
	}

	@BeforeEach
	void setUp() throws Exception {
		cs = new ClientService();

		compte = new Compte(Compte.COMPTE_COURRENT, new Date());
		Client client = new Client();
		client.setCompte(compte);

		csi = new ClientServiceImpl2();

	}

	@AfterEach
	void tearDown() throws Exception {
	}

	@Test
	@DisplayName("Tester si 555")
	void test() {
		assertEquals(50, cs.ageClient());
	}

	@Test
	@DisplayName("Decouvert")
	void testDecouvert() {

		assertEquals(true, csi.aDroitAuDecouvert(compte));
		
	}

}
