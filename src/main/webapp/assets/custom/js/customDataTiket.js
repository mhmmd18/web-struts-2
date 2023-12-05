function getDataTiket() {
    munculLoading();

    $.ajax({
        url: "https://project-aml-backend-production-68d7.up.railway.app/api/v1/ticket",
        type: 'GET',
        dataType: 'json',
        success: function (res) {
            console.log(res);

            var ticketData = res.ticket;

            var tableData = $('#datatable').DataTable();
            tableData.clear();

            $.each(ticketData, function (i, item) {
                var json = ticketData[i];
                tableData.row.add([
                    json["id"],
                    json["fullName"],
                    json["nik"],
                    json["nkk"],
                    json["idPel"],
                    json["noHp"],
                    json["alamat"],
                    json["lokasi"],
                    json["validasi"],
                    json["buktiKtp"],
                    json["buktiMeter"]
                ]);
            });

            tableData.draw();
            hapusLoading();
        },
        error: function (xhr, status, error) {
            console.error("Error fetching data from API:", error);
            hapusLoading();
        }
    });
}

$(document).ready(function () {
    // Inisialisasi DataTables
    $('#datatable').DataTable();
    getDataTiket();
});


