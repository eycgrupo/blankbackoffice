package com.eyc.base.service;
import com.eyc.base.models.ExchangeResponse;
import com.axelor.app.AppSettings;
import com.eyc.base.models.Producto;
import javax.ws.rs.client.Client;
import javax.ws.rs.client.ClientBuilder;
import javax.ws.rs.client.Entity;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;
 
public class ExchangeServiceImpl implements ExchangeService {
    private final AppSettings settings = AppSettings.get();
    private String tasaDeCambioURL = settings.get("application.exchangeRate");
    private String tasaDeCambioApiKey = settings.get("application.exchangeRateApiKey");

  @Override
  public ExchangeResponse obtenerTasaCambio(String from, String to, String amount) {
   
    final Client clienteApi = ClientBuilder.newClient();
    final String finalURL = tasaDeCambioURL + "?access_key=" + tasaDeCambioApiKey + 
          "&from=" + from + "&to=" + to + "&amount=" + amount;
             
    ExchangeResponse data  =
        clienteApi
            .target(finalURL).request(MediaType.APPLICATION_JSON)
            .get(ExchangeResponse.class);
    return data;
   }
}
