package com.axelor.contact;

import com.axelor.app.AxelorModule;
import com.eyc.base.service.CursoService;
import com.eyc.base.service.CursoServiceImpl;

public class BaseModule extends AxelorModule {

  @Override
  protected void configure() {
    bind(CursoService.class).to(CursoServiceImpl.class);
  }
}
