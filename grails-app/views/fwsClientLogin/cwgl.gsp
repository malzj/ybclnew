<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>财务管理</title>
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


                <li style="width:7%;"><g:link action="${li?.functionLink} " target="_self">${li?.functionName}</g:link></li>

            </g:each>
        </ul>
    </div>
</div>
<div class="yzf_01">
    <div class="yzf_08_top"> <a href="index_08.html" target="_self" style="border-bottom:2px #48bbb4 solid;">应收账单</a><a href="index_08_00.html" target="_self">应付账单</a>
        <div id="yzf_08_bot_01">
            <p>用户编号：
                <input name="keyboard" type="text" size="60" value="" />
            </p>
            <p>用户名称：
                <input name="keyboard" type="text" size="60" value="" />
            </p>
            <p>日期：
                <input name="keyboard" type="text" size="60" value="2015-06-11" />
            </p>
            <p>至：
                <input name="keyboard" type="text" size="60" value="2015-06-12" />
            </p>
            <a href="#" target="_self" >查询</a> </div>
    </div>
    <div class="yzf_08_bot">
        <p style="background:#48bbb4; color:#fff;"><span>序号</span><span>用户编号</span><span>用户名称</span><span>发生额</span><span>收款额</span><span>余额</span><span>超额</span></p>
        <a href="index_08_01.html" target="_self" style="background:#f5f5f5;"><span>YB00001</span><span>CW-0001</span><span>张三</span><span>3000(元)</span><span>760(元)</span><span>2240(元)</span><span>2240(元)</span></a> <a href="index_08_01.html" target="_self"><span>YB00001</span><span>CW-0001</span><span>张三</span><span>3000(元)</span><span>760(元)</span><span>2240(元)</span><span>2240(元)</span></a> <a href="index_08_01.html" target="_self" style="background:#f5f5f5;"><span>YB00001</span><span>CW-0001</span><span>张三</span><span>3000(元)</span><span>760(元)</span><span>2240(元)</span><span>2240(元)</span></a> <a href="index_08_01.html" target="_self"><span>YB00001</span><span>CW-0001</span><span>张三</span><span>3000(元)</span><span>760(元)</span><span>2240(元)</span><span>2240(元)</span></a> <a href="index_08_01.html" target="_self" style="background:#f5f5f5;"><span>YB00001</span><span>CW-0001</span><span>张三</span><span>3000(元)</span><span>760(元)</span><span>2240(元)</span><span>2240(元)</span></a> <a href="index_08_01.html" target="_self"><span>YB00001</span><span>CW-0001</span><span>张三</span><span>3000(元)</span><span>760(元)</span><span>2240(元)</span><span>2240(元)</span></a> <a href="index_08_01.html" target="_self" style="background:#f5f5f5;"><span>YB00001</span><span>CW-0001</span><span>张三</span><span>3000(元)</span><span>760(元)</span><span>2240(元)</span><span>2240(元)</span></a> <a href="index_08_01.html" target="_self"><span>YB00001</span><span>CW-0001</span><span>张三</span><span>3000(元)</span><span>760(元)</span><span>2240(元)</span><span>2240(元)</span></a> <a href="index_08_01.html" target="_self" style="background:#f5f5f5;"><span>YB00001</span><span>CW-0001</span><span>张三</span><span>3000(元)</span><span>760(元)</span><span>2240(元)</span><span>2240(元)</span></a> </div>
</div>
<div class="yz_foot">
    <dl class="yz_foot_wx">
        <dt><img src="${resource(dir: 'images', file: 'wx_d-03.jpg')}" /></dt>
        <dd>京ICP备14024271号-1 Copyright © YBCL 2014 .All rights reserved.</dd>
    </dl>
</div>
</body>
</html>
