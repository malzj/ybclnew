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
        <g:link action="ybUserCreate" target="_self"><span class="yzf_05_01_ts">删除</span></g:link><a href="javascrip:;" target="_self" id="ybGongNengCreate"><span class="yzf_05_01_ts">添加</span></a>
    </div>
    <div class="yzf_07_bot">
        <p style="background:#48bbb4; color:#fff;"><span>序号</span><span>功能名称</span><span>功能链接</span><span>时间</span></p>

        <g:each in="${ybGongNengInstanceList}" status="i" var="gnInstance">
            <a class="ybGongNengEdit" href="javascript:;"><span>${gnInstance.id}</span><span>${gnInstance.functionName}</span><span>${gnInstance.functionLink}</span><span>${gnInstance.time}</span>

            </a>

        </g:each>


        <div class="pagination">
            <g:paginate total="${ybGongNengInstanceTotal}" />
        </div>

        %{--<div id="yz_body_ri_02_01_nr_ssy"> <a href="#" target="_self" style="background:#fff;">1</a><a href="#" target="_self">2</a><a href="#" target="_self">3</a><a href="#" target="_self">4</a><a href="#" target="_self">5</a>--}%
            %{--<button>下一页</button>--}%
            %{--<button>上一页</button>--}%
        %{--</div>--}%
    </div>
</div>
<div class="yz_foot">
    <dl class="yz_foot_wx">
        <dt><img src="${resource(dir: 'images', file: 'wx_d-03.jpg')}" /></dt>
        <dd>京ICP备14024271号-1 Copyright © YBCL 2014 .All rights reserved.</dd>
    </dl>
</div>
<div class="yz-01_fd create">
    <ul class="yzf_07-01_fd">
        <h2>用户添加</h2>
        <g:form controller="ybLogin" action="fwsGongNengSave" method= "post" enctype= "multipart/form-data">
            <li><span>功能名称：</span>
                <input name="username" type="text" size="60" value="" class="username"/>
            </li>
            <li><span>功能链接：</span>
                <input name="password" type="text" size="60" value="" class="password"/>
            </li>
            <li><span>时&nbsp;&nbsp;间：</span>
                <input name="name" type="text" size="60" value="" class="name"/>
            </li>

            <button type="submit" style="margin:10px 5px 10px 25px;" >提交</button><button type="button" style="margin:10px 0;" class="cancel">取消</button>
        </g:form>
    </ul>
</div>
<div class="yz-01_fd show">
    <ul class="yzf_07-01_fd">
        <h2>用户详情</h2>
        <li><span>功能名称：</span>
            <input name="username" type="text" size="60" value="" class="username"/>
        </li>
        <li><span>功能链接：</span>
            <input name="password" type="text" size="60" value="" class="password"/>
        </li>
        <li><span>时&nbsp;&nbsp;间：</span>
            <input name="name" type="text" size="60" value="" class="name"/>
        </li>
        <a href="index_07.html" target="_self" style="margin:10px 5px 10px 25px;" >提交</a><a href="index_07.html" target="_self" style="margin:10px 0;" >取消</a>
    </ul>
</div>
<div class="yz-01_fd edit">
    <ul class="yzf_07-01_fd">
        <h2>用户编辑</h2>
        <li><span>功能名称：</span>
            <input name="username" type="text" size="60" value="" class="username"/>
        </li>
        <li><span>功能链接：</span>
            <input name="password" type="text" size="60" value="" class="password"/>
        </li>
        <li><span>时&nbsp;&nbsp;间：</span>
            <input name="name" type="text" size="60" value="" class="name"/>
        </li>
        <button type="submit" style="margin:10px 5px 10px 25px;" >提交</button><button  style="margin:10px 0;" class="cancel">取消</button>
    </ul>
</div>
<script src="${resource(dir: 'ybjc/js/', file: 'jquery.js')}"></script>
<script>
    $(function(){
        $('#ybGongNengCreate').click(function(){
            $('.create').css('display','block');
        })
        $('.cancel').click(function(){
            $('.yzf_07-01_fd input').val('');
            $('.yz-01_fd').css('display','none');
        })
        $('.ybGongNengEdit').click(function(){
            var id=$(this).find('span:first').html();


            $.ajax( {
                url:'${webRequest.baseUrl}/YbLogin/ybGongNengEdit',
                type:'post',
                dataType:'json',
                data:{id:id},
                success:function(data){

                    $('.edit .username').val(data.ybGongNengInstance.functionName);
                    $('.edit .password').val(data.ybGongNengInstance.functionLink);
                    $('.edit .name').val(data.ybGongNengInstance.time);

                    $('.edit').css('display','block');
                },
                error:function(){
                    alert('查询失败！')
                }

            })
        })
    })
</script>
</body>
</html>




















%{--<%----}%
  %{--Created by IntelliJ IDEA.--}%
  %{--User: Administrator--}%
  %{--Date: 15-6-16--}%
  %{--Time: 下午3:59--}%
%{----%>--}%

%{--<%@ page contentType="text/html;charset=UTF-8" %>--}%
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
    %{--<!--header end-->--}
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
                            %{--<h2 style="float:left;">功能列表</h2>--}%
                            %{--<g:link controller="ybLogin" action="ybGongNengCreate" class="btn btn-info" style="display:block;float:right;">新建功能</g:link>--}%
                            %{--<div style="clear:both;"></div>--}%
                        %{--</header>--}%
                        %{--<table class="table table-striped table-advance table-hover">--}%
                            %{--<thead>--}%
                            %{--<tr>--}%

                                %{--<th>功能名称</th>--}%
                                %{--<th>功能链接</th>--}%
                                %{--<th>时间</th>--}%
                            %{--</tr>--}%
                            %{--</thead>--}%
                            %{--<tbody>--}%
                            %{--<g:each in="${ybGongNengInstanceList}" status="i" var="userInstance">--}%
                                %{--<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">--}%
                                    %{--<td>${userInstance.functionName}</td>--}%
                                    %{--<td>${userInstance.functionLink}</td>--}%
                                    %{--<td>${userInstance.time}</td>--}%


                                    %{--<td>--}%
                                        %{--<g:link action="ybGongNengShow" id="${userInstance?.id}" class="btn btn-success btn-xs"><i class="fa fa-eye"></i></g:link>--}%
                                        %{--<g:link action="ybGongNengEdit" id="${userInstance?.id}" class="btn btn-primary btn-xs"><i class="fa fa-pencil"></i></g:link>--}%
                                        %{--<g:link action="ybGongNengDelete" id="${userInstance?.id}" class="btn btn-danger btn-xs" onclick="return confirm('确定删除？');"><i class="fa fa-trash-o "></i></g:link>--}%
                                    %{--</td>--}%


                                %{--</tr>--}%
                            %{--</g:each>--}%

                            %{--</tbody>--}%
                        %{--</table>--}%
                        %{--<div class="pagination">--}%
                            %{--<g:paginate total="${ybGongNengInstanceTotal}" />--}%
                        %{--</div>--}%
                    %{--</section>--}%
                %{--</div>--}%
            %{--</div>--}%


        %{--</section>--}%
    %{--</section>--}%
    %{--<!--main content end-->--}%

    %{--<!-- Right Slidebar start -->--}%

    %{--<!-- Right Slidebar end -->--}%

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

%{--</body>--}%
%{--</html>--}%