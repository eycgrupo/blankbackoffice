package com.eyc.base.db.repo;
 
import com.eyc.base.db.Invoice;
import com.eyc.base.db.Customer;
import com.axelor.i18n.I18n;
import javax.persistence.PostPersist;
 
 public class InvoiceListener {
   
  @PostPersist
  private void updateTheBalance(Invoice invoice) {
    Customer theCustomer = invoice.getCustomer();
    theCustomer.setCurrentBalance(theCustomer.getCurrentBalance().add(invoice.getInvoiceTotal()));
  }
} 
