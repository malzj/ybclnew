<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 15-6-16
  Time: 下午3:59
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>用户管理</title>
    <link href="${resource(dir: 'css', file: 'style1.css')}" rel="stylesheet">
</head>

<body>
<div class="yz-01_fd">
    <ul class="yzf_07-01_fd">
        <h2>用户添加</h2>
        <li><span>账&nbsp;&nbsp;&nbsp;&nbsp;号：</span>
            <input name="keyboard" type="text" size="60" value="" />
        </li>
        <li><span>密&nbsp;&nbsp;&nbsp;&nbsp;码：</span>
            <input name="keyboard" type="text" size="60" value="" />
        </li>
        <li><span>名&nbsp;&nbsp;&nbsp;&nbsp;称：</span>
            <input name="keyboard" type="text" size="60" value="" />
        </li>
        <li><span>关联角色：</span>
            <input name="keyboard" type="text" size="60" value="" />
        </li>
        <a href="index_07.html" target="_self" style="margin:10px 5px 10px 25px;" >提交</a><a href="index_07.html" target="_self" style="margin:10px 0;" >取消</a>
    </ul>
</div>
<div class="yz_head">
    <div class="yz_head_top_wai">
        <ul class="yz_head_top">
            <li><a href="#" target="_self">消息</a></li>
            <li><a href="#" target="_self">注销</a></li>
            <li><a href="#" target="_self">修改密码</a></li>
            <li>test@163.com，欢迎您使用</li>
        </ul>
    </div>
    <div class="yz_head_nav_test">
        <ul class="yz_head_nav_test_le">
            <img src="${resource(dir: 'images', file: 'nz-11.png')}"/>
            <g:each in="${list}" status="i" var="li">


                <li><g:link action="${li?.functionLink} " target="_self">${li?.functionName}</g:link></li>

            </g:each>
            %{--<li><a href="index.html" target="_self" >首页</a></li>--}%
            %{--<li><a href="index_01.html" target="_self" >预约接待</a></li>--}%
            %{--<li><a href="index_02.html" target="_self" >维修接待</a></li>--}%
            %{--<li><a href="index_03.html" target="_self">维修领料</a></li>--}%
            %{--<li><a href="index_04.html" target="_self" >车间管理</a></li>--}%
            %{--<li><a href="index_05.html" target="_self" >库房管理</a></li>--}%
            %{--<li><a href="index_06.html" target="_self" >客户管理</a></li>--}%
            %{--<li><a href="index_07.html" target="_self" style=" background:#09938A;">用户管理</a></li>--}%
            %{--<li><a href="index_08.html" target="_self">财务管理</a></li>--}%
            %{--<li><a href="index_09.html" target="_self">系统管理</a></li>--}%
        </ul>
    </div>
</div>
<div class="yzf_01">
    <div class="yzf_01_top">
        <div class="yzf_01_top_bo"> <a href="#" target="_self" class="yzf_01_top_bo_xl">客户名称
            <ul>
                <li>客户名称</li>
                <li>电话</li>
                <li>车牌号</li>
                <li>状态</li>
            </ul>
        </a>
            <input name="keyboard" type="text" size="60" value="" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '';}" />
        </div>
        <input type="submit" formtarget="_blank" name="Submit22" value="搜索" />
        <a href="index_07-03.html" target="_self" style="border-bottom:none;" id="yzf_05_01_ts">删除</a><a href="index_07-02.html" target="_self" style="border-bottom:none;" id="yzf_05_01_ts">添加</a> </div>
    <div class="yzf_07_bot">
        <p style="background:#48bbb4; color:#fff;"><span>序号</span><span>姓名</span><span>账号</span><span>关联角色名称</span><span>关联个数</span></p>
        <a href="index_07-01.html" target="_self"><span>YB00001</span><span>张武</span><span>zhangwu</span><span>张武</span><span>1</span></a> <a href="index_07-01.html" target="_self" style="background:#f5f5f5;"><span>YB00001</span><span>张武</span><span>zhangwu</span><span>张武</span><span>1</span></a> <a href="index_07-01.html" target="_self"><span>YB00001</span><span>张武</span><span>zhangwu</span><span>张武</span><span>1</span></a> <a href="index_07-01.html" target="_self" style="background:#f5f5f5;"><span>YB00001</span><span>张武</span><span>zhangwu</span><span>张武</span><span>1</span></a> <a href="index_07-01.html" target="_self"><span>YB00001</span><span>张武</span><span>zhangwu</span><span>张武</span><span>1</span></a> <a href="index_07-01.html" target="_self" style="background:#f5f5f5;"><span>YB00001</span><span>张武</span><span>zhangwu</span><span>张武</span><span>1</span></a> <a href="index_07-01.html" target="_self"><span>YB00001</span><span>张武</span><span>zhangwu</span><span>张武</span><span>1</span></a> <a href="index_07-01.html" target="_self" style="background:#f5f5f5;"><span>YB00001</span><span>张武</span><span>zhangwu</span><span>张武</span><span>1</span></a> <a href="index_07-01.html" target="_self"><span>YB00001</span><span>张武</span><span>zhangwu</span><span>张武</span><span>1</span></a> <a href="index_07-01.html" target="_self" style="background:#f5f5f5;"><span>YB00001</span><span>张武</span><span>zhangwu</span><span>张武</span><span>1</span></a>
        <div id="yz_body_ri_02_01_nr_ssy"> <a href="#" target="_self" style="background:#fff;">1</a><a href="#" target="_self">2</a><a href="#" target="_self">3</a><a href="#" target="_self">4</a><a href="#" target="_self">5</a>
            <button>下一页</button>
            <button>上一页</button>
        </div>
    </div>
