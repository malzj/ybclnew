<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>车间管理</title>
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
    </div>
    <div class="yzf_04_bot">
        <p style="background:#48bbb4; color:#fff;"><span>序号</span><span>维修单号</span><span>车主姓名</span><span>车牌号</span><span>维修类型</span><span>日期</span><span>工时(花费时间)</span><span>班组(部门)</span><span>维修员(雇员姓名)</span><span>状态</span></p>
        <a href="index_04_01.html" target="_self"><span>YB00001</span><span>YB-WX-0001</span><span>张三</span><span>京NYB888</span><span>保养</span><span>2015年6月27日</span><span>24</span><span>维修1组</span><span >李成伟</span><span>在修</span></a>
        <a href="index_04_01.html" target="_self" style="background:#f5f5f5;"><span>YB00001</span><span>YB-WX-0001</span><span>张三</span><span>京NYB888</span><span>保养</span><span>2015年6月27日</span><span>24</span><span>维修1组</span><span >李成伟</span><span>在修</span></a>
        <a href="index_04_01.html" target="_self"><span>YB00001</span><span>YB-WX-0001</span><span>张三</span><span>京NYB888</span><span>保养</span><span>2015年6月27日</span><span>24</span><span>维修1组</span><span >李成伟</span><span>在修</span></a>
        <a href="index_04_01.html" target="_self" style="background:#f5f5f5;"><span>YB00001</span><span>YB-WX-0001</span><span>张三</span><span>京NYB888</span><span>保养</span><span>2015年6月27日</span><span>24</span><span>维修1组</span><span >李成伟</span><span>在修</span></a>
        <a href="index_04_01.html" target="_self"><span>YB00001</span><span>YB-WX-0001</span><span>张三</span><span>京NYB888</span><span>保养</span><span>2015年6月27日</span><span>24</span><span>维修1组</span><span >李成伟</span><span>在修</span></a>
        <a href="index_04_01.html" target="_self" style="background:#f5f5f5;"><span>YB00001</span><span>YB-WX-0001</span><span>张三</span><span>京NYB888</span><span>保养</span><span>2015年6月27日</span><span>24</span><span>维修1组</span><span >李成伟</span><span>在修</span></a>
        <a href="index_04_01.html" target="_self"><span>YB00001</span><span>YB-WX-0001</span><span>张三</span><span>京NYB888</span><span>保养</span><span>2015年6月27日</span><span>24</span><span>维修1组</span><span >李成伟</span><span>在修</span></a>
        <a href="index_04_01.html" target="_self" style="background:#f5f5f5;"><span>YB00001</span><span>YB-WX-0001</span><span>张三</span><span>京NYB888</span><span>保养</span><span>2015年6月27日</span><span>24</span><span>维修1组</span><span >李成伟</span><span>在修</span></a>
        <a href="index_04_01.html" target="_self"><span>YB00001</span><span>YB-WX-0001</span><span>张三</span><span>京NYB888</span><span>保养</span><span>2015年6月27日</span><span>24</span><span>维修1组</span><span >李成伟</span><span>在修</span></a>
        <a href="index_04_01.html" target="_self" style="background:#f5f5f5;"><span>YB00001</span><span>YB-WX-0001</span><span>张三</span><span>京NYB888</span><span>保养</span><span>2015年6月27日</span><span>24</span><span>维修1组</span><span >李成伟</span><span>在修</span></a>
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
