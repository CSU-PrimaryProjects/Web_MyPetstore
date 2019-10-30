package org.csu.mypetstore.web.servlets;

import org.csu.mypetstore.domain.Account;
import org.csu.mypetstore.domain.Cart;
import org.csu.mypetstore.domain.CartItem;
import org.csu.mypetstore.domain.Item;
import org.csu.mypetstore.service.LogService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.swing.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "UpdateCartServlet")
public class UpdateCartServlet extends HttpServlet {
    private static final String VIEW_CART = "/WEB-INF/jsp/cart/Cart.jsp";
    private static final String ERROR = "/WEB-INF/jsp/common/Error.jsp";
    private Cart cart;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        cart = (Cart)session.getAttribute("cart");
        List<CartItem> cartItemList = cart.getCartItemList();

        for (int i=0; i<cartItemList.size();i++){
            CartItem cartItem= cartItemList.get(i);
            String quantity = request.getParameter(cartItem.getItem().getItemId());
            if (Integer.parseInt(quantity)>=1){
                cartItem.setQuantity(Integer.parseInt(quantity));
            }else{
                Item item = cart.removeItemById(cartItem.getItem().getItemId());
                if (item == null){
                    session.setAttribute("message","Attempted to remove null CartItem from Cart");
                    request.getRequestDispatcher(ERROR).forward(request,response);
                }
            }
        }

        //HttpSession session = request.getSession();
        Account account = (Account)session.getAttribute("account");

        if(account != null){
            HttpServletRequest httpRequest= request;
            String strBackUrl = "http://" + request.getServerName() + ":" + request.getServerPort()
                    + httpRequest.getContextPath() + httpRequest.getServletPath() + "?" + (httpRequest.getQueryString());

            LogService logService = new LogService();
            String logInfo = logService.logInfo(" ") + strBackUrl + " 更新购物车商品数量";
            logService.insertLogInfo(account.getUsername(), logInfo);
        }

        request.getRequestDispatcher(VIEW_CART).forward(request,response);
    }
}
