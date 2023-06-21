package com.eyc.base.web;

import com.eyc.base.db.Cliente;
import com.eyc.base.models.Producto;
import com.eyc.base.service.CursoService;
import com.eyc.base.service.CommService;
import com.axelor.i18n.I18n;
import com.axelor.inject.Beans;
import com.axelor.meta.schema.actions.ActionView;
import com.axelor.meta.schema.actions.ActionView.ActionViewBuilder;
import com.axelor.rpc.ActionRequest;
import com.axelor.rpc.ActionResponse;
import com.google.common.base.Joiner;
import com.google.inject.servlet.RequestScoped;
import com.google.inject.persist.Transactional;
import java.util.Arrays;
import java.util.List;
import javax.inject.Inject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

@RequestScoped 
public class CursoController {
 
  protected Logger log = LoggerFactory.getLogger(getClass());
  @Inject private CursoService servicio;
  @Inject private CommService servicioExterno;

  public void saludarme(ActionRequest request, ActionResponse response) {

    Cliente cliente = request.getContext().asType(Cliente.class);
    String mensaje = servicio.saludar(cliente);

    log.info("envio saludos a: ${cliente.nombreCompleto}");
 
    response.setInfo(mensaje, "Saludos");
  }

   public void mostrarProducto(ActionRequest request, ActionResponse response) {

    Cliente cliente = request.getContext().asType(Cliente.class);
    Producto producto = servicioExterno.obtenerProducto();
 
    response.setInfo(producto.getDescription(), "Producto");
  }
}
