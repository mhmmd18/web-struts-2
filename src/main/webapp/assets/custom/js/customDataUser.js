function getDataUser() {
	munculLoading();
	$.ajax({
		url: "GetDataUser",
		type: 'POST',
		success: function (res) {
			var tableData = $('#datatable').DataTable();
			tableData.clear();
			$.each(res.listData, function (i, item) {
				var json = res.listData[i];
				tableData.row.add([json["nameUser"], json["fullName"], json["roleUser"], json["isActive"], json["tglActive"], json["tglDeactive"], json["tglExpire"]]);
			});
			tableData.draw();
			hapusLoading();
		}
	});
}

$(function () {
	getDataUser();
});