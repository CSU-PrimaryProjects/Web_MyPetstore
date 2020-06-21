package org.csu.mypetstore;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

@SpringBootTest
class MypetstoreApplicationTests {
    @Autowired
    private org.csu.mypetstore.service.MailService MailService;

    @Test
    public void testSimpleMail() throws Exception {
        MailService.sendSimpleMail("2297242763@qq.com","test simple mail"," hello this is simple mail");
    }

}
