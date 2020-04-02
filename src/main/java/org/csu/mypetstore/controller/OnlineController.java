package org.csu.mypetstore.controller;

import org.csu.mypetstore.domain.Account;
import org.csu.mypetstore.service.AccountService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

@Controller
@RequestMapping("/*")
@SessionAttributes(value = {"isOnline"})
public class OnlineController {
    @Autowired
    AccountService accountService;

    @PostMapping
    public String isOnline(String username,Model model){
        Account account=accountService.getAccount(username);
        if(account == null)
        {
            model.addAttribute("isOnline",false);
        }
        else
        {
            model.addAttribute("isOnline",true);
        }
        return "common/header";
    }
}
