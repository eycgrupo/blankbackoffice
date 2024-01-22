package com.eyc.base.db.repo;
 
import com.eyc.base.db.Payment;
import com.eyc.base.db.Customer;
import com.axelor.i18n.I18n;
import javax.persistence.PostPersist;
 
 public class PaymentListener {
   
  @PostPersist
  private void pluto(Payment payment) {

    Customer customer = payment.getCustomer();
    customer.setCurrentBalance(customer.getCurrentBalance().subtract(payment.getTotal()));

  }
} 