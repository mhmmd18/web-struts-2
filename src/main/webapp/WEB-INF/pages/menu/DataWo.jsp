<%@ taglib prefix="s" uri="/struts-tags" %>
    <%@ page contentType="text/html; charset = UTF-8" %>
        <%@include file="../i-header.jsp" %>

            <!-- page content -->
            <div class="right_col" role="main">
                <div class="row">
                    <div class="col-md-12 col-sm-12 col-xs-12">
                        <div class="x_panel">
                            <div class="x_title">
                                <h2>Data Wo</h2>
                                <ul class="nav navbar-right panel-toolbox">
                                    <li>
                                        <a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                                    </li>
                                </ul>
                                <div class="clearfix"></div>
                            </div>
                            <div class="x_content">

                                <div class="container">
                                    <label for="select2-multi">Pilih Nama Provinsi</label>
                                    <div class="row">
                                        <div class="col-md-6">
                                            <select id="select2-multi" class="form-control">
                                                <!-- Tag Struts untuk menghasilkan opsi secara dinamis -->
                                                <s:iterator value="listData" status="status">
                                                    <option value="<s:property value='id'/>">
                                                        <s:property value='name' />
                                                    </option>
                                                </s:iterator>
                                            </select>
                                        </div>
                                    </div>
                                </div>



                                <table id="datatable" class="table table-striped table-bordered">
                                    <thead>
                                        <tr>
                                            <th>Id</th>
                                            <th>Name</th>
                                            <th>Provinsi</th>
                                        </tr>
                                    </thead>
                                    <tbody>

                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- /page content -->
            <script type="text/javascript"
                src="${pageContext.request.contextPath}/assets/custom/js/customDataWo.js"> </script>

            <script>
                $(document).ready(function () {
                    // Inisialisasi Select2
                    $('#select2-multi').select2();

                    // Ambil data dari server menggunakan Ajax
                    $.ajax({
                        url: "GetDataProvinsi",
                        type: 'GET',
                        dataType: 'json', // Pastikan server mengembalikan data dalam format JSON
                        success: function (res) {
                            console.log('Data dari server:', res.listData);

                            // Tambahkan opsi ke dalam elemen select
                            $('#select2-multi').empty(); // Hapus opsi yang mungkin sudah ada sebelumnya

                            $.each(res.listData, function (index, option) {
                                $('#select2-multi').append('<option value="' + option.id + '">' + option.name + '</option>');
                            });

                            // Pembaruan untuk Select2 setelah menambahkan opsi baru
                            $('#select2-multi').select2('destroy').select2();
                        },
                        error: function (error) {
                            console.error('Error fetching data:', error);
                        }
                    });
                });

            </script>




            <%@include file="../i-footer.jsp" %>