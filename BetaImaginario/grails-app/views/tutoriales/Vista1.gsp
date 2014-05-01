<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1"/>
<meta name="layout" content="main"/>
<title>Insert title here</title>
</head>
<body>
  <div class="body">
  <h3>Connect to Facebook</h3>

		<form action="/connect/facebook" method="POST">
			<div class="formInfo">
				<p>You aren't connected to Facebook yet. Click the button to connect Spring Social Showcase with your Facebook account.</p>
			</div>
			<p><button type="submit">Connect to Facebook</button></p>
		</form>
		
		<h3>Connected to Facebook</h3>

		<p>
			You are now connected to your Facebook account.
			Click <a href="/">here</a> to see your Facebook friends.
		</p>
  </div>
</body>
</html>