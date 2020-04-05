package org.csu.mypetstore.controller;

import org.csu.mypetstore.domain.Account;
import org.csu.mypetstore.service.AccountService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;


@Controller
@Scope("session")
@RequestMapping("/*")
@SessionAttributes(value = {"isOnline"})
public class OnlineController {
    @Autowired
    AccountService accountService;

    @GetMapping
    public String isOnline(@SessionAttribute Account onlineAccount, Model model){
        Account judgeAccount=accountService.getAccount(onlineAccount.getUsername());
        if(judgeAccount == null)
        {
            model.addAttribute("isOnline",false);
            System.out.println(false);
        }
        else
        {
            model.addAttribute("isOnline",true);
            System.out.println(true);
        }
        return "common/header";
    }
}
