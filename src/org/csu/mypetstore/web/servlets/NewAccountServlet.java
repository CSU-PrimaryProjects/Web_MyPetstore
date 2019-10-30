package org.csu.mypetstore.web.servlets;

import org.csu.mypetstore.domain.Account;
import org.csu.mypetstore.service.AccountService;
import org.csu.mypetstore.service.LogService;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class NewAccountServlet extends HttpServlet {
    private static final String NEW_ACCOUNT = "WEB-INF/jsp/account/NewAccountForm.jsp";
    private static final String LOGIN = "/WEB-INF/jsp/account/SignonForm.jsp";
    Account account=new Account();
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        account.setUsername(request.getParameter("username"));
        account.setPassword(request.getParameter("password"));
        account.setFirstName(request.getParameter("firstName"));
        account.setEmail(request.getParameter("email"));
        account.setPhone(request.getParameter("phone"));
        account.setAddress1(request.getParameter("address1"));
        account.setAddress2(request.getParameter("address2"));
        account.setCity(request.getParameter("city"));
        account.setState(request.getParameter("state"));
        account.setZip(request.getParameter("zip"));
        account.setCountry(request.getParameter("country"));
        account.setLanguagePreference(request.getParameter("account.languagePreference"));
        account.setFavouriteCategoryId(request.getParameter("account.favouriteCategoryId"));
        account.setListOption(request.getParameter("account.listOption"));
        account.setBannerName(request.getParameter("account.bannerOption"));

        AccountService accountService=new AccountService();
        accountService.insertAccount(account);
        accountService.updateAccount(account);
        if(account.getUsername()!=null)
        {
            request.getRequestDispatcher(LOGIN).forward(request,response);
            accountService = new AccountService();
            accountService.insertAccount(account);

            if(account!= null){
                HttpServletRequest httpRequest= request;
                String strBackUrl = "http://" + request.getServerName() + ":" + request.getServerPort()
                        + httpRequest.getContextPath() + httpRequest.getServletPath() + "?" + (httpRequest.getQueryString());

                LogService logService = new LogService();
                String logInfo = logService.logInfo(" ") + strBackUrl + " 注册新账号";
                logService.insertLogInfo(account.getUsername(), logInfo);
            }
        }
            else
            request.getRequestDispatcher(NEW_ACCOUNT).forward(request,response);

    }
}
