<%@ include file="../common/IncludeTop.jsp"%>

<script src="../../../javascript/userIsExist.js"></script>
<div id="Catalog">
<%--	<stripes:form--%>
<%--	beanclass="org.mybatis.jpetstore.web.actions.AccountActionBean"--%>
<%--	focus="">--%>
	<form action="newAccount" method="post">
		<h3>User Information</h3>

		<table>
			<tr>
				<td>User ID:</td>
				<td><input type="text" class="form-input" name="username" id="username"  onblur="usernameIsExist();"/>
					<div id="usernameMsg"></div>
					<script type="text/javascript" src="${pageContext.request.contextPath }/javascript/register.js"></script>
				</td>
			</tr>
			<tr>
				<td>New password:</td>
				<td><input  class="form-input" type="password" name="password"/></td>
			</tr>
			<tr>
				<td>Repeat password:</td>
				<td><input class="form-input" type="password" name="repassword"/></td>
			</tr>
		</table>

<%--		<%@ include file="IncludeAccountFields.jsp"%>--%>


	<h3 style="background-color: #FFFFFF;margin: 0ex 0ex 0ex 0ex;line-height: 3ex;">Account Information</h3>

		<table>
			<tr>
				<td>First name:</td>
				<td style="width: 70%;"><input  class="form-input" type="text" name="firstName"/></td>
			</tr>
			<tr>
				<td>Last name:</td>
				<td><input type="text" class="form-input" name="lastName"/></td>
			</tr>
			<tr>
				<td>Email:</td>
				<td><input type="text" class="form-input" name="email"/></td>
			</tr>
			<tr>
				<td>Phone:</td>
				<td><input type="text" class="form-input" name="phone"/></td>
			</tr>
			<tr>
				<td>Address 1:</td>
				<td><input type="text" class="form-input" name="address1" style="size: 40px"/></td>
			</tr>
			<tr>
				<td>Address 2:</td>
				<td><input type="text" class="form-input" name="address2" style="size: 40px"/></td>
			</tr>
			<tr>
				<td>City:</td>
				<td><input type="text" class="form-input" name="city"/></td>
			</tr>
			<tr>
				<td>State:</td>
				<td><input type="text" class="form-input" name="state"/></td>
			</tr>
			<tr>
				<td>Zip:</td>
				<td style="size: 10px"><input class="form-input" type="text" name="zip"/></td>
			</tr>
			<tr>
				<td>Country:</td>
				<td style="size: 10px"><input class="form-input" type="text" name="country"/></td>
			</tr>
		</table>

		<h3>Profile Information</h3>

		<table>
			<tr>
				<td>Language Preference:</td>
				<td>
					<select name="account.languagePreference" style="width: 100px">
						<option>ENGLISH</option>
						<option>CHINESE</option>
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
					<select name="account.favouriteCategoryId" style="width: 100px">
						<option>DOGS</option>
						<option>CATS</option>
						<option>FISH</option>
						<option>BIRDS</option>
						<option>REPTILES</option>
					</select>
					<%--			<stripes:select name="account.favouriteCategoryId">--%>
					<%--			<stripes:options-collection collection="${actionBean.categories}" />--%>
					<%--			</stripes:select></td>--%>
			</tr>
			<tr>
				<td>Enable MyList</td>
				<td>
					<%--			<stripes:checkbox name="account.listOption" />--%>
					<input  class="form-input" type="checkbox" name="account.listOption" value="account.listOption"/>
				</td>
			</tr>
			<tr>
				<td>Enable MyBanner</td>
				<td>
					<input class="form-input" type="checkbox" name="account.bannerOption" value="account.bannerOption"/>
				</td>
			</tr>
		</table>
		<input type="submit" name="newAccount" class="form-input" value="Save Account Information"/>
	</form>
	</div>
	<script src="../../../javascript/userIsExist.js"></script>
<%@ include file="../common/IncludeBottom.jsp"%>