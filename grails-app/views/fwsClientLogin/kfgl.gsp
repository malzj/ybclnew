<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>库房管理</title>
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
<div class="yzf_05">
    <div class="yzf_05_top"> <a href="index_05.html" target="_self" style="border-bottom:2px #48bbb4 solid;">库存管理</a> <a href="index_05_01.html" target="_self">入库</a> <a href="index_05_02.html" target="_self">出库</a> <a href="index_05_03.html" target="_self">供应商管理</a> <a href="index_05_04.html" target="_self">估价</a> <a href="index_05_05.html" target="_self">维修退单</a> </div>
    <div class="yzf_05_bot">
        <div class="yzf_05_bot_01">
            <p>商品编号：
                <input name="keyboard" type="text" size="60" value="" />
            </p>
            <p>商品名称：
                <input name="keyboard" type="text" size="60" value="" />
            </p>
            <p>分&nbsp;&nbsp;&nbsp;&nbsp;类：
                <input name="keyboard" type="text" size="60" value="" />
            </p>
            <p>车&nbsp;&nbsp;&nbsp;&nbsp;型：
                <input name="keyboard" type="text" size="60" value="" />
            </p>
            <p>产&nbsp;&nbsp;&nbsp;&nbsp;地：
                <input name="keyboard" type="text" size="60" value="" />
            </p>
            <a href="#" target="_self" >查询</a> </div>
        <div class="yzf_05_bot_02">
            <h2>全部</h2>
            <ul>
                <li>改装用品</li>
                <li>轮胎铝圈</li>
                <li>车内用品</li>
                <li>机能用品</li>
                <li>洗车化学用品</li>
                <li>音响</li>
                <li>美容类</li>
                <li>油品</li>
                <li>其他</li>
            </ul>
        </div>
        <div class="yzf_05_bot_03">
            <p style="background:#f8f8f8; box-sizing: border-box; border-bottom:1px #ccc solid;"><span>序号</span><span>商品名称</span><span>商品编号</span><span style="width:3%;">产地</span><span style="width:3%;">分类</span><span style="width:3%;">车型</span><span>最近出货时间</span><span>最近进货时间</span><span>商品可售数量</span><span style="width:3%;">单位</span><span>安全数量</span><span>建议购买价格</span><span>建议销售价格</span><span>仓库名称</span></p>
            <p><span>YB0001</span><span>150扎带</span><span>ZD-0001</span><span style="width:3%;">国产</span><span style="width:3%;">其他</span><span style="width:3%;">通用</span><span>2015-06-12</span><span>2015-05-02</span><span>96</span><span style="width:3%;">根</span><span>96</span><span>0.5(元)</span><span>1(元)</span><span>1#</span></p>
            <p style="background:#f9f9f9;"><span>YB0002</span><span>16寸无骨雨刷</span><span>ZD-0002</span><span style="width:3%;">国产</span><span style="width:3%;">其他</span><span style="width:3%;">通用</span><span>2015-06-12</span><span>2015-05-02</span><span>67</span><span style="width:3%;">个</span><span>53</span><span>30(元)</span><span>45(元)</span><span>1#</span></p>
            <p><span>YB0003</span><span>19寸无骨雨刷</span><span>ZD-0003</span><span style="width:3%;">国产</span><span style="width:3%;">其他</span><span style="width:3%;">通用</span><span>2015-06-12</span><span>2015-05-02</span><span>53</span><span style="width:3%;">个</span><span>53</span><span>30(元)</span><span>45(元)</span><span>1#</span></p>
            <p style="background:#f9f9f9;"><span>YB0004</span><span>20寸无骨雨刷</span><span>ZD-0004</span><span style="width:3%;">国产</span><span style="width:3%;">其他</span><span style="width:3%;">通用</span><span>2015-06-12</span><span>2015-05-02</span><span>75</span><span style="width:3%;">个</span><span>53</span><span>30(元)</span><span>45(元)</span><span>1#</span></p>
            <p><span>YB0005</span><span>21寸无骨雨刷</span><span>ZD-0004</span><span style="width:3%;">国产</span><span style="width:3%;">其他</span><span style="width:3%;">通用</span><span>2015-06-12</span><span>2015-05-02</span><span>75</span><span style="width:3%;">个</span><span>53</span><span>30(元)</span><span>45(元)</span><span>1#</span></p>
            <!--
      <p style="background:#f9f9f9;"><span>YB0006</span><span>22寸无骨雨刷</span><span>ZD-0004</span><span style="width:3%;">国产</span><span style="width:3%;">其他</span><span style="width:3%;">通用</span><span>2015-06-12</span><span>2015-05-02</span><span>75</span><span style="width:3%;">个</span><span>53</span><span>30(元)</span><span>45(元)</span><span>1#</span></p>
      -->
            <div id="yz_body_ri_02_01_nr_ssy"> <a href="#" target="_self" style="background:#fff;">1</a><a href="#" target="_self">2</a><a href="#" target="_self">3</a><a href="#" target="_self">4</a><a href="#" target="_self">5</a>
                <button>下一页</button>
                <button>上一页</button>
            </div>
        </div>
    </div>
    <!--
  <a href="index_05.html" target="_self" id="yzf_bc">保存</a><a href="index_05.html" target="_self" id="yzf_qx">取消</a>
  -->
</div>
<div class="yz_foot">
    <dl class="yz_foot_wx">
        <dt><img src="${resource(dir: 'images', file: 'wx_d-03.jpg')}" /></dt>
        <dd>京ICP备14024271号-1 Copyright © YBCL 2014 .All rights reserved.</dd>
    </dl>
</div>
</body>
</html>
