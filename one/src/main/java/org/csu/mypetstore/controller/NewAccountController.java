package org.csu.mypetstore.controller;

import org.apache.commons.codec.binary.Base64;
import org.csu.mypetstore.domain.Account;
import org.csu.mypetstore.service.AccountService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@Controller
@Scope("session")
@RequestMapping("/newAccount")
@SessionAttributes(value = {"account"})
public class NewAccountController {
    @Autowired
    private AccountService accountService;

    @GetMapping("")
    public String newAccount(){
        return "newaccount";
    }

    @RequestMapping("/register")
    public String register(Account account, Model model, HttpServletResponse response) throws IOException {
        account.setPassword(new String(Base64.encodeBase64(account.getPassword().getBytes(), true)));
        accountService.insertAccount(account);
        accountService.insertSignon(account);
        accountService.insertProfile(account);
        model.addAttribute("account",account);
        response.sendRedirect("../login");
        return "login";
    }
}
