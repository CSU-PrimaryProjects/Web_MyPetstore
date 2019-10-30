package org.csu.mypetstore.web.servlets;

import org.csu.mypetstore.domain.Cart;
import org.csu.mypetstore.domain.Order;
import org.csu.mypetstore.service.OrderService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "ViewOrderServlet")
public class ViewOrderServlet extends HttpServlet {
    private static final String VIEWORDER = "/WEB-INF/jsp/order/ViewOrder.jsp";
    private static final String ERROR = "/WEB-INF/jsp/common/Error.jsp";
    private Order order;
    private Cart cart;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        order = (Order)session.getAttribute("order");
        cart = (Cart)session.getAttribute("cart");

        if(order != null){
            OrderService service = new OrderService();
            service.insertOrder(order);
            session.setAttribute("order",order);

            cart = null;
            session.setAttribute("cart",cart);

            session.setAttribute("message","Thank you, you order has been submitted");
            request.getRequestDispatcher(VIEWORDER).forward(request,response);
        }else{
            session.setAttribute("message","An error occurred processing your order(order was null)");
            request.getRequestDispatcher(ERROR).forward(request,response);
        }
    }
}
