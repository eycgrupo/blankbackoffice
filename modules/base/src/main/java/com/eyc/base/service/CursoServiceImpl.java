package com.eyc.base.service;

import com.eyc.base.db.Cliente;
 
public class CursoServiceImpl implements CursoService {

  @Override
  public String saludar(Cliente cliente) {
    return String.format("Hola %s!", cliente.getNombreCompleto());
  }
}
