package com.eyc.base.web;

import com.eyc.base.db.Payment;
import com.eyc.base.db.Currency;
import com.eyc.base.models.ExchangeResponse;

import com.eyc.base.service.ExchangeService;
import com.axelor.i18n.I18n;
import com.axelor.inject.Beans;
import com.axelor.meta.schema.actions.ActionView;
import com.axelor.meta.schema.actions.ActionView.ActionViewBuilder;
import com.axelor.rpc.ActionRequest;
import com.axelor.rpc.ActionResponse;
import com.axelor.app.AppSettings;
import com.google.common.base.Joiner;
import com.google.inject.servlet.RequestScoped;
import com.google.inject.persist.Transactional;
import java.util.Arrays;
import java.util.List;
import javax.inject.Inject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import java.math.BigDecimal;


@RequestScoped 
public class TrainingController {
 
  protected Logger log = LoggerFactory.getLogger(getClass());
  private final AppSettings settings = AppSettings.get();
  private String defaultCurrency = settings.get("application.defaultCurrency");

  @Inject private ExchangeService exchangeService;
 
  public void verifyExchangeRate(ActionRequest request, ActionResponse response) {

    Payment payment = request.getContext().asType(Payment.class);
    Currency currency = payment.getCurrency();

    log.info("We are converting from {}", defaultCurrency);

    if (payment.getOriginalAmount().compareTo(BigDecimal.ZERO) == 0) {
            response.setValue("total", new BigDecimal("0"));
    } else {
        if (defaultCurrency.equals(currency.getCode())) {
            response.setValue("total", payment.getOriginalAmount());
            response.setAlert("This is to alert you that no conversion was made.", "Conversion Warning");

        } else {
        ExchangeResponse xchangeResp = exchangeService.getExchangeRate(
          currency.getCode(),defaultCurrency, payment.getOriginalAmount().toString());
          response.setValue("total", xchangeResp.getResult());

          response.setNotify("Currency conversion was completed succesfully!", "Succesful Operation");
        }
    }
   }
}