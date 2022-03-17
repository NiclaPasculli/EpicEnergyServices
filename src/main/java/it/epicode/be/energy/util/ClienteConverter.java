package it.epicode.be.energy.util;

import org.springframework.stereotype.Component;

import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.type.TypeFactory;

import it.epicode.be.energy.model.Cliente;
import it.epicode.be.energy.service.ClienteService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.convert.converter.Converter;

@Component
public class ClienteConverter implements Converter<Long, Cliente> {
	
	@Autowired
	ClienteService clienteService;

	@Override
	public Cliente convert(Long id) {
		
		return clienteService.findById(id).get();
	}

	

	

}
