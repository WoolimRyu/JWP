<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Welcome!</title>
</head>
<body>
<table border="1" cellpadding="10" style="border-collapse:collapse;border:1px solid gray;"><tr><td>
	<!-- from : https://developer.mozilla.org/en-US/docs/Web/Guide/HTML/Forms/How_to_structure_an_HTML_form -->
	<form action="/users/save"
		method="post">
		<h1>Payment form</h1>
		<p>
			Required fields are followed by <strong><abbr
				title="required">*</abbr></strong>.
		</p>

		<section>
		<h2>Contact information</h2>

		<fieldset>
			<legend>Title</legend>
			<ul>
				<li><label for="title_1"> <input type="radio"
						id="title_1" name="title" value="Mr." /> Mister
				</label></li>
				<li><label for="title_2"> <input type="radio"
						id="title_2" name="title" value="Ms." /> Miss
				</label></li>
			</ul>
		</fieldset>

		<p>
			<label for="name"> <span>Name: </span> <input type="text"
				id="name" name="username" required /> <strong><abbr
					title="required">*</abbr></strong>
			</label>
		</p>

		<p>
			<label for="mail"> <span>E-mail: </span> <input type="email"
				id="mail" name="usermail" required /> <strong><abbr
					title="required">*</abbr></strong>
			</label>
		</p>
		</section>

		<section>
		<h2>Payment information</h2>

		<p>
			<label for="card"> <span>Card type:</span> <select id="card"
				name="usercard">
					<option value="visa">Visa</option>
					<option value="mc">Mastercard</option>
					<option value="amex">American Express</option>
			</select>
			</label>
		</p>
		<p>
			<label for="number"> <span>Card number:</span> <input
				type="text" id="number" name="cardnumber" required /> <strong><abbr
					title="required">*</abbr></strong>
			</label>
		</p>
		<p>
			<label for="date"> <span>Expiration date:</span> <input
				type="text" id="date" name="expiration" required /> <strong><abbr
					title="required">*</abbr></strong> <em>formated as mm/yy</em>
			</label>
		</p>
		</section>

		<section>
		<p>
			<button>Validate the payment</button>
		</p>
		</section>
	</form>
</td></tr></table>
</body>
</html>