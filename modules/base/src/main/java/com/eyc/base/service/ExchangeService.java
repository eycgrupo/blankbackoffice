package com.eyc.base.service;
import com.eyc.base.models.ExchangeResponse;

public interface ExchangeService {
  ExchangeResponse getExchangeRate(String from, String to, String amount);
} 
  