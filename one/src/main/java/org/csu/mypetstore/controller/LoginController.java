package org.csu.mypetstore.controller;

import org.apache.commons.codec.binary.Base64;
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

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;


@Controller
@Scope("session")
@RequestMapping("/login")
@SessionAttributes(value = {"account","msg","msg2","onlineAccount"})
public class LoginController {
//    public Account onlineAccount=new Account();
    @Autowired
    private AccountService accountService;

    @GetMapping
    public  String toLogin(){
        return "login";
    }

    @PostMapping("/signin")
    public String login(String username, String password, Model model, HttpServletResponse response, HttpServletRequest request) throws IOException {
        Account account = new Account();
        account.setUsername(username);
        account.setPassword(new String(Base64.encodeBase64(password.getBytes())));

        String validateC = (String) request.getSession().getAttribute("validateCode");
        String veryCode = request.getParameter("veryCode");
        PrintWriter out = response.getWriter();
        if (account.getUsername().equals("")){
            String msg = "The username cannot be empty！";
            model.addAttribute("msg",msg);
            response.sendRedirect("../login");
            return "login";
        }else {
            Account loginAccount=accountService.getAccount(account);
            System.out.println(loginAccount.getPassword());
            System.out.println(account.getPassword());
            if(loginAccount==null){
                String msg = "Wrong username!";
                model.addAttribute("msg",msg);
                response.sendRedirect("../login");
                return "login";
            }else if ("".equals(veryCode)){
                String msg2="VeryCode is empty!";
                model.addAttribute("msg2",msg2);
                response.sendRedirect("../login");
                return "login";
            }else if (!validateC.equals(veryCode)) {
                String msg2="VeryCode is Wrong!";
                model.addAttribute("msg2",msg2);
                response.sendRedirect("../login");
                return "login";
            }else if(false) {
                String msg = "Wrong password!";
                model.addAttribute("msg",msg);
                response.sendRedirect("../login");
                return "login";
            }else{
                    model.addAttribute("account",loginAccount);
//                onlineAccount = loginAccount;
                    response.sendRedirect("../main");
                    return "main";
            }
        }
    }



}
