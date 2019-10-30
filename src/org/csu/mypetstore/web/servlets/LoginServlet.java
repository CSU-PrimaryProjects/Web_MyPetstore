package org.csu.mypetstore.web.servlets;

import org.csu.mypetstore.domain.Account;
import org.csu.mypetstore.service.AccountService;
import org.csu.mypetstore.service.LogService;

import javax.servlet.ServletException;
import javax.servlet.http.*;
import java.io.IOException;
import java.io.PrintWriter;

public class LoginServlet extends HttpServlet {
    private static final String LOGIN = "/WEB-INF/jsp/account/SignonForm.jsp";
    private static final String Main="WEB-INF/jsp/catalog/Main.jsp";
    private int cookiesI=0;
    private String thisURL;
    private String username;
    private String password;
    private String isLogin=new String();
    private String cinImage;
    private int judge=0;
    private String realString;
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        username=request.getParameter("username");
        password=request.getParameter("password");
        isLogin =request.getParameter("isLogin");
        cinImage=request.getParameter("identity");

        System.out.println("The username is:"+username);
        System.out.println("The identity is:"+cinImage);
        HttpSession session=request.getSession();

        int which= (int) Math.floor(Math.random()*6);
        if(which==0)
        {
            session.setAttribute("imageUrl","images/QNMx.png");
            realString="QNMx";
        }else if (which==1)
        {
            session.setAttribute("imageUrl","images/giV6J.jpeg");
            realString="giV6J";
        }else if (which==2)
        {
            session.setAttribute("imageUrl","images/HpZH.jpeg");
            realString="HpZH";
        }else if (which==3)
        {
            session.setAttribute("imageUrl","images/MuY6.png");
            realString="MuY6";
        }else if (which==4)
        {
            session.setAttribute("imageUrl","images/0G5J.png");
            realString="0G5J";
        }else if (which==5)
        {
            session.setAttribute("imageUrl","images/zxAs.png");
            realString="ZXAs";
        }


        if(isLogin!=null)
        {
            if(isLogin.equals("false"))
            {
                Account account=new Account();
                account.setIslogin(false);
                session.setAttribute("account",account);
//                response.setHeader("Refresh", "0;url=/mypetstore/login");
//                request.getRequestDispatcher(Main+"?isLogin=").forward(request,response);
                response.setHeader("Refresh", "0;url=/mypetstore/login");
            }
        }else
        {
            AccountService service=new AccountService();
            if (username==null)
            {
                if(judge==0)
                {
                    request.getRequestDispatcher(LOGIN).forward(request,response);
                }else
                {
                    response.setHeader("Refresh", "0;url=/mypetstore/login");
                }
            } else {
                System.out.println(username);
                System.out.println("password "+password+" "+(username!=null));
                Account account=service.getAccount(username);

                if (account!=null)
                {
                    System.out.println("The on identity is:"+realString);
                    //account.getPassword()!=null&&
                    if (account.getPassword().equals(password))
                    {
                         if (!(cinImage.length()==4))
                        {
                            session.setAttribute("account", account);
                            response.getWriter().print("<script language='javascript' charset='UTF-8'>alert('Identifying code error!');</script>");
                            response.setHeader("Refresh", "0;url=/mypetstore/login");

                        }else
                         {
//                    response.setHeader("Refresh", "0;url=/mypetstore/main");
                             account.setIslogin(true);
                             session.setAttribute("account",account);
                             response.setHeader("Refresh", "0;url=/mypetstore/main?isLogin=true");
//                        request.getRequestDispatcher(Main+"?isLogin=true").forward(request,response);
                        if(account != null){
                                HttpServletRequest httpRequest= request;
                                String strBackUrl = "http://" + request.getServerName() + ":" + request.getServerPort()
                                        + httpRequest.getContextPath() + httpRequest.getServletPath() + "?" + (httpRequest.getQueryString());

                                LogService logService = new LogService();
                                String logInfo = logService.logInfo(" ") + strBackUrl + " 用户登录";
                                logService.insertLogInfo(account.getUsername(), logInfo);
                            }
                         }
                    }
                    else if(!account.getPassword().equals(password)&&password!=null)
                    {
                        response.getWriter().print("<script language='javascript' charset='UTF-8'>alert('Password error!');</script>");
                        response.setHeader("Refresh", "0;url="+thisURL);
                    }else if (password==null)
                    {
                        judge=1;
                        response.getWriter().print("<script language='javascript' charset='UTF-8'>alert('The password is empty!');</script>");
                        response.setHeader("Refresh", "0;url=/mypetstore/login");
                    }
                }else
                {
                    response.getWriter().print("<script language='javascript' charset='UTF-8'>alert('user is not exist!');</script>");
                    System.out.println("No !");
                    response.setHeader("Refresh", "0;url=/mypetstore/login");
                    judge=0;
                }
            }

        }

    }
}
