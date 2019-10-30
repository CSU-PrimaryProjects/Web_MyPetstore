<%@ include file="../common/IncludeTop.jsp"%>

<div id="Catalog">
	<form action="confirm" method="post">
		<table>
			<tr>
				<th colspan=2>Payment Details</th>
			</tr>
			<tr>
				<td>Card Type:</td>
				<td>
                    <select name="order.cardType">
                    <c:forEach var="creditCardType" items="${sessionScope.creditCardTypes}">
						<option <c:if test="${sessionScope.order.cardType == creditCardType}">selected</c:if>>${creditCardType}</option>
					</c:forEach>
                    </select>
				</td>
			</tr>
			<tr>
				<td>Card Number:</td>
				<td>
					<input type="text" name="order.creditCard" value="${sessionScope.order.creditCard}">* Use a fake
					number!
				</td>
			</tr>
			<tr>
				<td>Expiry Date (MM/YYYY):</td>
				<td>
					<input type="text" name="order.expiryDate" value="${sessionScope.order.expiryDate}">
				</td>
			</tr>
			<tr>
				<th colspan=2>Billing Address</th>
			</tr>

			<tr>
				<td>First name:</td>
				<td>
					<input type="text" name="order.billToFirstName" value="${sessionScope.order.billToFirstName}">
				</td>
			</tr>
			<tr>
				<td>Last name:</td>
				<td>
					<input type="text" name="order.billToLastName" value="${sessionScope.order.billToLastName}">
				</td>
			</tr>
			<tr>
				<td>Address 1:</td>
				<td>
					<input type="text" size="40" name="order.billAddress1" value="${sessionScope.order.billAddress1}">
				</td>
			</tr>
			<tr>
				<td>Address 2:</td>
				<td>
					<input type="text" size="40" name="order.billAddress2" value="${sessionScope.order.billAddress2}">
				</td>
			</tr>
			<tr>
				<td>City:</td>
				<td>
					<input type="text" name="order.billCity" value="${sessionScope.order.billCity}"/>
				</td>
			</tr>
			<tr>
				<td>State:</td>
				<td>
					<input type="text" size="4" name="order.billState" value="${sessionScope.order.billState}">
				</td>
			</tr>
			<tr>
				<td>Zip:</td>
				<td>
					<input type="text" size="10" name="order.billZip" value="${sessionScope.order.billZip}">
				</td>
			</tr>
			<tr>
				<td>Country:</td>
				<td>
					<input type="text" size="15" name="order.billCountry" value="${sessionScope.order.billCountry}">
				</td>
			</tr>

			<tr>
				<td colspan=2>
					<input type="checkbox" name="shippingAddressRequired" />Ship to different address...
				</td>
			</tr>

		</table>
		<input class="button" type="submit" value="Continue">
	</form>
</div>

<%@ include file="../common/IncludeBottom.jsp"%>