<%@ include file="../common/IncludeTop.jsp"%>
<div align="center" style="text-align: center">
	<h3 style="background-color: #FFFFFF;margin: 0ex 0ex 0ex 0ex;line-height: 3ex;">Account Information</h3>
	<div align="center" style="border:0;padding:0;;margin: auto" >
		<table>
			<tr>
				<td>First name:</td>
				<td style="width: 70%;">${account.firstName}</td>
			</tr>
			<tr>
				<td>Last name:</td>
				<td>${account.lastName}</td>
			</tr>
			<tr>
				<td>Email:</td>
				<td>${account.email}</td>
			</tr>
			<tr>
				<td>Phone:</td>
				<td>${account.phone}</td>
			</tr>
			<tr>
				<td>Address 1:</td>
				<td>${account.address1} <stripes:text size="40" name="" /></td>
			</tr>
			<tr>
				<td>Address 2:</td>
				<td>${account.address2} <stripes:text size="40" name="" /></td>
			</tr>
			<tr>
				<td>City:</td>
				<td>${account.city} <stripes:text name="" /></td>
			</tr>
			<tr>
				<td>State:</td>
				<td>${account.state} <stripes:text size="4" name="" /></td>
			</tr>
			<tr>
				<td>Zip:</td>
				<td style="size: 10px">${account.zip} </td>
			</tr>
			<tr>
				<td>Country:</td>
				<td style="size: 10px">${account.country} <stripes:text size="15" name="" /></td>
			</tr>
		</table>
	</div>
	<div align="center" style="border:0;padding:0;;margin: auto">
	<h3>Profile Information</h3>

	<table>
		<tr>
			<td>Language Preference:</td>
			<td>
				<select name="account.languagePreference">
					<option>${account.languagePreference}</option>
				</select>
	<%--			${account.languagePreference}--%>
	<%--			<br/>--%>
	<%--			${actionBean.languages}--%>
	<%--			<stripes:select name="">--%>
	<%--			<stripes:options-collection collection="" />--%>
	<%--			</stripes:select>--%>
			</td>
		</tr>
		<tr>
			<td>Favourite Category:</td>
			<td style="width: 50%;">
				<select name="account.favouriteCategoryId">
					<option>${account.favouriteCategoryId}</option>
					<option>${sessionScope.categories}</option>
				</select>
	<%--			<stripes:select name="account.favouriteCategoryId">--%>
	<%--			<stripes:options-collection collection="${actionBean.categories}" />--%>
	<%--			</stripes:select></td>--%>
		</tr>
		<tr>
			<td>Enable MyList</td>
			<td>
	<%--			<stripes:checkbox name="account.listOption" />--%>
				<input type="checkbox" name="account.listOption" value="account.listOption"/>${account.listOption}
			</td>
		</tr>
		<tr>
			<td>Enable MyBanner</td>
			<td>
				<input type="checkbox" name="account.bannerOption" value="account.bannerOption"/>${account.bannerOption}
				<stripes:checkbox name="account.bannerOption" />
			</td>
		</tr>

	</table>
</div>
<%@ include file="../common/IncludeBottom.jsp"%>