<%@ taglib prefix="s" uri="/struts-tags" %>
	<%@ page contentType="text/html; charset = UTF-8" %>
		<!DOCTYPE html>
		<html lang="en">

		<head>
			<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
			<!-- Meta, title, CSS, favicons, etc. -->
			<meta charset="utf-8">
			<meta http-equiv="X-UA-Compatible" content="IE=edge">
			<meta name="viewport" content="width=device-width, initial-scale=1">
			<link rel="icon" href="${pageContext.request.contextPath}/assets/admin/images/favicon.ico"
				type="image/ico" />
			<title>WebApp</title>
			<!-- Bootstrap -->
			<link href="${pageContext.request.contextPath}/assets/admin/vendors/bootstrap/dist/css/bootstrap.min.css"
				rel="stylesheet">
			<!-- Font Awesome -->
			<link href="${pageContext.request.contextPath}/assets/admin/vendors/font-awesome/css/font-awesome.min.css"
				rel="stylesheet">
			<!-- NProgress -->
			<link href="${pageContext.request.contextPath}/assets/admin/vendors/nprogress/nprogress.css"
				rel="stylesheet">
			<!-- iCheck -->
			<link href="${pageContext.request.contextPath}/assets/admin/vendors/iCheck/skins/flat/green.css"
				rel="stylesheet">

			<!-- bootstrap-progressbar -->
			<link
				href="${pageContext.request.contextPath}/assets/admin/vendors/bootstrap-progressbar/css/bootstrap-progressbar-3.3.4.min.css"
				rel="stylesheet">
			<!-- JQVMap -->
			<link href="${pageContext.request.contextPath}/assets/admin/vendors/jqvmap/dist/jqvmap.min.css"
				rel="stylesheet" />
			<!-- bootstrap-daterangepicker -->
			<link
				href="${pageContext.request.contextPath}/assets/admin/vendors/bootstrap-daterangepicker/daterangepicker.css"
				rel="stylesheet">

			<!-- Datatables -->
			<link
				href="${pageContext.request.contextPath}/assets/admin/vendors/datatables.net-bs/css/dataTables.bootstrap.min.css"
				rel="stylesheet">
			<link
				href="${pageContext.request.contextPath}/assets/admin/vendors/datatables.net-buttons-bs/css/buttons.bootstrap.min.css"
				rel="stylesheet">
			<link
				href="${pageContext.request.contextPath}/assets/admin/vendors/datatables.net-fixedheader-bs/css/fixedHeader.bootstrap.min.css"
				rel="stylesheet">
			<link
				href="${pageContext.request.contextPath}/assets/admin/vendors/datatables.net-responsive-bs/css/responsive.bootstrap.min.css"
				rel="stylesheet">
			<link
				href="${pageContext.request.contextPath}/assets/admin/vendors/datatables.net-scroller-bs/css/scroller.bootstrap.min.css"
				rel="stylesheet">

			<!-- Custom Theme Style -->
			<link href="${pageContext.request.contextPath}/assets/admin/build/css/custom.min.css" rel="stylesheet">

			<!-- Custom Style-->
			<link href="${pageContext.request.contextPath}/assets/custom/css/custom.css" rel="stylesheet">

			<!-- Select2 -->
			<!-- jQuery -->
			<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
			<!-- Select2 CSS -->
			<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.13/css/select2.min.css">

		</head>

		<body class="nav-md footer_fixed">
			<!-- jQuery -->
			<script src="${pageContext.request.contextPath}/assets/admin/vendors/jquery/dist/jquery.min.js"></script>
			<!-- Bootstrap -->
			<script
				src="${pageContext.request.contextPath}/assets/admin/vendors/bootstrap/dist/js/bootstrap.min.js"></script>
			<!-- Select2 JS -->
			<script src="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.13/js/select2.min.js"></script>
			<!-- FastClick -->
			<script src="${pageContext.request.contextPath}/assets/admin/vendors/fastclick/lib/fastclick.js"></script>
			<!-- NProgress -->
			<script src="${pageContext.request.contextPath}/assets/admin/vendors/nprogress/nprogress.js"></script>
			<!-- Chart.js -->
			<script src="${pageContext.request.contextPath}/assets/admin/vendors/Chart.js/dist/Chart.min.js"></script>
			<!-- gauge.js -->
			<script src="${pageContext.request.contextPath}/assets/admin/vendors/gauge.js/dist/gauge.min.js"></script>
			<!-- bootstrap-progressbar -->
			<script
				src="${pageContext.request.contextPath}/assets/admin/vendors/bootstrap-progressbar/bootstrap-progressbar.min.js"></script>
			<!-- iCheck -->
			<script src="${pageContext.request.contextPath}/assets/admin/vendors/iCheck/icheck.min.js"></script>
			<!-- Skycons -->
			<script src="${pageContext.request.contextPath}/assets/admin/vendors/skycons/skycons.js"></script>
			<!-- Flot -->
			<script src="${pageContext.request.contextPath}/assets/admin/vendors/Flot/jquery.flot.js"></script>
			<script src="${pageContext.request.contextPath}/assets/admin/vendors/Flot/jquery.flot.pie.js"></script>
			<script src="${pageContext.request.contextPath}/assets/admin/vendors/Flot/jquery.flot.time.js"></script>
			<script src="${pageContext.request.contextPath}/assets/admin/vendors/Flot/jquery.flot.stack.js"></script>
			<script src="${pageContext.request.contextPath}/assets/admin/vendors/Flot/jquery.flot.resize.js"></script>
			<!-- Flot plugins -->
			<script
				src="${pageContext.request.contextPath}/assets/admin/vendors/flot.orderbars/js/jquery.flot.orderBars.js"></script>
			<script
				src="${pageContext.request.contextPath}/assets/admin/vendors/flot-spline/js/jquery.flot.spline.min.js"></script>
			<script
				src="${pageContext.request.contextPath}/assets/admin/vendors/flot.curvedlines/curvedLines.js"></script>
			<!-- DateJS -->
			<script src="${pageContext.request.contextPath}/assets/admin/vendors/DateJS/build/date.js"></script>
			<!-- JQVMap -->
			<script src="${pageContext.request.contextPath}/assets/admin/vendors/jqvmap/dist/jquery.vmap.js"></script>
			<script
				src="${pageContext.request.contextPath}/assets/admin/vendors/jqvmap/dist/maps/jquery.vmap.world.js"></script>
			<!-- <script src="${pageContext.request.contextPath}/assets/admin/vendors/jqvmap/examples/js/jquery.vmap.sampledata.js"></script> -->
			<!-- bootstrap-daterangepicker -->
			<script src="${pageContext.request.contextPath}/assets/admin/vendors/moment/min/moment.min.js"></script>
			<script
				src="${pageContext.request.contextPath}/assets/admin/vendors/bootstrap-daterangepicker/daterangepicker.js"></script>

			<!-- Datatables -->
			<script
				src="${pageContext.request.contextPath}/assets/admin/vendors/datatables.net/js/jquery.dataTables.min.js"></script>
			<script
				src="${pageContext.request.contextPath}/assets/admin/vendors/datatables.net-bs/js/dataTables.bootstrap.min.js"></script>
			<script
				src="${pageContext.request.contextPath}/assets/admin/vendors/datatables.net-buttons/js/dataTables.buttons.min.js"></script>
			<script
				src="${pageContext.request.contextPath}/assets/admin/vendors/datatables.net-buttons-bs/js/buttons.bootstrap.min.js"></script>
			<script
				src="${pageContext.request.contextPath}/assets/admin/vendors/datatables.net-buttons/js/buttons.flash.min.js"></script>
			<script
				src="${pageContext.request.contextPath}/assets/admin/vendors/datatables.net-buttons/js/buttons.html5.min.js"></script>
			<script
				src="${pageContext.request.contextPath}/assets/admin/vendors/datatables.net-buttons/js/buttons.print.min.js"></script>
			<script
				src="${pageContext.request.contextPath}/assets/admin/vendors/datatables.net-fixedheader/js/dataTables.fixedHeader.min.js"></script>
			<script
				src="${pageContext.request.contextPath}/assets/admin/vendors/datatables.net-keytable/js/dataTables.keyTable.min.js"></script>
			<script
				src="${pageContext.request.contextPath}/assets/admin/vendors/datatables.net-responsive/js/dataTables.responsive.min.js"></script>
			<script
				src="${pageContext.request.contextPath}/assets/admin/vendors/datatables.net-responsive-bs/js/responsive.bootstrap.js"></script>
			<script
				src="${pageContext.request.contextPath}/assets/admin/vendors/datatables.net-scroller/js/dataTables.scroller.min.js"></script>

			<!-- Loading Spinner -->
			<div id="overlay" style="display:none;">
				<div class="spinner"></div>
				<br />
				Loading...
			</div>
			<!-- /Loading Spinner -->

			<div class="container body">
				<div class="main_container">

					<div class="col-md-3 left_col menu_fixed">
						<div class="left_col scroll-view">
							<div class="navbar nav_title" style="border: 0;">
								<a href="${pageContext.request.contextPath}/dashboard" class="site_title"><i
										class="fa fa-paw"></i> <span>WebApp</span></a>
							</div>
							<div class="clearfix"></div>
							<!-- menu profile quick info -->
							<div class="profile clearfix">
								<div class="profile_pic">
									<img src="${pageContext.request.contextPath}/assets/admin/images/user.png" alt="..."
										class="img-circle profile_img">
								</div>
								<div class="profile_info">
									<span>Welcome,</span>
									<h2>
										<s:property value="#session.nama" />
									</h2>
								</div>
							</div>
							<!-- /menu profile quick info -->
							<br />

							<%@include file="i-menu.jsp" %>

						</div>
					</div>

					<!-- top navigation -->
					<div class="top_nav">
						<div class="nav_menu">
							<nav>
								<div class="nav toggle">
									<a id="menu_toggle"><i class="fa fa-bars"></i></a>
								</div>

								<ul class="nav navbar-nav navbar-right">
									<li class="">
										<a href='<s:url namespace="/" action="logout"/>' class="info-number"
											aria-expanded="false">
											<i class="fa fa-sign-out"></i>
											<span>Log Out</span>
										</a>
									</li>
									<li role="presentation" class="dropdown">
										<a href="javascript:;" class="dropdown-toggle info-number"
											data-toggle="dropdown" aria-expanded="false">
											<i class="fa fa-bell-o"></i>
											<span class="badge bg-green">6</span>
										</a>
										<ul id="menu1" class="dropdown-menu list-unstyled msg_list" role="menu">
											<li>
												<a>
													<span class="image"><img
															src="${pageContext.request.contextPath}/assets/admin/images/img.jpg"
															alt="Profile Image" /></span>
													<span>
														<span>
															<s:property value="#session.nama" />
														</span>
														<span class="time">3 mins ago</span>
													</span>
													<span class="message">
														Film festivals used to be do-or-die moments for movie makers.
														They were where...
													</span>
												</a>
											</li>
											<li>
												<div class="col-md-12">
													<div class="text-center">
														<a>
															<strong>See All Alerts</strong><i
																class="fa fa-angle-right"></i>
														</a>
													</div>
												</div>
											</li>
										</ul>
									</li>
								</ul>
							</nav>
						</div>
					</div>
					<!-- /top navigation -->

					<script>
						$(function () {
							init_sidebar();
						})
					</script>