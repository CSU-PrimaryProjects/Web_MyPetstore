package org.csu.mypetstore.web.servlets;

import org.csu.mypetstore.domain.Account;
import org.csu.mypetstore.service.AccountService;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

public class ViewAccountServlet extends HttpServlet {

    private static final String VIEW_ACCOUNT="/WEB-INF/jsp/account/IncludeAccountFields.jsp";

    private String username;
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        username=request.getParameter("username");
        AccountService service=new AccountService();

        Account account=service.getAccount(username);
        account.setIslogin(true);
        System.out.println(account.getAddress1()+"kkkkkkyukk");

        HttpSession session=request.getSession();
        session.setAttribute("account",account);

        request.getRequestDispatcher(VIEW_ACCOUNT).forward(request,response);
    }
}