</div>
<div class="yz_foot">
    <dl class="yz_foot_wx">
        <dt><img src="${resource(dir: 'images', file: 'wx_d-03.jpg')}"  /></dt>
        <dd>京ICP备14024271号-1 Copyright © YBCL 2014 .All rights reserved.</dd>
    </dl>
</div>
</body>
</html>












%{--<html>--}%
%{--<head>--}%
    %{--<title>亦宝车联后台管理系统</title>--}%

    %{--<!-- Bootstrap core CSS -->--}%
    %{--<link href="${resource(dir: 'css', file: 'bootstrap.min.css')}" rel="stylesheet">--}%
    %{--<link href="${resource(dir: 'css', file: 'bootstrap-reset.css')}" rel="stylesheet">--}%
    %{--<!--external css-->--}%
    %{--<link href="${resource(dir: 'assets/font-awesome/css', file: 'font-awesome.css')}" rel="stylesheet">--}%
    %{--<link href="${resource(dir: 'assets/jquery-easy-pie-chart', file: 'jquery.easy-pie-chart.css')}" rel="stylesheet">--}%
    %{--<link href="${resource(dir: 'css', file: 'owl.carousel.css')}" rel="stylesheet">--}%

    %{--<!--right slidebar-->--}%
    %{--<link href="${resource(dir: 'css', file: 'slidebars.css')}" rel="stylesheet">--}%

    %{--<!-- Custom styles for this template -->--}%
    %{--<link href="${resource(dir: 'css', file: 'styleone.css')}" rel="stylesheet">--}%
    %{--<link href="${resource(dir: 'css', file: 'style-responsive.css')}" rel="stylesheet">--}%

    %{--<link href="${resource(dir: 'css', file: 'ownset.css')}" rel="stylesheet">--}%
%{--</head>--}%

%{--<body>--}%

