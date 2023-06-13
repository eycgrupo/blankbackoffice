/*
 * Axelor Business Solutions
 *
 * Copyright (C) 2005-2020 Axelor (<http://axelor.com>).
 *
 * This program is free software: you can redistribute it and/or  modify
 * it under the terms of the GNU Affero General Public License, version 3,
 * as published by the Free Software Foundation.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Affero General Public License for more details.
 *
 * You should have received a copy of the GNU Affero General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
 */
package com.axelor.app;

import com.axelor.contact.db.Contact;
import com.axelor.contact.service.HelloService;
import com.axelor.test.GuiceModules;
import com.axelor.test.GuiceRunner;
import javax.inject.Inject;
import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;

@RunWith(GuiceRunner.class)
@GuiceModules({MyModule.class})
public class ServiceTest {

  @Inject private HelloService service;

  @Test
  public void test() {

    Contact contact = new Contact();
    contact.setFirstName("John");
    contact.setLastName("Smith");

    String said = service.say(contact);
    String hello = service.hello();

    Assert.assertEquals("You are welcome 'John Smith!'", said);
    Assert.assertEquals("Hello world!!!", hello);
  }
}
