package com.eyc.base.service;
import com.eyc.base.models.ExchangeResponse;

public interface ExchangeService {
  ExchangeResponse obtenerTasaCambio(String from, String to, String amount);
} 
 