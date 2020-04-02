package org.csu.mypetstore.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value = {"/main","/index","/"})
public class MainMenuController {
    @GetMapping
    public String returnMain(){
        return "main";
    }
}
