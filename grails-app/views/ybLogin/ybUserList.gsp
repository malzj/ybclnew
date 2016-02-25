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
        <g:link action="ybUserCreate" target="_self"><span class="yzf_05_01_ts">删除</span></g:link><g:link action="ybUserCreate" target="_self"><span class="yzf_05_01_ts">添加</span></g:link>
    </div>
    <div class="yzf_07_bot">
        <p style="background:#48bbb4; color:#fff;"><span>序号</span><span>账号</span><span>名称</span><span>关联角色名称</span><span>电话</span></p>
        %{--<g:each in="${ybUserInstanceList}" status="i" var="userInstance">--}%
            %{--<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">--}%
                %{--<td>${userInstance.id}</td>--}%
                %{--<td>${userInstance.username}</td>--}%
                %{--<td>${userInstance.name}</td>--}%
                %{--<td>${userInstance.position}</td>--}%
                %{--<td>${userInstance.phone}</td>--}%



                %{--<td>--}%
                    %{--<g:link action="ybUsershow" id="${userInstance?.id}" class="btn btn-success btn-xs"><i class="fa fa-eye"></i></g:link>--}%
                    %{--<g:link action="ybUserEdit" id="${userInstance?.id}" class="btn btn-primary btn-xs"><i class="fa fa-pencil"></i></g:link>--}%
                    %{--<g:link action="ybUserdelete" id="${userInstance?.id}" class="btn btn-danger btn-xs" onclick="return confirm('确定删除？');"><i class="fa fa-trash-o "></i></g:link>--}%
                %{--</td>--}%


            %{--</tr>--}%
        %{--</g:each>--}%
        <g:each in="${ybUserInstanceList}" status="i" var="userInstance">
            <g:link action="ybUsershow" target="_self" id="${userInstance?.id}"><span>${userInstance?.id}</span><span>${userInstance?.username}</span><span>${userInstance?.name}</span><span>${userInstance?.position}</span><span>${userInstance?.phone}</span></g:link>
        %{--<a href="index_07-01.html" target="_self" style="background:#f5f5f5;"><span>YB00001</span><span>zhangwu</span><span>维修管理员</span><span>张武</span><span>1</span></a>--}%
        %{--<a href="index_07-01.html" target="_self"><span>YB00001</span><span>zhangwu</span><span>维修管理员</span><span>张武</span><span>1</span></a>--}%
        %{--<a href="index_07-01.html" target="_self" style="background:#f5f5f5;"><span>YB00001</span><span>zhangwu</span><span>维修管理员</span><span>张武</span><span>1</span></a>--}%
        %{--<a href="index_07-01.html" target="_self"><span>YB00001</span><span>zhangwu</span><span>维修管理员</span><span>张武</span><span>1</span></a>--}%
        %{--<a href="index_07-01.html" target="_self" style="background:#f5f5f5;"><span>YB00001</span><span>zhangwu</span><span>维修管理员</span><span>张武</span><span>1</span></a>--}%
        %{--<a href="index_07-01.html" target="_self"><span>YB00001</span><span>zhangwu</span><span>维修管理员</span><span>张武</span><span>1</span></a>--}%
        %{--<a href="index_07-01.html" target="_self" style="background:#f5f5f5;"><span>YB00001</span><span>zhangwu</span><span>维修管理员</span><span>张武</span><span>1</span></a>--}%
        %{--<a href="index_07-01.html" target="_self"><span>YB00001</span><span>zhangwu</span><span>维修管理员</span><span>张武</span><span>1</span></a>--}%
        %{--<a href="index_07-01.html" target="_self" style="background:#f5f5f5;"><span>YB00001</span><span>zhangwu</span><span>维修管理员</span><span>张武</span><span>1</span></a>--}%
        </g:each>
            <div id="yz_body_ri_02_01_nr_ssy"> <a href="#" target="_self" style="background:#fff;">1</a><a href="#" target="_self">2</a><a href="#" target="_self">3</a><a href="#" target="_self">4</a><a href="#" target="_self">5</a>
            <button>下一页</button>
            <button>上一页</button>
        </div>
    </div>
</div>
<div class="yz_foot">
    <dl class="yz_foot_wx">
        <dt><img src="${resource(dir: 'images', file: 'wx_d-03.jpg')}" /></dt>
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
                        %{--<h2 style="float:left;">用户列表</h2>--}%
                        %{--<g:link controller="ybLogin" action="ybUserCreate" class="btn btn-info" style="display:block;float:right;">新建用户</g:link>--}%
                        %{--<div style="clear:both;"></div>--}%
                    %{--</header>--}%
                    %{--<table class="table table-striped table-advance table-hover">--}%
                        %{--<thead>--}%
                        %{--<tr>--}%

                            %{--<th>用户名</th>--}%
                            %{--<th>姓名</th>--}%
                            %{--<th>手机号</th>--}%
                            %{--<th>职位</th>--}%
                            %{--<th>时间</th>--}%
                            %{--<th>操作</th>--}%
                        %{--</tr>--}%
                        %{--</thead>--}%
                        %{--<tbody>--}%
                        %{--<g:each in="${ybUserInstanceList}" status="i" var="userInstance">--}%
                            %{--<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">--}%
                                %{--<td>${userInstance.username}</td>--}%
                                %{--<td>${userInstance.name}</td>--}%
                                %{--<td>${userInstance.phone}</td>--}%
                                %{--<td>${userInstance.position}</td>--}%
                                %{--<td>${userInstance.time}</td>--}%



                                %{--<td>--}%
                                    %{--<g:link action="ybUsershow" id="${userInstance?.id}" class="btn btn-success btn-xs"><i class="fa fa-eye"></i></g:link>--}%
                                    %{--<g:link action="ybUserEdit" id="${userInstance?.id}" class="btn btn-primary btn-xs"><i class="fa fa-pencil"></i></g:link>--}%
                                    %{--<g:link action="ybUserdelete" id="${userInstance?.id}" class="btn btn-danger btn-xs" onclick="return confirm('确定删除？');"><i class="fa fa-trash-o "></i></g:link>--}%
                                %{--</td>--}%


                            %{--</tr>--}%
                        %{--</g:each>--}%

                        %{--</tbody>--}%
                    %{--</table>--}%
                    %{--<div class="pagination">--}%
                        %{--<g:paginate total="${ybUserInstanceTotal}" />--}%
                    %{--</div>--}%
                %{--</section>--}%
            %{--</div>--}%
        %{--</div>--}%


    %{--</section>--}%
%{--</section>--}%
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
%{--</section>--}%

