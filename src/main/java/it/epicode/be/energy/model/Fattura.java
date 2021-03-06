package it.epicode.be.energy.model;


import java.math.BigDecimal;
import java.time.LocalDate;
import java.util.Date;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
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
public class Fattura {
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long id;
	@NotEmpty(message = "specificare l'anno")
	private String anno;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private LocalDate data;
	@NotNull
	private BigDecimal importo;
	@NotNull
	private Integer numero;
	
	@ManyToOne
	@JsonIdentityInfo(generator = ObjectIdGenerators.PropertyGenerator.class, property = "id")
	private Cliente cliente;
	
	@ManyToOne
	@JsonIdentityInfo(generator = ObjectIdGenerators.PropertyGenerator.class, property = "id")
	private StatoFattura statoFattura;

}
