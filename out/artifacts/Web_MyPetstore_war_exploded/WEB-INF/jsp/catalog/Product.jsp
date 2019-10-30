<%@ include file="../common/IncludeTop.jsp"%>

<div id="BackLink">
	<a href="viewcategory?categoryId=${sessionScope.product.categoryId}">Return to ${sessionScope.product.categoryId}</a>
</div>

<div id="Catalog">

<h2>${sessionScope.product.name}</h2>
	<ul class="menu">
<table  class="table">
	<tr>
		<th>Item ID</th>
		<th>Product ID</th>
		<th>Description</th>
		<th>List Price</th>
		<th>&nbsp;</th>
	</tr>
	<c:forEach var="item" items="${sessionScope.itemList}">
		<tr>
			<td>
				<a href="viewItem?itemId=${item.itemId}">${item.itemId}</a>
			</td>

			<td>${sessionScope.product.productId}</td>
			<td>
				${item.attribute1}
<%--					${item.attribute2} ${item.attribute3}--%>
<%--			${item.attribute4} ${item.attribute5}--%>
<%--						${sessionScope.product.name}--%>

			</td>
			<td><fmt:formatNumber value="${item.listPrice}"
				pattern="$#,##0.00" /></td>
			<td>
				<a class="button" href="addItemToCart?workingitemId=${item.itemId}">Add to Cart</a>
			</td>
		</tr>
	</c:forEach>
	<tr>
		<td>
		</td>
	</tr>
</table>
	</ul>
</div>

<%@ include file="../common/IncludeBottom.jsp"%>





