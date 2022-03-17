package it.epicode.be.energy;

import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.get;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.post;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;

import java.math.BigDecimal;
import java.time.LocalDate;

import static org.junit.jupiter.api.Assertions.*;

import org.json.JSONObject;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.mockito.Mock;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.web.servlet.AutoConfigureMockMvc;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.http.MediaType;
import org.springframework.security.test.context.support.WithAnonymousUser;
import org.springframework.security.test.context.support.WithMockUser;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.MvcResult;

import com.fasterxml.jackson.databind.ObjectMapper;

import it.epicode.be.energy.model.Cliente;
import it.epicode.be.energy.model.Comune;
import it.epicode.be.energy.model.Indirizzo;
import it.epicode.be.energy.model.Provincia;
import it.epicode.be.energy.model.TipoCliente;

@SpringBootTest
@AutoConfigureMockMvc
public class EpicEnergyControllerTest {

	Provincia pro2;
	Provincia pro1;
	Comune com2;
	Comune com1;
	Indirizzo ileg;
	Indirizzo iope;
	Cliente cl1;

	@Autowired
	private MockMvc mockMvc;

	/**
	 * EndPoint di viasualizzazione lista dei clienti testato senza autentificazione
	 * 
	 */
	@Test
	@WithAnonymousUser
	public void listaClientiWhenUtenteIsAnonymous() throws Exception {
		this.mockMvc.perform(get("/api/cliente")).andExpect(status().isUnauthorized());
	}

	/**
	 * EndPoint di viasualizzazione lista dei comuni testato senza autentificazione
	 * 
	 */
	@Test
	@WithAnonymousUser
	public void listaComuniWhenUtenteIsAnonymous() throws Exception {
		this.mockMvc.perform(get("/api/comune")).andExpect(status().isUnauthorized());
	}

	/**
	 * EndPoint di viasualizzazione lista dei comuni testato con autentificazione
	 * 
	 */
	@Test
	@WithMockUser(username = "admin", password = "admin", roles = "ADMIN")
	public void listaComuniWhenUtenteMockIsAuthenticated() throws Exception {
		this.mockMvc.perform(get("/api/comune")).andExpect(status().isOk());
	}

	/**
	 * EndPoint di aggiunta nuovo autore testato con autentificazione
	 * 
	 */

	@Test
	public void addNewProvinciaWhenUtenteIsAnonymous() throws Exception {
		Provincia provincia = new Provincia();
		provincia.setId(1L);
		provincia.setNome("Torino");
		provincia.setRegione("Piemonte");
		provincia.setSigla("To");
		ObjectMapper objectMapper = new ObjectMapper();
		String json = objectMapper.writeValueAsString(provincia);
		MvcResult result = mockMvc.perform(post("/api/provincia").contentType(MediaType.APPLICATION_JSON).content(json))
				.andExpect(status().isUnauthorized()).andReturn();

	}

	/*@Test
	@WithMockUser(username = "admin", password = "admin", roles = "ADMIN")
	public void addNewCliente() throws Exception {
		ObjectMapper objectMapper = new ObjectMapper();
		String json = objectMapper.writeValueAsString(cl1);

		MvcResult result = mockMvc.perform(post("/api/cliente").contentType(MediaType.APPLICATION_JSON).content(json))
				.andExpect(status().isOk()).andReturn();

		JSONObject json_obj = new JSONObject(result.getResponse().getContentAsString());
		assertTrue(json_obj.has("ragioneSociale"));
		assertTrue(json_obj.has("email"));

		assertTrue(json_obj.getString("email").contains("test@test.it"));

	}

	@BeforeEach
	public void initContext() {

		pro1 = new Provincia();
		pro1.setNome("Barletta");
		pro1.setSigla("BAR");
		pro1.setRegione("Puglia");

		pro2 = new Provincia();
		pro2.setNome("Trani");
		pro2.setSigla("TR");
		pro2.setRegione("Puglia");

		com1 = new Comune();
		com1.setNome("Spinazzola");
		com1.setProvincia(pro1);

		com2 = new Comune();
		com2.setNome("Spino");
		com2.setProvincia(pro2);

		ileg = new Indirizzo();
		ileg.setVia("Via le noci");
		ileg.setCivico(4);
		ileg.setCap(12334);
		ileg.setLocalita("noci");
		ileg.setComune(com1);

		iope = new Indirizzo();
		iope.setVia("Via le grotte");
		iope.setCivico(4);
		iope.setCap(12334);
		iope.setLocalita("grotte");
		iope.setComune(com2);

		
		cl1 = new Cliente();
		cl1.setRagioneSociale("Test");
		cl1.setTipoCliente(TipoCliente.PA);
		cl1.setPartitaIva("02412630465");
		cl1.setEmail("test@test.it");
		cl1.setPec("test@pec.it");
		//cl1.setDataInserimento(LocalDate.parse("2020-12-12"));
		//cl1.setDataUltimoContatto(LocalDate.parse("2021-12-12"));
		BigDecimal fattAnn = new BigDecimal(455667788);
		cl1.setFatturatoAnnuale(fattAnn);
		cl1.setTelefono("34567897");
		cl1.setNomeContatto("Mario");
		cl1.setCognomeContatto("Rossi");
		cl1.setTelefonoContatto("2345678");
		cl1.setEmailContatto("m.rossi@mail.com");
		cl1.setIndirizzoSedeLegale(ileg);
		cl1.setIndirizzoSedeOperativa(iope);

	}*/

}
