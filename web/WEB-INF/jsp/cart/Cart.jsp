<%@ include file="../common/IncludeTop.jsp"%>

<div id="BackLink">
	<a href="main">Return to Main Menu</a>
</div>
<p></p>
<div id="Catalog">

<div id="Cart">

<h2>Shopping Cart</h2>

<form action="updateCart" method="post">
	<table>
		<tr>
			<th><b>Item ID</b></th>
			<th><b>Product ID</b></th>
			<th><b>Description</b></th>
			<th><b>In Stock?</b></th>
			<th><b>Quantity</b></th>
			<th><b>List Price</b></th>
			<th><b>Total Cost</b></th>
			<th>&nbsp;</th>
		</tr>

		<c:if test="${sessionScope.cart.numberOfItems == 0}">
			<tr>
				<td colspan="8"><b>Your cart is empty.</b></td>
			</tr>
		</c:if>

		<c:forEach var="cartItem" items="${sessionScope.cart.cartItems}">
			<tr>
				<td>

				<a href="viewItem?itemId=${cartItem.item.itemId}">${cartItem.item.itemId}</a>
				</td>
				<td>${cartItem.item.product.productId}</td>
				<td>${cartItem.item.attribute1} ${cartItem.item.attribute2}
				${cartItem.item.attribute3} ${cartItem.item.attribute4}
				${cartItem.item.attribute5} ${cartItem.item.product.name}</td>
				<td>${cartItem.inStock}</td>
				<td>
					<input type="text" id="quantity" onblur="updateCart();" name="${cartItem.item.itemId}" value="${cartItem.quantity}">
					<div id="cartMsg"></div>
					<script type="text/javascript" src="javascript/updateCart.js"></script>
					<script type="text/javascript" src="${pageContext.request.contextPath }/javascript/updateCart.js"></script>
				</td>
				<td>

					<fmt:formatNumber value="${cartItem.item.listPrice}"
					pattern="$#,##0.00" />
				</td>
				<td><fmt:formatNumber value="${cartItem.total}"
					pattern="$#,##0.00" /></td>
				<td>

					<script>
						function insertParam(key, value){
							key = encodeURI(key); value = encodeURI(value);
							var kvp = document.location.search.substr(1).split('&');
							var i=kvp.length; var x; while(i--)
							{
								x = kvp[i].split('=');

								if (x[0]==key)
								{
									x[1] = value;
									kvp[i] = x.join('=');
									break;
								}
							}
							if(i<0) {kvp[kvp.length] = [key,value].join('=');}
							//this will reload the page, it's likely better to store this until finished
							document.location.search = kvp.join('&'); }
					</script>
<%--					<button onclick="sessionScope.cart.removeItemById(cartItem.item.itemId)" value="Remove">Remove</button>--%>
					<a href="javascript:void(0);" onclick="insertParam('removeCartItemId','${cartItem.item.itemId}')"> Remove</a>

				</td>
			</tr>
		</c:forEach>
		<tr>
			<td colspan="7">
				Sub Total: <fmt:formatNumber
				value="${sessionScope.cart.subTotal}" pattern="$#,##0.00" />

<%--				<input type="submit" value="Update Cart" />--%>
			</td>
			<td>&nbsp;</td>
		</tr>
	</table>
</form>
	<c:if test="${sessionScope.cart.numberOfItems > 0}">
		<a href="newOrderForm" class="Button">Proceed to Checkout</a>
	</c:if>
</div>

<%--<div id="MyList">--%>
<%--  <c:if test="${sessionScope.accountBean != null}">--%>
<%--	<c:if test="${!sessionScope.accountBean.authenticated}">--%>
<%--	  <c:if test="${!empty sessionScope.accountBean.account.listOption}">--%>
<%--	    <%@ include file="IncludeMyList.jsp"%>--%>
<%--      </c:if>--%>
<%--	</c:if>--%>
<%--  </c:if>--%>
<%--</div>--%>

<div id="Separator">&nbsp;</div>
</div>

<%@ include file="../common/IncludeBottom.jsp"%>