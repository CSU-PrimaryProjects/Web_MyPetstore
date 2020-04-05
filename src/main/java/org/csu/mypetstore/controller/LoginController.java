package org.csu.mypetstore.controller;

import org.csu.mypetstore.domain.Account;
import org.csu.mypetstore.service.AccountService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import javax.annotation.PostConstruct;
import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;
import java.io.IOException;


@Controller
@Scope("session")
@RequestMapping("/login")
@SessionAttributes(value = {"account","msg","onlineAccount"})
public class LoginController {
    public Account onlineAccount=new Account();
    @Autowired
    private AccountService accountService;

    @GetMapping
    public  String toLogin(){
        return "login";
    }

    @PostMapping("/signin")
    public String login(String username,String password, Model model, HttpServletResponse response) throws IOException {

        Account account = new Account();
        account.setUsername(username);
        account.setPassword(password);
        if (account.getUsername().equals("")){
            String msg = "The username cannot be empty！";
            model.addAttribute("msg",msg);
            response.sendRedirect("../login");
            return "login";
        }else {
            Account loginAccount=accountService.getAccount(account);

            if(loginAccount==null){
                String msg = "Wrong username or password!";
                model.addAttribute("msg",msg);
                response.sendRedirect("../login");
                return "login";
            }else {
                model.addAttribute("account",loginAccount);
                onlineAccount = loginAccount;
                response.sendRedirect("../main");
                return "main";
            }
        }
    }
}
