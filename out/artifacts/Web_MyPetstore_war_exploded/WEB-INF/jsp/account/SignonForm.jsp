<%@ include file="../common/IncludeTop.jsp"%>

<div id="Catalog">
<form action="login"  method="post">
	<p>Please enter your username and password.
	</p>
		<div>
			<strong>
			<code >Username:</code>
			</strong>
			<input type="text" name="username" class="form-input"/>
		</div>
		<div>
			<strong>
			<code>Password:</code>
			</strong>
			<input type="password" name="password" class="form-input"/>
		</div>
		<div>
			<strong>
				<code>Identify:</code>
			</strong>
			<input type="text" name="identity" class="form-input"/>
		</div>
	<br/>
	<div style=" text-align: center;">
	<a href="javascript:void(0);" onclick="location.reload();"><img id="det" src="${sessionScope.imageUrl}" style="width: 100px;height: 40px"/></a>
	<br/><br/>
		<input type="submit" name="signon" value="Login" class="form-input"/></div>
</form>
	Need a user name and password?
	<a href="newAccount">Register Now!</a>
</div>

<%@ include file="../common/IncludeBottom.jsp"%>

