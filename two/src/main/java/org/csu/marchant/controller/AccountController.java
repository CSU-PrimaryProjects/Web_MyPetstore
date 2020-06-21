package org.csu.marchant.controller;

import org.csu.marchant.domain.Seller;
import org.csu.marchant.persistence.SellerMapper;
import org.csu.marchant.service.AccountService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.DigestUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("/")
@SessionAttributes({"account","authenticated"})
public class AccountController {
    @Autowired
    private AccountService accountService;

    @RequestMapping("/login")
    public String loginPage(){
        return "login";
    }

    @RequestMapping("/signon")
    public String login(String sellerId, String password, Model model){
//        System.out.println(sellerId);
//        System.out.println(password);
        Seller seller = accountService.getSellerByUsernameAndPassword(sellerId, password);
//        System.out.println(seller.getSellerName());
        if (seller == null){
            String msg = "Invalid username or password.  Signon failed.";
            System.out.println("null");
//            model.addAttribute("msg", msg);
            return "redirect:/login";
        }else{
            seller.setSellerPwd(null);
            boolean authenticated = true;
            model.addAttribute("account", seller);
            model.addAttribute("authenticated", authenticated);
            return "redirect:/index";
        }
    }

    @GetMapping("signoff")
    public String signoff(Model model) {
        Seller loginAccount = new Seller();
        boolean authenticated = false;
        model.addAttribute("account", loginAccount);
        model.addAttribute("authenticated", authenticated);
        return "redirect:/index";
    }

    @RequestMapping("/account")
    public String account(){
//        System.out.println(sellerId);
//        accountService.getSellerBySellerId(sellerId);
        return "account";
    }

    @PostMapping("/account/update/")
    public String update(HttpServletRequest request, Model model){
//        System.out.println(request.getParameter("sellerId"));
//        System.out.println(request.getParameter("sellerName"));
        Seller seller = (Seller) model.getAttribute("account");
        seller.setSellerName(request.getParameter("sellerName"));
        seller.setEmail(request.getParameter("email"));
        seller.setCountry(request.getParameter("country"));
        seller.setCity(request.getParameter("city"));
        seller.setAddress(request.getParameter("address"));
        accountService.updateSeller(seller);
//        model.addAttribute(seller);
//        accountService.updateSeller(seller);
        return "redirect:/account";
    }
}
