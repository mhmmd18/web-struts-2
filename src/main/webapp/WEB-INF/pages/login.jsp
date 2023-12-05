<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ page contentType="text/html; charset = UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<!-- Meta, title, CSS, favicons, etc. -->
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">

	<title>WebApp</title>

	<!-- Bootstrap -->
	<link href="${pageContext.request.contextPath}/assets/admin/vendors/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
	<!-- Font Awesome -->
	<link href="${pageContext.request.contextPath}/assets/admin/vendors/font-awesome/css/font-awesome.min.css" rel="stylesheet">
	<!-- NProgress -->
	<link href="${pageContext.request.contextPath}/assets/admin/vendors/nprogress/nprogress.css" rel="stylesheet">
	<!-- Animate.css -->
	<link href="${pageContext.request.contextPath}/assets/admin/vendors/animate.css/animate.min.css" rel="stylesheet">

	<!-- Custom Theme Style -->
	<link href="${pageContext.request.contextPath}/assets/admin/build/css/custom.min.css" rel="stylesheet">
</head>

<body class="login">
	<!-- jQuery -->
	<script src="${pageContext.request.contextPath}/assets/admin/vendors/jquery/dist/jquery.min.js"></script>
	
	<input type="hidden" id="messageError" value='<s:actionerror/>'>
	
	<div>
		<div class="login_wrapper">
			<div class="animate form login_form">
				<section class="login_content">
					<form action="LoginAction" method="post">
						<h1>Login</h1>
						<div>
							<input type="text" class="form-control" name="idUser" placeholder="Username" required />
						</div>
						<div>
							<input type="password" class="form-control" name="password" placeholder="Password" required />
						</div>
						<div class="text-center">
							<button type="submit" class="btn btn-default">Log In</button>
						</div>

						<div class="clearfix"></div>
						
						<div id="isiPesanError" class="pesan"></div>
						
						<div class="separator">
							<div>
								<h1>
									<i class="fa fa-paw"></i> Gentelella Alela!
								</h1>
								<p>All Rights Reserved. Gentelella Alela! Privacy and Terms</p>
							</div>
						</div>
					</form>
				</section>
			</div>

		</div>
	</div>
	
	<script type="text/javascript">
		$(function() {
			$('#isiPesanError').hide();
			var error = $("#messageError").val();
			var str = error.substring(error.lastIndexOf("<li>")+4, error.lastIndexOf("</li>"));
			if(error != ''){
				$("#isiPesanError").html(str);
				$('#isiPesanError').show('slide');
			}
		});
	</script>
</body>
</html>