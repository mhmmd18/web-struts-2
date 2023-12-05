<%@ taglib prefix="s" uri="/struts-tags" %>
    <%@ page contentType="text/html; charset = UTF-8" %>
        <%@include file="../i-header.jsp" %>

            <!-- page content -->
            <div class="right_col" role="main">
                <div class="row">
                    <div class="col-md-12 col-sm-12 col-xs-12">
                        <div class="x_panel">
                            <div class="x_title">
                                <h2>Data Tiket</h2>
                                <ul class="nav navbar-right panel-toolbox">
                                    <li>
                                        <a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                                    </li>
                                </ul>
                                <div class="clearfix"></div>
                            </div>
                            <div class="x_content">
                                <table id="datatable" class="table table-striped table-bordered">
                                    <thead>
                                        <tr>
                                            <th>ID</th>
                                            <th>Full Name</th>
                                            <th>NIK</th>
                                            <th>NKK</th>
                                            <th>ID Pel</th>
                                            <th>No. HP</th>
                                            <th>Alamat</th>
                                            <th>Lokasi</th>
                                            <th>Validasi</th>
                                            <th>Bukti KTP</th>
                                            <th>Bukti Meter</th>
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
                src="${pageContext.request.contextPath}/assets/custom/js/customDataTiket.js"> </script>

            <%@ include file="../i-footer.jsp" %>