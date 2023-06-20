package com.eyc.base.service;

import com.axelor.app.AppSettings;
import com.eyc.base.models.Producto;
import javax.ws.rs.client.Client;
import javax.ws.rs.client.ClientBuilder;
import javax.ws.rs.client.Entity;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;

public class CommServiceImpl implements CommService {
  private final AppSettings settings = AppSettings.get();
  private String productosURL = settings.get("application.productos");

  @Override
  public Producto obtenerProducto() {
    final Client clienteApi = ClientBuilder.newClient();

    Producto data  =
        clienteApi
            .target(productosURL).request(MediaType.APPLICATION_JSON)
            .get(Producto.class);

     return data;
  }

}
