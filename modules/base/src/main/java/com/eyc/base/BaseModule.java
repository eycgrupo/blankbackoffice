package com.eyc.base;

import com.axelor.app.AxelorModule;
import com.eyc.base.service.ExchangeService;
import com.eyc.base.service.ExchangeServiceImpl;

public class BaseModule extends AxelorModule {

  @Override
  protected void configure() {
    bind(ExchangeService.class).to(ExchangeServiceImpl.class);
  } 
}