<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
* {
  -webkit-box-sizing: border-box;
  -moz-box-sizing: border-box;
  box-sizing: border-box;
}
.clearfix:before,
.clearfix:after {
  content: "";
  display: table;
}
.clearfix:after {
  clear: both;
}
body, input {
  font-family: 'Helvetica Neue', sans-serif;
  font-size: 1em;
  line-height: 1.5;
  -webkit-font-smoothing: antialiased;
  color: #333;
}
input[type=text],
input[type=email],
input[type=password] {
  border: 0;
  margin: 0;
  height: 40px;
  padding: 0;
  line-height: 30px;
  font-size: 90%;
  -webkit-transition: background-color .5s;
  -moz-transition: background-color .5s;
  transition: background-color .5s;
}
input:focus {
  outline: none;
}
label {
  width: 37.5%;
  display: block;
  float: left;
  color: #999;
  padding: 0 10px;
  font-size: 70%;
  text-transform: uppercase;
  line-height: 40px;
  white-space: nowrap;
  -webkit-transition: all .5s;
  -moz-transition: all .5s;
  transition: all .5s;
}
.active label {
  color: #333;
}
.input {
  border: solid #ccc;
  border-width: 0 1px 1px 1px;
  -webkit-transition: background-color .5s;
  -moz-transition: background-color .5s;
  transition: background-color .5s;
  overflow: hidden;
}
.input:first-of-type {
  border-top: 1px solid #ccc;
  border-radius: 6px 6px 0 0;
}
.input:last-of-type {
  border-radius: 0 0 6px 6px;
}
.active, .active input {
  background-color: #feffe8;
}
.input:hover label {
  color: #333;
}
form {
  display: block;
  max-width: 300px;
  margin: 20px auto;
}
.toggle-mask {
  font-size: 70%;
  color: #999;
  text-transform: uppercase;
  cursor: pointer;
  line-height: 40px;
  display: block;
  width: 20%;
  text-align: center;
  float: right;
}
.toggle-mask:hover {
  color: #0c4d6d;
}
input[type=submit] {
  -webkit-appearance: none;
  border: 0;
  background-color: #89b555;
  color: #fff;
  border-radius: 6px;
  display: block;
  margin: 20px auto;
  padding: 0 20px;
  cursor: pointer;
  font-size: 90%;
  line-height: 40px;
  text-shadow: 0 1px 1px rgba(0,0,0,.2);
  font-weight: bold;
  -webkit-transition: all .5s;
  -moz-transition: all .5s;
  transition: all .5s;
}
input[type=submit]:focus,
input[type=submit]:hover {
  background-color: #9bcc60;
  text-shadow: 0 1px 1px rgba(0,0,0,.4);

}
#full-name, #email {
  width: 62.5%;
  display: block;
}
#password {
  width: 42.5%;
  float: left;
}
</style>
</head>
<body>
	<% String email = request.getParameter("email"); %>
	<form method="POST" action="/UpdateUser">
		<div class="input">
			<label for="email">Email Address</label> <input type="email"
				id="email" name="email" autocorrect="off" autocapitalize="off"
				maxlength="64" readonly="readonly" value="<%=email%>" style="background-color:#d3d3d3;">
		</div>
		<div class="input">
			<label for="full-name">Full Name</label> <input type="text"
				id="full-name" name="name" autocorrect="off"
				autocapitalize="words" maxlength="32">
		</div>
		<div class="input clearfix">
			<label for="password">Password</label> <input type="text"
				id="password" name="password" maxlength="12" autocorrect="off"
				autocapitalize="off"> <span class="toggle-mask">Hide</span>
		</div>
		<input type="submit" id="submit" name="submit" value="Create Account">
	</form>
<script>
$(function () {
	  "use strict";
	  // toggle password masking
	  $('.toggle-mask').on('click', function () {
	    var maskToggle = $(this).text();
	    var password = $('#password').val();
	    if (maskToggle === 'Hide') {
	      $(this).text("Show");
	      $('#password').replaceWith('<input type="password" id="password" name="password" maxlength="12" autocorrect="off" autocapitalize="off" value=' + password + '>');
	    } else if (maskToggle === 'Show') {
	      $(this).text("Hide");
	      $('#password').replaceWith('<input type="text" id="password" name="password" maxlength="12" autocorrect="off" autocapitalize="off" value=' + password + '>');
	    }
	  });

	  // highlight row on focus
	  $('#full-name, #email, #password').focus(function () {
	    $(this).parent().addClass('active');
	  });
	  $('#full-name, #email, #password').focusout(function () {
	    $('.active').removeClass('active');
	  });
	});
</script>
</body>
</html>