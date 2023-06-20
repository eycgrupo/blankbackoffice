package com.eyc.base;
import com.axelor.meta.CallMethod;
import java.io.*;

public class Demo {
 @CallMethod
  public void saludar(String nombreCliente) {

    System.out.println("llamo a " + nombreCliente);
   }
}