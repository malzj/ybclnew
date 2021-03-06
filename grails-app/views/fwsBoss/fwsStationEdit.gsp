<%--
  Created by IntelliJ IDEA.
  User: wangjunmin
  Date: 16/1/25
  Time: 上午12:31
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>${name}后台管理系统</title>

    <!-- Bootstrap core CSS -->
    <link href="${resource(dir: 'css', file: 'bootstrap.min.css')}" rel="stylesheet">
    <link href="${resource(dir: 'css', file: 'bootstrap-reset.css')}" rel="stylesheet">
    <!--external css-->
    <link href="${resource(dir: 'assets/font-awesome/css', file: 'font-awesome.css')}" rel="stylesheet">
    <link href="${resource(dir: 'assets/jquery-easy-pie-chart', file: 'jquery.easy-pie-chart.css')}" rel="stylesheet">
    <link href="${resource(dir: 'css', file: 'owl.carousel.css')}" rel="stylesheet">

    <!--right slidebar-->
    <link href="${resource(dir: 'css', file: 'slidebars.css')}" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="${resource(dir: 'css', file: 'styleone.css')}" rel="stylesheet">
    <link href="${resource(dir: 'css', file: 'style-responsive.css')}" rel="stylesheet">

    <link href="${resource(dir: 'css', file: 'ownset.css')}" rel="stylesheet">
</head>

<body>

<section id="container" >
    <!--header start-->
    <g:render template="header" />
    <!--header end-->
    <!--sidebar start-->
    <g:render template="sidebar" />
    <!--sidebar end-->
    <!--main content start-->
    <section id="main-content" class="col-xs-10" style="padding-left: 0;">
        <section class="wrapper">
            <div class="middle_content">
                <div class="m_box">
                    <header class="panel-heading">
                        <span><i class="yh"></i>修改工位</span>
                    </header>
                    <g:form action="fwsStationUpdate" method="post">

                        <g:hiddenField name="id" value="${fwsStationInstance?.id}" />
                        <g:hiddenField name="version" value="${fwsStationInstance?.version}" />
                        <table>
                            <tr>
                                <td>工位名称：</td>
                                <td width="345"><input name="stationName" class="form-control form-control-inline input-medium default-date-picker" type="text" value="${fwsStationInstance?.stationName}"></td>
                            </tr>
                            <tr>
                                <td>工位个数：</td>
                                <td><input name="stationNumber" class="form-control form-control-inline input-medium default-date-picker" type="text" value="${fwsStationInstance?.stationNumber}"></td>
                            </tr>
                            <tr>
                                <td>服务商店Id：</td>
                                <td><input name="fwsShopId" class="form-control form-control-inline input-medium default-date-picker" type="text" value="${fwsStationInstance?.fwsShopId}"></td>
                            </tr>
                            <tr>
                                <td></td>
                                <td align="right"><button type="submit" class="btn btn-info">保存</button><a href="javascript:history.go(-1);" class="ml20 btn btn-info">取消</a></td>
                            </tr>
                        </table>
                    </g:form>
                </div>
            </div>
        </section>
        <!--main content end-->

    </section>

</section>

<!-- js placed at the end of the document so the pages load faster -->
<script src="${resource(dir: 'js', file: 'jquery.js')}"></script>
<script src="${resource(dir: 'js', file: 'bootstrap.min.js')}"></script>
<script class="include" type="text/javascript" src="${resource(dir: 'js', file: 'jquery.dcjqaccordion.2.7.js')}"></script>
<script src="${resource(dir: 'js', file: 'jquery.scrollTo.min.js')}"></script>
<script src="${resource(dir: 'js', file: 'jquery.nicescroll.js')}" type="text/javascript"></script>
<script src="${resource(dir: 'js', file: 'jquery.sparkline.js')}" type="text/javascript"></script>
<script src="${resource(dir: 'assets/jquery-easy-pie-chart/', file: 'jquery.easy-pie-chart.js')}"></script>
<script src="${resource(dir: 'js', file: 'owl.carousel.js')}" ></script>
<script src="${resource(dir: 'js', file: 'jquery.customSelect.min.js')}" ></script>
<script src="${resource(dir: 'js', file: 'respond.min.js')}" ></script>

<!--right slidebar-->
<script src="${resource(dir: 'js', file: 'slidebars.min.js')}"></script>

<!--common script for all pages-->
<script src="${resource(dir: 'js', file: 'common-scripts.js')}"></script>

<!--script for this page-->
<script src="${resource(dir: 'js', file: 'sparkline-chart.js')}"></script>
<script src="${resource(dir: 'js', file: 'easy-pie-chart.js')}"></script>
<script src="${resource(dir: 'js', file: 'count.js')}"></script>



</body>
</html>