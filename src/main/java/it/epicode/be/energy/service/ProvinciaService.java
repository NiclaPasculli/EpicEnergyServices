package it.epicode.be.energy.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import it.epicode.be.energy.model.Cliente;
import it.epicode.be.energy.model.Comune;
import it.epicode.be.energy.model.Provincia;
import it.epicode.be.energy.model.boot.Paged;
import it.epicode.be.energy.model.boot.Paging;
import it.epicode.be.energy.repository.ComuneRepository;
import it.epicode.be.energy.repository.ProvinciaRepository;
import it.epicode.be.energy.security.exceptions.EpicEnergyException;


@Service
public class ProvinciaService {
	
	@Autowired
	ProvinciaRepository provinciaRepo;
	
	@Autowired
	ComuneRepository comuneRepo;
	
	public Optional<Provincia> findById(Long id) {
		return provinciaRepo.findById(id);
	}
	

	
	
	public Provincia findByNome(String nome) {
		return provinciaRepo.findByNome(nome);
	}
	
	public Provincia save(Provincia provincia) {
		provinciaRepo.save(provincia);
		return provincia;
	}

	public void delete(Long id) {
		Provincia p = provinciaRepo.findById(id).get();
		List<Comune> listaComuni = comuneRepo.findByProvinciaId(id);
	for(Comune c : listaComuni) {
		c.setProvincia(null);
		comuneRepo.save(c);
	}
		provinciaRepo.deleteById(id);
	}

	public Provincia update(Long id, Provincia provincia) {
		Optional<Provincia> provinciaResult = provinciaRepo.findById(id);
		if (provinciaResult.isPresent()) {
			Provincia update = provinciaResult.get();
			update.setNome(provincia.getNome());
			update.setSigla(provincia.getSigla());
			update.setRegione(provincia.getRegione());
			//update.setComuni(provincia.getComuni());
			
			return provinciaRepo.save(update);
		}else {
		throw new EpicEnergyException("Provincia non trovata");
		}
	}

	public Page<Provincia> findAll(Pageable pageable) {
		return provinciaRepo.findAll(pageable);
	}

	public List<Provincia> findAll() {
		return provinciaRepo.findAll();
	}
	
	public Paged<Provincia> getPage(int pageNumber, int size){
		 PageRequest request = PageRequest.of(pageNumber - 1, size);
	        Page<Provincia> provPage = provinciaRepo.findAll(request);
	        return new Paged<>(provPage, Paging.of(provPage.getTotalPages(), pageNumber, size));
	    }


	

}