%{--<section id="container" >--}%
    %{--<!--header start-->--}%
    %{--<g:render template="header" />--}%
    %{--<!--header end-->--}%
    %{--<!--sidebar start-->--}%
    %{--<g:render template="sidebar" />--}%
    %{--<!--sidebar end-->--}%
    %{--<!--main content start-->--}%
    %{--<section id="main-content">--}%
        %{--<section class="wrapper mt80">--}%
            %{--<div class="row">--}%
                %{--<div class="col-lg-12">--}%
                    %{--<section class="panel">--}%


                        %{--<header class="panel-heading">--}%
                            %{--新建用户--}%
                        %{--</header>--}%
                        %{--<div class="panel-body">--}%
                            %{--<g:form class="form-horizontal tasi-form" controller="ybLogin" action="ybUserSave" method= "post" enctype= "multipart/form-data">--}%
                                %{--<table>--}%
                                    %{--<tr>--}%
                                        %{--<td>姓名：</td>--}%
                                        %{--<td width="345"><input name="name" class="form-control form-control-inline input-medium default-date-picker" type="text" value="${userInstance?.name}"></td>--}%
                                    %{--</tr>--}%
                                    %{--<tr>--}%
                                        %{--<td>用户名：</td>--}%
                                        %{--<td><input name="username" class="form-control form-control-inline input-medium default-date-picker" type="text" value="${userInstance?.username}"></td>--}%
                                    %{--</tr>--}%
                                    %{--<tr>--}%
                                        %{--<td>密码：</td>--}%
                                        %{--<td><input name="password" class="form-control form-control-inline input-medium default-date-picker" type="text" value="${userInstance?.password}"></td>--}%
                                    %{--</tr>--}%

                                    %{--<tr>--}%
                                        %{--<td>电话：</td>--}%
                                        %{--<td><input name="phone" class="form-control form-control-inline input-medium default-date-picker" type="text" value="${userInstance?.phone}"></td>--}%
                                    %{--</tr>--}%


                                    %{--<tr>--}%
                                        %{--<td>职位：</td>--}%
                                        %{--<td><input name="position" class="form-control form-control-inline input-medium default-date-picker" type="text" value="${userInstance?.address}"></td>--}%
                                    %{--</tr>--}%
                                    %{--<tr>--}%
                                %{--<tr>--}%
                                    %{--<td>权限：</td>--}%
                                    %{--<td>--}%
                                        %{--<g:each in="${gongnenglist}" status="i" var="gongneng">--}%
                                            %{--<label class="checkbox-inline">--}%
                                                %{--<input name="gongneng" type="checkbox" id="inlineCheckbox1" value="${gongneng.id}"> ${gongneng.functionName}--}%
                                            %{--</label>--}%
                                        %{--</g:each>--}%

                                    %{--</td>--}%
                                %{--</tr>--}%
                                        %{--<td>--}%
                                            %{--创建时间：--}%
                                        %{--</td>--}%
                                        %{--<td>--}%
                                            %{--<g:datePicker name="time" precision="day"  value="${companyUserInstance?.dateCreat}"  />--}%
                                        %{--</td>--}%
                                    %{--</tr>--}%
                                    %{--<tr>--}%
                                        %{--<td></td>--}%
                                        %{--<td align="right"><button type="submit" class="btn btn-info">保存</button><a href="javascript:history.go(-1);" class="ml20 btn btn-info">取消</a></td>--}%
                                    %{--</tr>--}%
                                %{--</table>--}%
                            %{--</g:form>--}%
                        %{--</div>--}%
                    %{--</section>--}%
                %{--</div>--}%
            %{--</div>--}%


        %{--</section>--}%
    %{--</section>--}%

%{--</section>--}%

%{--<!-- js placed at the end of the document so the pages load faster -->--}%
%{--<script src="${resource(dir: 'js', file: 'jquery.js')}"></script>--}%
%{--<script src="${resource(dir: 'js', file: 'bootstrap.min.js')}"></script>--}%
%{--<script class="include" type="text/javascript" src="${resource(dir: 'js', file: 'jquery.dcjqaccordion.2.7.js')}"></script>--}%
%{--<script src="${resource(dir: 'js', file: 'jquery.scrollTo.min.js')}"></script>--}%
%{--<script src="${resource(dir: 'js', file: 'jquery.nicescroll.js')}" type="text/javascript"></script>--}%
%{--<script src="${resource(dir: 'js', file: 'jquery.sparkline.js')}" type="text/javascript"></script>--}%
%{--<script src="${resource(dir: 'assets/jquery-easy-pie-chart/', file: 'jquery.easy-pie-chart.js')}"></script>--}%
%{--<script src="${resource(dir: 'js', file: 'owl.carousel.js')}" ></script>--}%
%{--<script src="${resource(dir: 'js', file: 'jquery.customSelect.min.js')}" ></script>--}%
%{--<script src="${resource(dir: 'js', file: 'respond.min.js')}" ></script>--}%

%{--<!--right slidebar-->--}%
%{--<script src="${resource(dir: 'js', file: 'slidebars.min.js')}"></script>--}%

%{--<!--common script for all pages-->--}%
%{--<script src="${resource(dir: 'js', file: 'common-scripts.js')}"></script>--}%

%{--<!--script for this page-->--}%
%{--<script src="${resource(dir: 'js', file: 'sparkline-chart.js')}"></script>--}%
%{--<script src="${resource(dir: 'js', file: 'easy-pie-chart.js')}"></script>--}%
%{--<script src="${resource(dir: 'js', file: 'count.js')}"></script>--}%



%{--</body>--}%
%{--</html>--}%