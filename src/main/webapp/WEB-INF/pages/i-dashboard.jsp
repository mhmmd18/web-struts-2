<%@ taglib prefix = "s" uri = "/struts-tags" %>
<%@ page contentType = "text/html; charset = UTF-8" %>
<%@include file ="i-header.jsp" %>

				<!-- Untuk nampilin modal -->
				<input type="hidden" id="messageSuccess" value='<s:actionmessage/>'>
				<input type="hidden" id="messageError" value='<s:actionerror/>'>

				<!-- page content -->
				<div class="right_col" role="main">
					<div class="row">
						<div class="col-md-12 col-sm-12 col-xs-12">
							<div class="dashboard_graph">
								<div class="row x_title">
									<div class="col-md-12">
										<h3>Content Title <small>Content Subtitle</small></h3>
									</div>
								</div>
								<div class="col-md-9 col-sm-9 col-xs-12">
									Dashboard
									<button type="button" class="btn btn-primary" data-toggle="modal" data-target=".bs-example-modal-sm">Small modal</button>
								</div>
								<div class="clearfix"></div>
							</div>
						</div>
					</div>
					<br />
				</div>
				<!-- /page content -->
				
				<!-- modal style="padding-right: 17px; display: block;" -->
				<div class="modal fade bs-example-modal-sm in" tabindex="-1" role="dialog" aria-hidden="true">
					<div class="modal-dialog modal-sm">
						<div class="modal-content">
				      		<div class="modal-header">
				        		<h4 class="modal-title" id="myModalLabel2">Konfirmasi</h4>
				      		</div>
				      		<div class="modal-body">
						        <p>Yakin?</p>
				      		</div>
				      		<div class="modal-footer">
						        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
						        <!-- <button type="button" class="btn btn-primary">Save changes</button> -->
						        <a href='<s:url namespace="/" action="dashboard"/>' class="btn btn-primary">OK</a>
				      		</div>
			    		</div>
				  	</div>
				</div>
				<!-- /modals -->

<%@include file ="i-footer.jsp" %>