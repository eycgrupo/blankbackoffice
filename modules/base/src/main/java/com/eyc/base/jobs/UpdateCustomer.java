package com.eyc.base.jobs;

import org.quartz.Job;
import org.quartz.JobDataMap;
import org.quartz.JobDetail;
import org.quartz.JobExecutionContext;
import org.quartz.JobExecutionException;
import com.eyc.base.db.Customer;
import com.eyc.base.db.repo.CustomerRepository;
import com.google.inject.Inject;
import com.google.inject.persist.Transactional;
import java.util.List;
import java.math.BigDecimal;

 public class UpdateCustomer implements Job {
  @Inject private CustomerRepository customerRepo;

  @Override
  @Transactional(rollbackOn = {Exception.class})
  public void execute(JobExecutionContext context) throws JobExecutionException {
    JobDetail detail = context.getJobDetail();
    JobDataMap data = context.getJobDetail().getJobDataMap();
    List<? extends Customer> customers;
    BigDecimal totalIncrement = new BigDecimal("1.0");

    customers = customerRepo.all().fetch();

    String name = detail.getKey().getName();
    String desc = detail.getDescription();

    System.err.println("Job was fired up: " + name + " (" + desc + ")");
  
    for (Customer readCustomer: customers) {
       readCustomer.setCurrentBalance(readCustomer.getCurrentBalance().add(totalIncrement));
       customerRepo.save(readCustomer);
       System.err.println(readCustomer.getFullName());
       System.err.println(readCustomer.getCurrentBalance());
    }
   
  }
}