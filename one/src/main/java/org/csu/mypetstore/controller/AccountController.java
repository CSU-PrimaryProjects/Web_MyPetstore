package org.csu.mypetstore.controller;

import org.csu.mypetstore.domain.Account;
import org.csu.mypetstore.service.AccountService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.bind.annotation.SessionAttributes;

@Controller
@RequestMapping("myAccount")
@SessionAttributes({"account", "myList", "authenticated"})
public class AccountController {
    @Autowired
    private AccountService accountService;

    @GetMapping
    public String editAccountForm(@SessionAttribute("account") Account account , Model model) {
        model.addAttribute("account", account);
        return "account";
    }
}
