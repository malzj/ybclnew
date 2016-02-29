<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>维修领料</title>
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
    <div class="yzf_03_top"><!--<a href="index_03.html" target="_self" style="border-bottom:2px #48bbb4 solid;">未领料</a><a href="index_03-01.html" target="_self">已领料</a>--><span>单据日期</span>
        <input name="keyboard" type="text" size="60" value="2015-06-25" />
        <span>至</span>
        <input name="keyboard" type="text" size="60" value="2015-06-26" />
        <span>序号</span>
        <input name="keyboard" type="text" size="60" value="" />
        <span>维修单号</span>
        <input name="keyboard" type="text" size="60" value="" />
        <span>状态</span>
        <form>
            <select name="cars">
                <option value="未领料">未领料</option>
                <option value="已领料">已领料</option>
            </select>
        </form>
        <input formtarget="_blank" name="Submit22" value="搜索" type="submit">
    </div>
    <div class="yzf_03_bot">
        <p style="background:#48bbb4; color:#fff;"><span>序号</span><span>维修单号</span><span>领料班组</span><span>领料人</span><span>类别</span><span>状态</span></p>
        <a href="index_03_01.html" target="_self"><span>YB00001</span><span>YB-WX-0001</span><span>班组1</span><span>李德海</span><span>保养</span><span>未领料</span></a>
        <a href="index_03_01.html" target="_self" style="background:#f5f5f5;"><span>YB00001</span><span>YB-WX-0001</span><span>班组1</span><span>李德海</span><span>保养</span><span>已领料</span></a>
        <a href="index_03_01.html" target="_self"><span>YB00001</span><span>YB-WX-0001</span><span>班组1</span><span>李德海</span><span>保养</span><span>未领料</span></a>
        <a href="index_03_01.html" target="_self" style="background:#f5f5f5;"><span>YB00001</span><span>YB-WX-0001</span><span>班组1</span><span>李德海</span><span>保养</span><span>已领料</span></a>
        <a href="index_03_01.html" target="_self"><span>YB00001</span><span>YB-WX-0001</span><span>班组1</span><span>李德海</span><span>保养</span><span>未领料</span></a>
        <a href="index_03_01.html" target="_self" style="background:#f5f5f5;"><span>YB00001</span><span>YB-WX-0001</span><span>班组1</span><span>李德海</span><span>保养</span><span>已领料</span></a>
        <a href="index_03_01.html" target="_self"><span>YB00001</span><span>YB-WX-0001</span><span>班组1</span><span>李德海</span><span>保养</span><span>未领料</span></a>
        <a href="index_03_01.html" target="_self" style="background:#f5f5f5;"><span>YB00001</span><span>YB-WX-0001</span><span>班组1</span><span>李德海</span><span>保养</span><span>已领料</span></a>
        <a href="index_03_01.html" target="_self"><span>YB00001</span><span>YB-WX-0001</span><span>班组1</span><span>李德海</span><span>保养</span><span>未领料</span></a>
        <a href="index_03_01.html" target="_self" style="background:#f5f5f5;"><span>YB00001</span><span>YB-WX-0001</span><span>班组1</span><span>李德海</span><span>保养</span><span>已领料</span></a>
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
