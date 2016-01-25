<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 15-6-16
  Time: 下午3:59
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>亦宝车联后台管理系统</title>

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
    <section id="main-content">
        <section class="wrapper mt80">
            <div class="row">
                <div class="col-lg-12">
                    <section class="panel">
                        <header class="panel-heading">
                            <h2 style="float:left;">权限列表</h2>
                            <g:link controller="ybLogin" action="fwsRoleCreate" class="btn btn-info" style="display:block;float:right;">新建权限</g:link>
                            <div style="clear:both;"></div>
                        </header>
                        <table class="table table-striped table-advance table-hover">
                            <thead>
                            <tr>

                                <th>服务商用户ID</th>
                                <th>服务商功能ID</th>
                                <th>时间</th>
                            </tr>
                            </thead>
                            <tbody>
                            <g:each in="${fwsUserRoleInstanceList}" status="i" var="userInstance">
                                <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
                                    %{--<td>${userInstance.}</td>--}%
                                    <td>${userInstance.fwsUserRoleId}</td>
                                    <td>${userInstance.fwsUserRoleGongNengId}</td>
                                    <td>${userInstance.fwsUserRoleTime}</td>



                                    <td>
                                        <g:link action="fwsUserRoleshow" id="${userInstance?.id}" class="btn btn-success btn-xs"><i class="fa fa-eye"></i></g:link>
                                        <g:link action="fwsUserRoleedit" id="${userInstance?.id}" class="btn btn-primary btn-xs"><i class="fa fa-pencil"></i></g:link>
                                        <g:link action="fwsUserdelete" id="${userInstance?.id}" class="btn btn-danger btn-xs" onclick="return confirm('确定删除？');"><i class="fa fa-trash-o "></i></g:link>
                                    </td>


                                </tr>
                            </g:each>

                            </tbody>
                        </table>
                        <div class="pagination">
                            <g:paginate total="${fwsUserRoleInstanceTotal}" />
                        </div>
                    </section>
                </div>
            </div>


        </section>
    </section>
    <!--main content end-->

    <!-- Right Slidebar start -->

    <!-- Right Slidebar end -->

    <!--footer start-->
    %{--<footer class="site-footer">--}%
    %{--<div class="text-center">--}%
    %{--2013 &copy; FlatLab by VectorLab.--}%
    %{--<a href="index.html#" class="go-top">--}%
    %{--<i class="fa fa-angle-up"></i>--}%
    %{--</a>--}%
    %{--</div>--}%
    %{--</footer>--}%
    <!--footer end-->
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

%{--<script>--}%

%{--//owl carousel--}%

%{--$(document).ready(function() {--}%
%{--$("#owl-demo").owlCarousel({--}%
%{--navigation : true,--}%
%{--slideSpeed : 300,--}%
%{--paginationSpeed : 400,--}%
%{--singleItem : true,--}%
%{--autoPlay:true--}%

%{--});--}%
%{--});--}%

%{--//custom select box--}%

%{--$(function(){--}%
%{--$('select.styled').customSelect();--}%
%{--});--}%

%{--</script>--}%

</body>
</html>