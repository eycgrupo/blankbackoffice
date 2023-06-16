package com.eyc.base.db.repo;

import com.eyc.base.db.Pago;
import com.axelor.i18n.I18n;
import javax.persistence.PostUpdate;

public class PagoListener {
  @PostPersist
  @PostUpdate
  private void onPostPersistOrUpdate(Pago pago) {
    System.out.println("Pago guardado");
  }
} 