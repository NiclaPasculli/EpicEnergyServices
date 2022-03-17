package it.epicode.be.energy.model;



import java.math.BigDecimal;
import java.time.LocalDate;
import java.util.Date;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.validation.constraints.Email;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;

import org.springframework.format.annotation.DateTimeFormat;

import com.fasterxml.jackson.annotation.JsonIdentityInfo;
import com.fasterxml.jackson.annotation.ObjectIdGenerators;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@AllArgsConstructor
@Data
@Entity
public class Cliente {
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long id;
	@NotEmpty(message = "specificare la ragione sociale")
	private String ragioneSociale;
	@Enumerated(EnumType.STRING)
	private TipoCliente tipoCliente;
	@NotEmpty(message = "specificare la Partita Iva")
	private String partitaIva;
	@Email
	private String email;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private LocalDate dataInserimento;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private LocalDate dataUltimoContatto;
	@NotNull
	private BigDecimal fatturatoAnnuale;
	@Email
	private String pec;
	@NotEmpty(message = "specificare il numero telefono")
	private String telefono;
	@Email
	private String emailContatto;
	@NotEmpty(message = "specificare il nome Contatto")
	private String nomeContatto;
	@NotEmpty(message = "specificare il cognome contatto")
	private String cognomeContatto;
	@NotEmpty(message = "specificare il numero telefono del contatto")
	private String telefonoContatto;
	
	@OneToOne
	@JsonIdentityInfo(generator = ObjectIdGenerators.PropertyGenerator.class, property = "id")
	private Indirizzo indirizzoSedeLegale;
	
	@OneToOne
	@JsonIdentityInfo(generator = ObjectIdGenerators.PropertyGenerator.class, property = "id")
	private Indirizzo indirizzoSedeOperativa;
	
	
	
	/*@OneToMany(mappedBy = "cliente")// cascade = CascadeType.REMOVE)//(mappedBy = "cliente")
	@JsonIdentityInfo(generator = ObjectIdGenerators.PropertyGenerator.class, property = "id")
	private List<Fattura> fatture;*/
	
	/*public String formattaIndirizzo() {
		return indirizzoSedeLegale.getLocalita()+"-"+indirizzoSedeLegale.getVia();
	}*/

	
	

}
