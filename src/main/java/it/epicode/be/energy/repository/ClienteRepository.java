package it.epicode.be.energy.repository;

import java.math.BigDecimal;
import java.time.LocalDate;
import java.util.Date;
import java.util.List;
import java.util.Optional;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import it.epicode.be.energy.model.Cliente;

public interface ClienteRepository extends JpaRepository<Cliente, Long> {
	
	List<Cliente> findByIndirizzoSedeLegale(Long id);
	List<Cliente> findByIndirizzoSedeOperativa(Long id);
	
	Page<Optional<Cliente>> findByOrderByRagioneSociale(Pageable pageable);
	
	Page<Optional<Cliente>> findByOrderByFatturatoAnnuale(Pageable pageable);
	
	Page<Optional<Cliente>> findByOrderByDataInserimento(Pageable pageable);
	
	Page<Optional<Cliente>> findByOrderByDataUltimoContatto(Pageable pageable);
	
	Page<Optional<Cliente>> findByOrderByIndirizzoSedeLegaleComuneProvincia(Pageable pageable);
	
	@Query("SELECT c FROM Cliente c WHERE c.fatturatoAnnuale>=:minimo AND c.fatturatoAnnuale<=:massimo")
	Page<Optional<Cliente>> findByFatturatoAnnuale(Pageable pageable, BigDecimal minimo , BigDecimal massimo);
	
	Page<Optional<Cliente>> findByDataInserimento(Pageable pageable, LocalDate dataInserimento);
	
	Page<Optional<Cliente>> findByDataUltimoContatto(Pageable pageable, LocalDate dataUltimoContatto);
	
	@Query("SELECT c FROM Cliente c WHERE c.ragioneSociale LIKE %:ragioneSociale%")
	Page<Optional<Cliente>> findByRagioneSociale(Pageable pageable, String ragioneSociale);
	
	
	
	

}
