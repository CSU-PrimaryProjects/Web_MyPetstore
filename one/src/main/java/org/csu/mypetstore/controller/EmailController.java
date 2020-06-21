package org.csu.mypetstore.controller;

import org.csu.mypetstore.domain.Account;
import org.csu.mypetstore.service.AccountService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Random;

@Controller
@Scope("session")
@RequestMapping("/emailin")
@SessionAttributes(value = {"code","msg","onlineAccount","account"})
public class EmailController {
    @Autowired
    AccountService accountService;

    @Autowired
    private org.csu.mypetstore.service.MailService MailService;

    @GetMapping
    public  String toEmailin(HttpServletResponse response) throws IOException {
        return "emailin";
    }

    @RequestMapping("/getcode")
    public void grtCode(Model model, HttpServletResponse response, HttpServletRequest request) throws IOException {


        String code=new String();
        String email = request.getParameter("c");
        System.out.println(email);
        Random random=new Random();
        int intCode=random.nextInt(8999)+1000;
        code=Integer.toString(intCode);
        model.addAttribute("code",code);
        try{
            MailService.sendSimpleMail(email,"登录验证码",code);
        }catch (Exception e){
            System.out.println("失败！");
        }
    }

    @PostMapping("/signin")
    public String inWithEmail( String inputCode,Model model, HttpServletResponse response, HttpServletRequest request) throws IOException {

        String code = (String) request.getSession().getAttribute("code");
        System.out.println("code is"+code);
        System.out.println(inputCode);
        if (inputCode.equals(code)){
            Account account = new Account();
            account=accountService.getAccount("suancaiyu1806");
            System.out.println(account.getUsername());
            model.addAttribute("account",account);
            model.addAttribute("onlineAccount",account);
            response.sendRedirect("../main");
            return "main";
        }else {
            String msg = "The code in Wrong！";
            model.addAttribute("msg",msg);
            response.sendRedirect("../emailin");
            return "emailin";
        }
    }
}
