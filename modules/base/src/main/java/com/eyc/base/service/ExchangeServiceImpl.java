package com.eyc.base.service;
import com.eyc.base.models.ExchangeResponse;
import com.axelor.app.AppSettings;
import javax.ws.rs.client.Client;
import javax.ws.rs.client.ClientBuilder;
import javax.ws.rs.core.MediaType;
 
public class ExchangeServiceImpl implements ExchangeService {
    private final AppSettings settings = AppSettings.get();
    private String exChangeURL = settings.get("application.exchangeRateUrl");
    private String exChangeApiKey = settings.get("application.exchangeRateApiKey");
 
  @Override
  public ExchangeResponse getExchangeRate(String from, String to, String amount) {
   
    final Client clientAppApi = ClientBuilder.newClient();
    
    final String finalURL = exChangeURL + "?access_key=" + exChangeApiKey + 
          "&from=" + from + "&to=" + to + "&amount=" + amount;
             
    ExchangeResponse data  =
        clientAppApi
            .target(finalURL).request(MediaType.APPLICATION_JSON)
            .get(ExchangeResponse.class);
    return data;
   }
}