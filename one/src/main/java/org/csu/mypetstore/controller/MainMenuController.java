package org.csu.mypetstore.controller;

import org.csu.mypetstore.domain.Account;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@Controller
@RequestMapping("/")
public class MainMenuController {
    @GetMapping("/main")
    public String returnMain(){
        return "main";
    }
    @GetMapping
    public String origin(){

        return "main";
    }
}
