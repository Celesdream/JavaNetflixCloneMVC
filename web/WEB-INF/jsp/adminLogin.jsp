<%-- 
    Document   : adminLogin
    Created on : 28/06/2022, 01:28:12 AM
    Author     : pedma
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<div id="fullscreen_bg" class="fullscreen_bg"/>

<div class="container">

	<form class="form-signin" action="<c:url value="/admin/login.do" />" method="POST">
           
		<h1 class="form-signin-heading text-muted">Sign In</h1>
		<input type="text" class="form-control" name="email" placeholder="Email address" required="" autofocus="">
		<input type="password" class="form-control" name="password" placeholder="Password" required="">
		<button class="btn btn-lg btn-primary btn-block" type="submit">
			Sign In
		</button>
	</form>

</div>
</html>
