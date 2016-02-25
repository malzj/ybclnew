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
        <h2>用户修改</h2>
        <li><span>账&nbsp;&nbsp;&nbsp;&nbsp;号：</span>
            <input name="keyboard" type="text" size="60" value="${ybUserInstance.username}" readonly/>
        </li>
        <li><span>密&nbsp;&nbsp;&nbsp;&nbsp;码：</span>
            <input name="keyboard" type="text" size="60" value="${ybUserInstance.password}" readonly/>
        </li>
        <li><span>名&nbsp;&nbsp;&nbsp;&nbsp;称：</span>
            <input name="keyboard" type="text" size="60" value="${ybUserInstance.name}" readonly/>
        </li>
        <li><span>关联角色：</span>
            <input name="keyboard" type="text" size="60" value="${ybUserInstance.position}" readonly/>
        </li>
        %{--<a href="index_07.html" target="_self" style="margin:10px 5px 10px 25px;" >提交</a><a href="index_07.html" target="_self" style="margin:10px 0;" >取消</a>--}%
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
        <a href="index_07-03.html" target="_self" style="border-bottom:none;" class="yzf_05_01_ts">删除</a><a href="index_07-02.html" target="_self" style="border-bottom:none;" class="yzf_05_01_ts">添加</a> </div>
    <div class="yzf_07_bot">
        <p style="background:#48bbb4; color:#fff;"><span>序号</span><span>姓名</span><span>账号</span><span>关联角色名称</span><span>关联个数</span></p>
        %{--<a href="index_07-01.html" target="_self"><span>YB00001</span><span>张武</span><span>zhangwu</span><span>张武</span><span>1</span></a> <a href="index_07-01.html" target="_self" style="background:#f5f5f5;"><span>YB00001</span><span>张武</span><span>zhangwu</span><span>张武</span><span>1</span></a> <a href="index_07-01.html" target="_self"><span>YB00001</span><span>张武</span><span>zhangwu</span><span>张武</span><span>1</span></a> <a href="index_07-01.html" target="_self" style="background:#f5f5f5;"><span>YB00001</span><span>张武</span><span>zhangwu</span><span>张武</span><span>1</span></a> <a href="index_07-01.html" target="_self"><span>YB00001</span><span>张武</span><span>zhangwu</span><span>张武</span><span>1</span></a> <a href="index_07-01.html" target="_self" style="background:#f5f5f5;"><span>YB00001</span><span>张武</span><span>zhangwu</span><span>张武</span><span>1</span></a> <a href="index_07-01.html" target="_self"><span>YB00001</span><span>张武</span><span>zhangwu</span><span>张武</span><span>1</span></a> <a href="index_07-01.html" target="_self" style="background:#f5f5f5;"><span>YB00001</span><span>张武</span><span>zhangwu</span><span>张武</span><span>1</span></a> <a href="index_07-01.html" target="_self"><span>YB00001</span><span>张武</span><span>zhangwu</span><span>张武</span><span>1</span></a> <a href="index_07-01.html" target="_self" style="background:#f5f5f5;"><span>YB00001</span><span>张武</span><span>zhangwu</span><span>张武</span><span>1</span></a>--}%
        <g:each in="${ybUserList}" status="i" var="userInstance">
            <g:link action="ybUsershow" target="_self" id="${userInstance?.id}"><span>${userInstance?.id}</span><span>${userInstance?.username}</span><span>${userInstance?.name}</span><span>${userInstance?.position}</span><span>${userInstance?.phone}</span></g:link>

        </g:each>
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
    %{--<section id="main-content" class="col-xs-10" style="padding-left: 0;">--}%
        %{--<section class="wrapper">--}%
            %{--<div class="middle_content">--}%
                %{--<div class="m_box">--}%
                    %{--<header class="panel-heading">--}%
                        %{--<span><i class="yh"></i>用户信息</span>--}%
                    %{--</header>--}%
                    %{--<table>--}%
                        %{--<tr>--}%
                            %{--<td>姓名：</td>--}%
                            %{--<td width="345">${fieldValue(bean: ybUserInstance, field: "name")}</td>--}%
                        %{--</tr>--}%
                        %{--<tr>--}%
                            %{--<td>用户名：</td>--}%
                            %{--<td>${fieldValue(bean: ybUserInstance, field: "username")}</td>--}%
                        %{--</tr>--}%
                        %{--<tr>--}%
                            %{--<td>密码：</td>--}%
                            %{--<td>${fieldValue(bean: ybUserInstance, field: "password")}</td>--}%
                        %{--</tr>--}%
                        %{--<tr>--}%
                            %{--<td>手机号：</td>--}%
                            %{--<td>${fieldValue(bean: ybUserInstance, field: "phone")}</td>--}%
                        %{--</tr>--}%

                        %{--<tr>--}%
                            %{--<td>--}%
                                %{--职位：--}%
                            %{--</td>--}%
                            %{--<td>${ybUserInstance?.position}</td>--}%
                        %{--</tr>--}%
                        %{--<tr>--}%
                            %{--<td>--}%
                                %{--时间：--}%
                            %{--</td>--}%
                            %{--<td>${fieldValue(bean: ybUserInstance, field: "time")}</td>--}%
                        %{--</tr>--}%
                        %{--<tr>--}%
                            %{--<td>--}%
                                %{--权限--}%
                            %{--</td>--}%
                            %{--<td>--}%
                                %{--<g:each in="${listgongneng}" status="i" var="gongneng">--}%
                                    %{--${gongneng.functionName},--}%

                                %{--</g:each>--}%
                            %{--</td>--}%
                        %{--</tr>--}%
                        %{--<tr>--}%
                            %{--<td></td>--}%
                            %{--<td align="right">--}%
                                %{--<g:form>--}%
                                    %{--<g:hiddenField name="id" value="${ybUserInstance?.id}" />--}%
                                    %{--<g:link action="ybUserEdit" id="${ybUserInstance?.id}" class="btn btn-info">修改</g:link>--}%
                                    %{--<g:actionSubmit type="submit" class="btn btn-info" action="ybUserdelete"  value="删除" onclick="return confirm('确定删除?');" />--}%
                                    %{--<a href="javascript:history.go(-1);" class="ml15 btn btn-info">取消</a>--}%
                                %{--</g:form>--}%
                            %{--</td>--}%
                        %{--</tr>--}%
                    %{--</table>--}%
                %{--</div>--}%
            %{--</div>--}%
        %{--</section>--}%
        %{--<!--main content end-->--}%

        %{--<!--footer start-->--}%
        %{--<footer class="site-footer">--}%
        %{--<div class="text-center">--}%
        %{--2013 &copy; FlatLab by VectorLab.--}%
        %{--<a href="index.html#" class="go-top">--}%
        %{--<i class="fa fa-angle-up"></i>--}%
        %{--</a>--}%
        %{--</div>--}%
        %{--</footer>--}%
        %{--<!--footer end-->--}%
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