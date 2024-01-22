package com.eyc.base.db.repo;
 
import com.eyc.base.db.Invoice;
import com.eyc.base.db.Customer;
import com.eyc.base.db.InvoiceDetail;
import javax.persistence.PostPersist;
import com.axelor.i18n.I18n;
import java.util.List;
import java.math.BigDecimal; 
import java.util.Objects;
 
 public class InvoiceListener {
   
  @PostPersist
  private void updateTheBalance(Invoice invoice) {
    Customer theCustomer = invoice.getCustomer();
    List<InvoiceDetail> invoiceDetail  = invoice.getInvoiceItems();
    BigDecimal totalDetail = new BigDecimal("0.0");

    for (int i = 0; i < invoiceDetail.size(); i++) {
     totalDetail = totalDetail.add(invoiceDetail.get(i).getTotal());
    }
    
    theCustomer.setCurrentBalance(theCustomer.getCurrentBalance().add(totalDetail));
  }
} 
