package com.eyc.base.db.repo;
 
import com.eyc.base.db.Pago;
import com.eyc.base.db.Cliente;
import com.axelor.i18n.I18n;
import javax.persistence.PostPersist;
 
 public class PagoListener {
   
  @PostPersist
  private void pluto(Pago pago) {

    Cliente cliente = pago.getCliente();
    cliente.setSaldo(cliente.getSaldo().subtract(pago.getMonto()));

  }
} 