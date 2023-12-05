// init all custom.min.js
function init_min_js(){
	init_sidebar();
	init_flot_chart();
	init_starrr();
	init_JQVmap();
	init_skycons();
	init_chart_doughnut();
	init_gauge();
	init_sparklines();
	init_autocomplete();
	init_autosize();
	init_parsley();
	init_TagsInput();
	init_select2();
	init_wysiwyg();
	init_cropper();
	init_knob();
	init_InputMask();
	init_ColorPicker();
	init_IonRangeSlider();
	init_daterangepicker();
	init_daterangepicker_right();
	init_daterangepicker_single_call();
	init_daterangepicker_reservation();
	init_SmartWizard();
	init_validator();
	init_PNotify();
	init_CustomNotification();
	init_EasyPieChart();
	init_charts();
	init_compose();
	init_calendar();
	init_DataTables();
	init_morris_charts();
	init_echarts();
}

//loading
function munculLoading(){
	$('#overlay').removeAttr("style");
}
function hapusLoading(){
	$('#overlay').css("display","none");
}

$(function () {
	//init_min_js();
})