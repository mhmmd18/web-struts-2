<%@ taglib prefix="s" uri="/struts-tags" %>
    <%@ page contentType="text/html; charset = UTF-8" %>
        <%@include file="../i-header.jsp" %>

            <!-- page content -->
            <div class="right_col" role="main">
                <div class="row">
                    <div class="col-md-12 col-sm-12 col-xs-12">
                        <div class="x_panel">
                            <div class="x_title">
                                <h2>Data User</h2>
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
                                            <th>User</th>
                                            <th>Fullname</th>
                                            <th>Role</th>
                                            <th>Aktif</th>
                                            <th>TglAktif</th>
                                            <th>TglDeaktif</th>
                                            <th>TglExpire</th>
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
                src="${pageContext.request.contextPath}/assets/custom/js/customDataUser.js"> </script>

            <%@include file="../i-footer.jsp" %>