function getDataTiket() {
    munculLoading();

    $.ajax({
        url: "https://project-aml-backend-production-68d7.up.railway.app/api/v1/ticket",
        type: 'GET',
        dataType: 'json',
        success: function (res) {
            console.log(res.data.Ticket);

            var ticketData = res.data.Ticket;

            var tableData = $('#datatable').DataTable();
            tableData.clear();

            $.each(ticketData, function (i, item) {
                var json = ticketData[i];
                tableData.row.add([
                    json["id"],
                    json["full_name"],
                    json["nik"],
                    json["nkk"],
                    json["id_pel"],
                    json["no_hp"],
                    json["alamat"],
                    json["lokasi"],
                    json["validasi"],
                    // Tambahkan parsing untuk buktiKtp dan buktiMeter
                    '<img src="' + json["bukti_ktp"] + '" alt="KTP Image" width="50">',
                    '<img src="' + json["bukti_meter"] + '" alt="Meter Image" width="50">'
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
