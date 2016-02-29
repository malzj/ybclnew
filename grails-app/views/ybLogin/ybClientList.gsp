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

        </ul>
    </div>
</div>
<div class="yzf_01">
    <div class="yzf_01_top" style=" height:38px; border-bottom:1px #ccc solid;"><a href="index_06.html" target="_self" class="yzf_06_lg" style="border-bottom:2px #48bbb4 solid;">客户管理</a><a href="index_06-01.html" target="_self" class="yzf_06_lg" >车辆管理</a>
        <div class="yzf_01_top_bo" style="margin: 0 0 0 550px;"> <a href="#" target="_self" class="yzf_01_top_bo_xl">客户名称
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
    </div>
    <div class="yzf_06_bot">
        <p style="background:#48bbb4; color:#fff;"><span>客户编号</span><span>客户姓名</span><span>客户电话</span><span>消费次数</span><span>合计消费</span></p>
        <g:each in="${ybClientInstanceList}" status="i" var="userInstance">
            <g:link action="ybClientShow" target="_self" id="${userInstance?.id}"><span>${userInstance?.id}</span><span>${userInstance?.name}</span><span>${userInstance?.phone}</span><span>${userInstance?.number}</span><span>${userInstance?.phone}</span></g:link>

        </g:each>


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










