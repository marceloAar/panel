package com.mar.panel.services;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;

import com.mar.panel.models.Usuario;
import com.mar.panel.repositories.UsuarioRepo;

@Service
public class UsuarioService {	

	private final UsuarioRepo usuarioRepo;
	    
	public UsuarioService(UsuarioRepo usuarioRepo) {
		this.usuarioRepo = usuarioRepo;
	}
	  
	public List<Usuario> allUsuarios() {
		return usuarioRepo.findAll();
	}
	  
	public Usuario crearUsuario(Usuario b) {
	        return usuarioRepo.save(b);
	}
	   
	public Usuario buscarUsuario(Long id) {
		Optional<Usuario> optional = usuarioRepo.findById(id);
	    if(optional.isPresent()) {
	    	return optional.get();
	    } else {
	    	return null;
	    }
	}	

}
