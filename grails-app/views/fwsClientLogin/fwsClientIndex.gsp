<%--
  Created by IntelliJ IDEA.
  User: malmemeda
  Date: 16-1-21
  Time: 上午9:28
--%>

<%@ page contentType="text/html;charset=UTF-8" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>亦宝车联后台管理</title>
    %{--<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />--}%
    <link href="${resource(dir: 'css', file: 'style1.css')}" rel="stylesheet">
</head>

<body>
<div class="yz_head">
    <div class="yz_head_top_wai">
        <ul class="yz_head_top">
            <li><a href="index_10.html" target="_self">消息</a></li>
            <li><a href="index_11.html" target="_self">注销</a></li>
            <li><a href="#" target="_self">修改密码</a></li>
            <li>test@163.com，欢迎您使用</li>
        </ul>
    </div>
    <div class="yz_head_nav_test">
        <ul class="yz_head_nav_test_le">
            <img src="${resource(dir: 'images', file: 'nz-11.png')}" />
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
    <div class="yzf_01_bot">
        <p style="background:#48bbb4; color:#fff;"><span>序号</span><span>状态</span><span>车主姓名</span><span>车牌号</span><span>车型</span><span>里程</span><span>上次保养时间</span><span>保养时间剩余</span><span>提示</span></p>
        <a href="javascript:;" target="_self" class="show"><span>SY-XH-1834</span><span class="yzf_01_bot_zt" style="background: url(images/by-03.png) no-repeat center; background-size: 25px 25px;"></span><span>张晶</span><span>京NJG127</span><span>日产</span><span>65421(km)</span><span>2015-09-26</span><span>-17(天)</span><span>未提示</span></a>
        <a href="javascript:;" target="_self" class="show" style="background:#f5f5f5;"><span>SY-XH-1835</span><span class="yzf_01_bot_zt" style="background: url(images/by-02.png) no-repeat center; background-size: 25px 25px;"></span><span>王开硕</span><span>京NJR356</span><span>奥迪</span><span>45247(km)</span><span>2015-11-02</span><span>33(天)</span><span>已提示</span></a>
        <a href="javascript:;" target="_self" class="show"><span>SY-XH-1836</span><span class="yzf_01_bot_zt"></span><span>李雯</span><span>京NYC020</span><span>大众</span><span>85472(km)</span><span>2015-10-26</span><span>133(天)</span><span>已提示</span></a>
        <a href="javascript:;" target="_self" class="show" style="background:#f5f5f5;"><span>SY-XH-1837</span><span class="yzf_01_bot_zt"></span><span>金成柱</span><span>京NCZ524</span><span>宝马</span><span>54750(km)</span><span>2015-10-25</span><span>172(天)</span><span>未提示</span></a>
        <a href="javascript:;" target="_self" class="show"><span>SY-XH-1838</span><span class="yzf_01_bot_zt"></span><span>王钧民</span><span>京NJM557</span><span>奔驰</span><span>85427(km)</span><span>2015-09-26</span><span>182(天)</span><span>未提示</span></a>
        <a href="javascript:;" target="_self" class="show" style="background:#f5f5f5;"><span>SY-XH-1839</span><span class="yzf_01_bot_zt"></span><span>刘永华</span><span>京NYH275</span><span>别克</span><span>41257(km)</span><span>2014-09-23</span><span>199(天)</span><span>未提示</span></a>
        <a href="javascript:;" target="_self" class="show"><span>SY-XH-1839</span><span class="yzf_01_bot_zt"></span><span>孙志杰</span><span>京NZJ527</span><span>丰田</span><span>74128(km)</span><span>2014-09-20</span><span>213(天)</span><span>未提示</span></a>
        <a href="javascript:;" target="_self" class="show" style="background:#f5f5f5;"><span>SY-XH-1840</span><span class="yzf_01_bot_zt"></span><span>王辉</span><span>京NKS657</span><span>宝马</span><span>55741(km)</span><span>2014-08-26</span><span>225(天)</span><span>未提示</span></a>
        <a href="javascript:;" target="_self" class="show"><span>SY-XH-1841</span><span class="yzf_01_bot_zt"></span><span>张龙兴</span><span>京NLX824</span><span>现代</span><span>75841(km)</span><span>2014-08-05</span><span>235(天)</span><span>未提示</span></a>
        <a href="javascript:;" target="_self" class="show" style="background:#f5f5f5;"><span>SY-XH-1842</span><span class="yzf_01_bot_zt"></span><span>李保华</span><span>京NLB785</span><span>宝马</span><span>85741(km)</span><span>2014-07-26</span><span>239(天)</span><span>未提示</span></a> </div>
    <div id="yz_body_ri_02_01_nr_ssy"> <a href="#" target="_self" style="background:#fff;">1</a><a href="#" target="_self">2</a><a href="#" target="_self">3</a><a href="#" target="_self">4</a><a href="#" target="_self">5</a>
        <button>下一页</button>
        <button>上一页</button>
    </div>
</div>
<div class="yz_foot">
    <dl class="yz_foot_wx">
        <dt><img src="${resource(dir: 'images', file: 'wx_d-03.jpg')}" /></dt>
        <dd>京ICP备14024271号-1 Copyright © YBCL 2014 .All rights reserved.</dd>
    </dl>
</div>
<div class="yz-01_fd">
    <ul class="yz-01_fd_xf">
        <li>
            <h2>提示信息</h2>
        </li>
        <li class="yz-01_fd_xf_xc">姓名：张三</li>
        <li class="yz-01_fd_xf_xc">车牌号：京NYB888</li>
        <li>
            <textarea rows="6" placeholder="张三先生您好！您的爱车京NYB888已超出保养时间17天，请您尽快到店进行保养，谢谢合作！"></textarea>
        </li>

        %{--<li class="yz_04_01_fd_kw_qr"><a href="index.html" target="_self">确认</a><a href="index.html" target="_self">取消</a></li>--}%
        <li class="yz_04_01_fd_kw_qr"><button type="submit">提交</button><button class="cancel">取消</button></li>
    </ul>
</div>
<script src="${resource(dir: 'ybjc/js/', file: 'jquery.js')}"></script>
<script>
    $(function(){
//        $('#fwsGongNengCreate').click(function(){
//            $('.create').css('display','block');
//        })
        $('.show').click(function(){
            $('.yz-01_fd').css('display','block');
        })
        $('.cancel').click(function(){
            $('.yzf_07-01_fd input').val('');
            $('.yz-01_fd').css('display','none');
        })
        %{--$('.fwsGongNengEdit').click(function(){--}%
            %{--var id=$(this).find('span:first').html();--}%


            %{--$.ajax( {--}%
                %{--url:'${webRequest.baseUrl}/YbLogin/fwsGongNengEdit',--}%
                %{--type:'post',--}%
                %{--dataType:'json',--}%
                %{--data:{id:id},--}%
                %{--success:function(data){--}%

                    %{--$('.edit .username').val(data.fwsGongNengInstance.functionName);--}%
                    %{--$('.edit .password').val(data.fwsGongNengInstance.functionLink);--}%
                    %{--$('.edit .name').val(data.fwsGongNengInstance.time);--}%

                    %{--$('.edit').css('display','block');--}%
                %{--},--}%
                %{--error:function(){--}%
                    %{--alert('查询失败！')--}%
                %{--}--}%

            %{--})--}%
        %{--})--}%
    })
</script>

</body>
</html>










