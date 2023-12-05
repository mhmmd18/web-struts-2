<%@ taglib prefix = "s" uri = "/struts-tags" %>
<%@ page contentType = "text/html; charset = UTF-8" %>
			
					<script>
						$(function () {
							$.ajax({
							    url : "LoadMenu",
							    type: 'POST',
							    success: function(res){
							    	$('.side-menu').html('');
							    	var isi= '';
							    	var menu = '';
							    	var submenu = '';
							    	$.each(res.listMenu, function(i, item){
							    		var json = res.listMenu[i];
							    		var level = json["level"];
							    		if(level == 1){
							    			isi += '</ul></li><li>'+
							    						'<a><i class="'+json["icon"]+'"></i>'+json["namaMenu"]+'<span class="fa fa-chevron-down"></span></a>'+
							    						'<ul class="nav child_menu">';
							    		} else if(level == 2){
							    			isi += '<li><a href="${pageContext.request.contextPath}'+json['link']+'">'+json["namaMenu"]+'</a></li>';
							    		}
							    	});
							    	$('.side-menu').append(isi);
							    	init_sidebar();
							    }
						    });
					    })
					</script>
					<!-- sidebar menu -->
		            <div id="sidebar-menu" class="main_menu_side hidden-print main_menu">
		              <div class="menu_section">
		                <h3>General</h3>
		                
		                <ul class="nav side-menu">
		                  
		                </ul>
		                
		              </div>
		            </div>
		            <!-- /sidebar menu -->