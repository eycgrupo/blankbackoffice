package com.eyc.base.db.repo;

import com.eyc.base.db.Pago;
import com.axelor.i18n.I18n;
import javax.persistence.PostPersist;

public class PagoListener {
  @PostPersist
  private void pluto(Pago pago) {
     System.out.println("Pago guardado");
  }
} 