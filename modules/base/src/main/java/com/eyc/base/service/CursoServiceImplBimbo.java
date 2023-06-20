package com.eyc.base.service;

import com.eyc.base.db.Cliente;
public class CursoServiceImplBimbo implements CursoService {

  @Override
  public String saludar(Cliente cliente) {
    return String.format("Hola desde Bimbo %s!", cliente.getNombreCompleto());
  }
}
