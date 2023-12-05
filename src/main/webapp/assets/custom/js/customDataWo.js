function getDataWo() {
    munculLoading();
    $.ajax({
        url: "GetDataWo",
        type: 'POST',
        success: function (res) {
            var tableData = $('#datatable').DataTable();
            tableData.clear();
            $.each(res.listData, function (i, item) {
                var json = res.listData[i];
                tableData.row.add([json["id"], json["name"], json["kdProv"]]);
            });

            tableData.draw();
            hapusLoading();
        }
    });
}

$(function () {
    getDataWo();
});