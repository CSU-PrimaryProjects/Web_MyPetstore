package org.csu.mypetstore.web.servlets;

import org.csu.mypetstore.domain.Account;
import org.csu.mypetstore.domain.Item;
import org.csu.mypetstore.domain.Product;
import org.csu.mypetstore.service.CatalogService;
import org.csu.mypetstore.service.LogService;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

public class ViewItemServlet extends HttpServlet {
    private static final String VIEW_ITEM="WEB-INF/jsp/catalog/Item.jsp";
    private String itemId;
    private String productId;
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        itemId=request.getParameter("itemId");
        productId=request.getParameter("productId");
        CatalogService service=new CatalogService();
        Item item =service.getItem(itemId);
        Product product=service.getProduct(productId);

        HttpSession session=request.getSession();
        session.setAttribute("item",item);
        session.setAttribute("product",product);

        service.insertViewItem( itemId,item.getProduct().getName());
        Account account = (Account)session.getAttribute("account");

        if(account != null){
            HttpServletRequest httpRequest= request;
            String strBackUrl = "http://" + request.getServerName() + ":" + request.getServerPort()
                    + httpRequest.getContextPath() + httpRequest.getServletPath() + "?" + (httpRequest.getQueryString());

            LogService logService = new LogService();
            String logInfo = logService.logInfo(" ") + strBackUrl + " 查看具体商品 " + item;
            logService.insertLogInfo(account.getUsername(), logInfo);
        }

        request.getRequestDispatcher(VIEW_ITEM).forward(request,response);
    }
}
