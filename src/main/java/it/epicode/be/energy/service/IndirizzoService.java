package it.epicode.be.energy.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import it.epicode.be.energy.model.Cliente;
import it.epicode.be.energy.model.Indirizzo;
import it.epicode.be.energy.repository.ClienteRepository;
import it.epicode.be.energy.repository.IndirizzoRepository;
import it.epicode.be.energy.security.exceptions.EpicEnergyException;

@Service
public class IndirizzoService {
	
	@Autowired
	IndirizzoRepository indirizzoRepo;
	
	@Autowired
	ClienteRepository clienteRepo;
	
	public Indirizzo save(Indirizzo indirizzo) {
		indirizzoRepo.save(indirizzo);
		return indirizzo;
	}

	public void delete(Long id) {
		Indirizzo i = indirizzoRepo.findById(id).get();
		List<Cliente> listaClienti = clienteRepo.findByIndirizzoSedeLegale(id);
		for(Cliente c : listaClienti) {
			c.setIndirizzoSedeLegale(null);
			clienteRepo.save(c);
		}
		List<Cliente> listaClienti1 = clienteRepo.findByIndirizzoSedeOperativa(id);
		for(Cliente c : listaClienti1) {
			c.setIndirizzoSedeOperativa(null);
			clienteRepo.save(c);
		}
		indirizzoRepo.deleteById(id);
	}

	public Indirizzo update(Long id, Indirizzo indirizzo) {
		Optional<Indirizzo> indirizzoResult = indirizzoRepo.findById(id);
		if (indirizzoResult.isPresent()) {
			Indirizzo update = indirizzoResult.get();
			update.setVia(indirizzo.getVia());
			update.setCivico(indirizzo.getCivico());
			update.setLocalita(indirizzo.getLocalita());
			update.setCap(indirizzo.getCap());
			update.setComune(indirizzo.getComune());
			
			return indirizzoRepo.save(update);
		}else {
		throw new EpicEnergyException("Indirizzo non trovato");
		}
	}

	public Page<Indirizzo> findAll(Pageable pageable) {
		return indirizzoRepo.findAll(pageable);
	}

	public List<Indirizzo> findAll() {
		return indirizzoRepo.findAll();
	}

	public Optional<Indirizzo> findById(Long id) {
		return indirizzoRepo.findById(id);
	}

}
