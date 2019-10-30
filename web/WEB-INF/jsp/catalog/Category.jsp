<%@ include file="../common/IncludeTop.jsp"%>

<div id="BackLink">
<a href="main">Return to Main Menu</a>
</div>

<div id="Catalog">

    <h2>${sessionScope.category.name}</h2>
    <ul class="menu">
    <table  class="table">
        <tr>
            <th>Product ID</th>
            <th>Name</th>
        </tr>
        <c:forEach var="product" items="${sessionScope.productList}">
            <tr>
                <td>
<%--                    <stripes:link--%>
<%--                        beanclass="org.mybatis.jpetstore.web.actions.CatalogActionBean"--%>
<%--                        event="viewProduct">--%>
<%--                    <stripes:param name="productId" value="${product.productId}" />--%>
<%--                    ${product.productId}--%>
<%--                </stripes:link>--%>

                    <a href="viewproduct?productId=${product.productId}">${product.productId}</a>
                </td>
                <td>${product.name}</td>
            </tr>
        </c:forEach>
    </table>
    </ul>
</div>

<%@ include file="../common/IncludeBottom.jsp"%>
