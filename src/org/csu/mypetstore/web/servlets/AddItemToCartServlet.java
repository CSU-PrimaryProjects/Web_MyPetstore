package org.csu.mypetstore.web.servlets;

import org.csu.mypetstore.domain.Account;
import org.csu.mypetstore.domain.Cart;
import org.csu.mypetstore.domain.Item;
import org.csu.mypetstore.service.CatalogService;
import org.csu.mypetstore.service.LogService;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

public class AddItemToCartServlet extends HttpServlet {

    private static final String VIEW_CART = "/WEB-INF/jsp/cart/Cart.jsp";
    private String username;
    private String workingItemId;
    private String removeCartItemId;
    private Cart cart;

    private CatalogService catalogService;
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        username=request.getParameter("username");
        workingItemId=request.getParameter("workingitemId");
        removeCartItemId=request.getParameter("removeCartItemId");
        Account account;
        //从对话中，获取购物车
        HttpSession session = request.getSession();
        cart = (Cart)session.getAttribute("cart");
        account = (Account)session.getAttribute("account");
        catalogService=new CatalogService();

        if (cart==null)
        {
            if (account!=null)
                cart=catalogService.getCarts(account.getUsername());
            else
                cart=new Cart();
        }

        if(cart.containsItemId(workingItemId))
        {
            cart.incrementQuantityByItemId(workingItemId);
        }
        else
        {
            boolean isInStock=catalogService.isItemInStock(workingItemId);
            Item item=catalogService.getItem(workingItemId);
            cart.addItem(item,isInStock);


            if(account!= null){
                HttpServletRequest httpRequest= request;
                String strBackUrl = "http://" + request.getServerName() + ":" + request.getServerPort()
                        + httpRequest.getContextPath() + httpRequest.getServletPath() + "?" + (httpRequest.getQueryString());

                LogService logService = new LogService();
                String logInfo = logService.logInfo(" ") + strBackUrl + " 添加物品 " + item + " 到购物车";
                logService.insertLogInfo(account.getUsername(), logInfo);
                username=account.getUsername();
                catalogService.insertCarts(username,item.getItemId(),item.getProduct().getProductId(),1,item.getListPrice());
            }
        }

        if(cart.containsItemId(removeCartItemId))
        {
//            catalogService=new CatalogService();
//            Item item=cart.removeItemById(removeCartItemId);
//            boolean isInStock=catalogService.isItemInStock(removeCartItemId);
//            cart.addItem(item,isInStock);
            cart.removeItemById(removeCartItemId);

        }

        session.setAttribute("cart",cart);

        request.getRequestDispatcher(VIEW_CART).forward(request,response);
    }
}
