package org.csu.mypetstore.web.servlets;

import org.csu.mypetstore.domain.Account;
import org.csu.mypetstore.domain.Cart;
import org.csu.mypetstore.domain.Order;
import org.csu.mypetstore.service.LogService;

import java.util.List;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "NewOrderFormServlet")
public class NewOrderFormServlet extends HttpServlet {
    private static final String VIEW_NEWORDER = "/WEB-INF/jsp/order/NewOrderForm.jsp";
    private static final String LOGIN = "/WEB-INF/jsp/account/SignonForm.jsp";
    private Account account;
    private Cart cart;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        account = (Account)session.getAttribute("account");
        cart = (Cart)session.getAttribute("cart");
        if (account!=null){
            if (cart!=null){
                List<String> creditCardTypes = new ArrayList<String>();
                creditCardTypes.add("Visa");
                creditCardTypes.add("MasterCard");
                creditCardTypes.add("American Express");
                session.setAttribute("creditCardTypes",creditCardTypes);

                Order order = new Order();
                order.initOrder(account,cart);
                session.setAttribute("order",order);
                Account account = (Account)session.getAttribute("account");

                if(account != null){
                    HttpServletRequest httpRequest= request;
                    String strBackUrl = "http://" + request.getServerName() + ":" + request.getServerPort()
                            + httpRequest.getContextPath() + httpRequest.getServletPath() + "?" + (httpRequest.getQueryString());

                    LogService logService = new LogService();
                    String logInfo = logService.logInfo(" ") + strBackUrl + " 跳转到新订单页面";
                    logService.insertLogInfo(account.getUsername(), logInfo);
                }
                request.getRequestDispatcher(VIEW_NEWORDER).forward(request,response);
            }
        }else {
            if(account != null){
                HttpServletRequest httpRequest= request;
                String strBackUrl = "http://" + request.getServerName() + ":" + request.getServerPort()
                        + httpRequest.getContextPath() + httpRequest.getServletPath() + "?" + (httpRequest.getQueryString());

                LogService logService = new LogService();
                String logInfo = logService.logInfo(" ") + strBackUrl + " 生成订单页面信息错误";
                logService.insertLogInfo(account.getUsername(), logInfo);
            }
            response.getWriter().print("<script language='javascript' charset='UTF-8'>alert('You are not login in! Please login in this store!');</script>");
            request.getRequestDispatcher(LOGIN).forward(request, response);
        }
    }
}
