<%@ include file="../common/IncludeTop.jsp"%>

<div id="Catalog">
	<form action="shippingForm" method="post">
		<ul class="menu">
		<table  class="table">
			<tr>
				<th colspan=2>Shipping Address</th>
			</tr>

			<tr>
				<td>First name:</td>
				<td>
					<input type="text" class="form-input" name="order.shipToFirstName" value="${sessionScope.order.shipToFirstName}">
				</td>
			</tr>
			<tr>
				<td>Last name:</td>
				<td>
					<input type="text" class="form-input" name="order.shipToLastName" value="${sessionScope.order.shipToLastName}">
				</td>
			</tr>
			<tr>
				<td>Address 1:</td>
				<td>
					<input type="text" class="form-input" size="40" name="order.shipAddress1" value="${sessionScope.order.shipAddress1}">
				</td>
			</tr>
			<tr>
				<td>Address 2:</td>
				<td>
					<input type="text" class="form-input" size="40" name="order.shipAddress2" value="${sessionScope.order.shipAddress2}">
				</td>
			</tr>
			<tr>
				<td>City:</td>
				<td>
					<input name="order.shipCity" class="form-input" value="${sessionScope.order.shipCity}">
				</td>
			</tr>
			<tr>
				<td>State:</td>
				<td>
					<input type="text" size="4" class="form-input" name="order.shipState" value="${sessionScope.order.shipState}">
	 			</td>
			</tr>
			<tr>
				<td>Zip:</td>
				<td>
					<input type="text" size="10" name="order.shipZip" value="${sessionScope.order.shipZip}">
				</td>
			</tr>
			<tr>
				<td>Country:</td>
				<td>
					<input type="text" size="15"  name="order.shipCountry" class="form-input" value="${sessionScope.order.shipCountry}">
				</td>
			</tr>


		</table>
		</ul>
		<a href="confirm" class="Button" class="form-input">Continue</a>
	</form>
</div>

<%@ include file="../common/IncludeBottom.jsp"%>