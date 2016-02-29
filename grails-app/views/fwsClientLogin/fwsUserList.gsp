




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
    <style>
    .yzf_07_bot p span, .yzf_07_bot a span {width:12%;}
    </style>
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
        <g:link action="ybUserCreate" target="_self"><span class="yzf_05_01_ts">删除</span></g:link><a href="javascript:;" target="_self" id="fwsUserCreate"><span class="yzf_05_01_ts">添加</span></a>
    </div>
    <div class="yzf_07_bot">
        <p style="background:#48bbb4; color:#fff;"><span>序号</span><span>用户名</span><span>姓名</span><span>电话</span><span>职位</span>
            <span>部门</span><span>收入</span><span>时间</span>
        </p>

        <g:each in="${fwsUserList}" status="i" var="userInstance">
            <a class="fwsUserEdit" href="javascript:;" ><span>${userInstance?.id}</span><span>${userInstance?.username}</span><span>${userInstance?.name}</span><span>${userInstance?.position}</span><span>${userInstance?.phone}</span>
                <span>${userInstance.department.name}</span><span>${userInstance.money}</span><span>${userInstance.time}</span>
            </a>
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
<div class="yz-01_fd create">
    <ul class="yzf_07-01_fd">
        <h2>用户添加</h2>
        <g:form controller="ybLogin" action="ybUserSave" method= "post" enctype= "multipart/form-data">
            <li><span>用户名：&nbsp;</span>
                <input name="username" type="text" size="60" value="" class="username"/>
            </li>
            <li><span>姓&nbsp;&nbsp;名：</span>
                <input name="name" type="text" size="60" value="" class="name"/>
            </li>
            <li><span>电&nbsp;&nbsp;话：</span>
                <input name="phone" type="text" size="60" value="" class="phone"/>
            </li>
            <li><span>职&nbsp;&nbsp;位：</span>
                <input name="position" type="text" size="60" value="" class="position"/>
            </li>
            <li><span>部&nbsp;&nbsp;门：</span>
                <input name="department" type="text" size="60" value="" class="department"/>
            </li>
            <li><span>收&nbsp;&nbsp;入：</span>
                <input name="money" type="text" size="60" value="" class="money"/>
            </li>
            <li><span>时&nbsp;&nbsp;间：</span>
                <input name="time" type="text" size="60" value="" class="time"/>
            </li>
            <button type="submit" style="margin:10px 5px 10px 25px;" >提交</button><button type="button" style="margin:10px 0;" class="cancel">取消</button>
        </g:form>
    </ul>
</div>
<div class="yz-01_fd show">
    <ul class="yzf_07-01_fd">
        <h2>用户详情</h2>
        <li><span>用户名：&nbsp;</span>
            <input name="username" type="text" size="60" value="" class="username"/>
        </li>
        <li><span>姓&nbsp;&nbsp;名：</span>
            <input name="name" type="text" size="60" value="" class="name"/>
        </li>
        <li><span>电&nbsp;&nbsp;话：</span>
            <input name="phone" type="text" size="60" value="" class="phone"/>
        </li>
        <li><span>职&nbsp;&nbsp;位：</span>
            <input name="position" type="text" size="60" value="" class="position"/>
        </li>
        <li><span>部&nbsp;&nbsp;门：</span>
            <input name="department" type="text" size="60" value="" class="department"/>
        </li>
        <li><span>收&nbsp;&nbsp;入：</span>
            <input name="money" type="text" size="60" value="" class="money"/>
        </li>
        <li><span>时&nbsp;&nbsp;间：</span>
            <input name="time" type="text" size="60" value="" class="time"/>
        </li>
        %{--<a href="index_07.html" target="_self" style="margin:10px 5px 10px 25px;" >提交</a><a href="index_07.html" target="_self" style="margin:10px 0;" >取消</a>--}%
    </ul>
</div>
<div class="yz-01_fd edit">
    <ul class="yzf_07-01_fd">
        <h2>用户编辑</h2>
        <li><span>用户名：&nbsp;</span>
            <input name="username" type="text" size="60" value="" class="username"/>
        </li>
        <li><span>姓&nbsp;&nbsp;名：</span>
            <input name="name" type="text" size="60" value="" class="name"/>
        </li>
        <li><span>电&nbsp;&nbsp;话：</span>
            <input name="phone" type="text" size="60" value="" class="phone"/>
        </li>
        <li><span>职&nbsp;&nbsp;位：</span>
            <input name="position" type="text" size="60" value="" class="position"/>
        </li>
        <li><span>部&nbsp;&nbsp;门：</span>
            <input name="department" type="text" size="60" value="" class="department"/>
        </li>
        <li><span>收&nbsp;&nbsp;入：</span>
            <input name="money" type="text" size="60" value="" class="money"/>
        </li>
        <li><span>时&nbsp;&nbsp;间：</span>
            <input name="time" type="text" size="60" value="" class="time"/>
        </li>
        <button type="submit" style="margin:10px 5px 10px 25px;" >提交</button><button  style="margin:10px 0;" class="cancel">取消</button>
    </ul>
</div>
<script src="${resource(dir: 'ybjc/js/', file: 'jquery.js')}"></script>
<script>
    $(function(){
        $('#fwsUserCreate').click(function(){
            $('.create').css('display','block');
        })
        $('.cancel').click(function(){
            $('.yzf_07-01_fd input').val('');
            $('.yz-01_fd').css('display','none');
        })
        $('.fwsUserEdit').click(function(){
            var id=$(this).find('span:first').html();


            $.ajax( {
                url:'${webRequest.baseUrl}/FwsClientLogin/fwsUserEdit',
                type:'post',
                dataType:'json',
                data:{id:id},
                success:function(data){
                    $('.edit .username').val(data.fwsUserInstance.username);
                    $('.edit .phone').val(data.fwsUserInstance.phone);
                    $('.edit .name').val(data.fwsUserInstance.name);
                    $('.edit .position').val(data.fwsUserInstance.position);
                    $('.edit .department').val(data.fwsUserInstance.department);
                    $('.edit .money').val(data.fwsUserInstance.money);
                    $('.edit .time').val(data.fwsUserInstance.time);


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










