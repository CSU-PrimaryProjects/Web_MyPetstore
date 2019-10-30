<%@ include file="../common/IncludeTop.jsp"%>

<div id="Catalog">
<form action="login"  method="post">
	<p>Please enter your username and password.
	</p>
		<div>
			<strong>
			<code >Username:</code>
			</strong>
			<input type="text" name="username"/>
		</div>
		<div>
			<strong>
			<code>Password:</code>
			</strong>
			<input type="password" name="password"/>
		</div>
		<div>
			<strong>
				<code>Identify:</code>
			</strong>
			<input type="text" name="identity"/>
		</div>
	<br/>
	<a href="javascript:void(0);" onclick="location.reload();"><img src="${sessionScope.imageUrl}" style="width: 100px;height: 40px"/></a>
	<br/><br/>
		<input type="submit" name="signon" value="Login" />
</form>
	Need a user name and password?
	<a href="newAccount">Register Now!</a>
</div>

<%@ include file="../common/IncludeBottom.jsp"%>

