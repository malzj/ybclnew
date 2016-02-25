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
    <title>客户管理</title>
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
            %{--<li><a href="index_06.html" target="_self" style=" background:#09938A;">客户管理</a></li>--}%
            %{--<li><a href="index_07.html" target="_self">用户管理</a></li>--}%
            %{--<li><a href="index_08.html" target="_self">财务管理</a></li>--}%
            %{--<li><a href="index_09.html" target="_self">系统管理</a></li>--}%
        </ul>
    </div>
</div>
<div class="yzf_06">
    <div class="yzf_02_01_top">
        <h2>客户信息</h2>
        <ul class="yzf_02_01_top_01">
            <li>客户编号：<span>BH-KR-1035</span></li>
            <li>消费次数：<span>5</span></li>
            <li>是否&nbsp;VIP：<span>是</span></li>
            <li>客户地址：<span>大兴区景园北街2号62-1</span></li>
        </ul>
        <ul class="yzf_02_01_top_02">
            <li>客户姓名：<span>张开成</span></li>
            <li>合计消费：<span>4248(元)</span></li>
            <li>印象评价：<span>优</span></li>
        </ul>
        <ul class="yzf_02_01_top_03">
            <li>客户电话：<span>13699276647</span></li>
            <li>欠账情况：<span>0</span></li>
            <li>客户单位：<span>亦宝车联（北京）通讯科技有限公司</span></li>
        </ul>
        <!--
    <ul class="yzf_02_01_top_02">
      <li>车牌号码：<span>京NYB888</span></li>
      <li>车辆品牌：<span>宝马</span></li>
      <li>车辆类型：<span>X5</span></li>
      <li>车身颜色：<span>白</span></li>
      <li>油表状态：<span>30%</span></li>
      <li>发动机号：<span>C190C8008</span></li>
      <li>维修类别：<span>保养</span></li>
      <li>进厂里程：<span>10576(km)</span></li>
    </ul>
    <ul class="yzf_02_01_top_03">
      <li>顺&nbsp;序&nbsp;号：<span>HJ-0256</span></li>
      <li>预定时间：<span>2015年6月17日</span></li>
      <li>预定项目：<span>10000(km)常规</span></li>
      <li>预计时间：<span>1小时</span></li>
      <li>登记时间：<span>2015年6月17日</span></li>
      <li>入场时间：<span>2015年6月17日</span></li>
      <li>接&nbsp;车&nbsp;员：<span>李春荣</span></li>
      <li>设&nbsp;备&nbsp;号：<span>3541880412357</span></li>
    </ul>
    -->
    </div>
    <div class="yzf_02_01_bot">
        <div class="yzf_06_01_bot_bo">
            <p style="background:#f8f8f8; border-bottom:1px #48bbb4 solid;"><span>时间</span><span>项目</span><span>配件</span><span>车牌号</span><span>品牌</span><span>车系</span><span>消费金额</span><span>欠账情况</span><span>服务评价</span></p>
            <p><span>2015-06-27</span><span>保养</span><span>机油、机滤</span><span>京NYB888</span><span>宝马</span><span>X5</span><span>995(元)</span><span>0</span><span>5星</span></p>
            <p style="background:#f9f9f9;"><span>2015-06-27</span><span>保养</span><span>机油、机滤</span><span>京NYB888</span><span>宝马</span><span>X5</span><span>995(元)</span><span>0</span><span>5星</span></p>
            <p><span>2015-06-27</span><span>保养</span><span>机油、机滤</span><span>京NYB888</span><span>宝马</span><span>X5</span><span>995(元)</span><span>0</span><span>5星</span></p>
            <p style="background:#f9f9f9;"><span>2015-06-27</span><span>保养</span><span>机油、机滤</span><span>京NYB888</span><span>宝马</span><span>X5</span><span>995(元)</span><span>0</span><span>5星</span></p>
            <p><span>2015-06-27</span><span>保养</span><span>机油、机滤</span><span>京NYB888</span><span>宝马</span><span>X5</span><span>995(元)</span><span>0</span><span>5星</span></p>
        </div>
        <a href="index_06.html" target="_self" id="yzf_bc">提交</a><a href="index_06.html" target="_self" id="yzf_qx">取消</a> </div>
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
                        %{--<span><i class="yh"></i>客户信息</span>--}%
                    %{--</header>--}%
                    %{--<table>--}%
                        %{--<tr>--}%
                            %{--<td>姓名：</td>--}%
                            %{--<td width="345">${fieldValue(bean: ybClientInstance, field: "name")}</td>--}%
                        %{--</tr>--}%
                        %{--<tr>--}%
                            %{--<td>用户名：</td>--}%
                            %{--<td>${fieldValue(bean: ybClientInstance, field: "username")}</td>--}%
                        %{--</tr>--}%
                        %{--<tr>--}%
                            %{--<td>密码：</td>--}%
                            %{--<td>${fieldValue(bean: ybClientInstance, field: "password")}</td>--}%
                        %{--</tr>--}%
                        %{--<tr>--}%
                            %{--<td>手机号：</td>--}%
                            %{--<td>${fieldValue(bean: ybClientInstance, field: "phone")}</td>--}%
                        %{--</tr>--}%

                        %{--<tr>--}%
                            %{--<td>店数                         </td>--}%
                            %{--<td>${ybClientInstance?.number}</td>--}%
                        %{--</tr>--}%
                        %{--<tr>--}%
                            %{--<td>--}%
                                      %{--开始时间--}%
                            %{--</td>--}%
                            %{--<td>${fieldValue(bean: ybClientInstance, field: "beginTime")}</td>--}%
                        %{--</tr>--}%
                        %{--<tr>--}%
                            %{--<td>--}%
                                %{--开始时间--}%
                            %{--</td>--}%
                            %{--<td>${fieldValue(bean: ybClientInstance, field: "overTime")}</td>--}%
                        %{--</tr>--}%

                        %{--<tr>--}%
                            %{--<td></td>--}%
                            %{--<td align="right">--}%
                                %{--<g:form>--}%
                                    %{--<g:hiddenField name="id" value="${ybClientInstance?.id}" />--}%
                                    %{--<g:link action="ybClientEdit" id="${ybClientInstance?.id}" class="btn btn-info">修改</g:link>--}%
                                    %{--<g:actionSubmit type="submit" class="btn btn-info" action="ybClientDelete"  value="删除" onclick="return confirm('确定删除?');" />--}%
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