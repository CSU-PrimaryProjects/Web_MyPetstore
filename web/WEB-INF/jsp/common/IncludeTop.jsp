<%--
  Created by IntelliJ IDEA.
  User: SuanCaiyu
  Date: 2019-10-02
  Time: 19:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
    <link rel="StyleSheet" href="css/jpetstore.css" type="text/css" media="screen" />
<%--    <link rel="StyleSheet" href="css/spectre.css" type="text/css" media="screen" />--%>
<%--    <link rel="StyleSheet" href="css/spectre-exp.css" type="text/css" media="screen" />--%>
<%--    <link rel="StyleSheet" href="css/spectre-icons.css" type="text/css" media="screen" />--%>
    <link rel="StyleSheet" href="css/searchProduct.css" type="text/css" media="screen" />
    <link rel="StyleSheet" href="css/mouseEventInform.css" type="text/css" media="screen" />
    <meta name="generator" content="HTML Tidy for Linux/x86 (vers 1st November 2002), see www.w3.org" />
    <title>MyPetStore Demo</title>
    <meta content="text/html; charset=windows-1252" http-equiv="Content-Type" />
    <meta http-equiv="Cache-Control" content="max-age=0" />
    <meta http-equiv="Cache-Control" content="no-cache" />
    <meta http-equiv="expires" content="0" />
    <meta http-equiv="Expires" content="Tue, 01 Jan 1980 1:00:00 GMT" />
    <meta http-equiv="Pragma" content="no-cache" />

</head>

<body>

<div id="Header">
    <div id="Logo">
        <div id="LogoContent">
            <a href="main"><img src="images/logo-topbar.gif" /></a>
        </div>
    </div>

    <div id="Menu">
        <div id="MenuContent">
            <a href="addItemToCart?workingitemId=EST-8&removeCartItemId=EST-8">
                <img align="middle" name="img_cart" src="images/cart.gif" />
            </a> <img align="middle" src="images/separator.gif" />
<%--            <a href="../account/SignonForm.html">Sign In</a>--%>
<%--            <a href="#">Sign Out</a> <img align="middle" src="images/separator.gif" />--%>
<%--            <a href="#">My Account</a> <img align="middle" src="images/separator.gif" /> <a href="../help.html">?</a>--%>


<%--            <script src="../../../javascript/ReturnToBefore.js" id="return"></script>--%>

            <c:if test="${sessionScope.account == null}">
                <a href="login">Sign In</a>
            </c:if>
            <c:if test="${sessionScope.account!= null}">
                <c:if test="${!sessionScope.account.getIslogin()}">
                    <a href="login">Sign In</a>
                </c:if>
            </c:if>
            <c:if test="${sessionScope.account!= null}">
                <c:if test="${sessionScope.account.getIslogin()}">
                    <a href="login?isLogin=false" >Sign Out</a> <img align="middle" src="images/separator.gif" />
                    <a href="myAccount?username=${sessionScope.account.getUsername()}">My Account</a>
                </c:if>
        </c:if>
            <img align="middle" src="images/separator.gif" />
            <a href="help">?</a>

        </div>
    </div>
    <div id="Search">
        <div id="SearchContent">
            <!--搜索栏目-->
            <form action="searchProduct" method="post">
                <input type="text" id="keyword" name="keyword" size="14"/>
                <input type="submit" name="searchProducts" value="Search" />
                <div id="auto" class="auto hidden"></div>
                <script src="javascript/searchProducts.js"></script>
            </form>
        </div>
    </div>

    <div id="QuickLinks">
        <a href="viewcategory?categoryId=FISH"><img
                src="images/sm_fish.gif" /></a> <img src="images/separator.gif" />
        <a href="viewcategory?categoryId=DOGS"><img
                src="images/sm_dogs.gif" /></a> <img src="images/separator.gif" />
        <a href="viewcategory?categoryId=REPTILES"><img
                src="images/sm_reptiles.gif" /></a> <img
            src="images/separator.gif" />
        <a href="viewcategory?categoryId=CATS"><img
            src="images/sm_cats.gif" /></a> <img src="images/separator.gif" />
        <a href="viewcategory?categoryId=BIRDS"><img
                src="images/sm_birds.gif" /></a>
    </div>

</div>

<div id="Content">
