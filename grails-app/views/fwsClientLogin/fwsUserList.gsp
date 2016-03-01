<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>系统管理</title>
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
<div class="yzf_09">
    <div class="yzf_09_top">
        <a href="index_09_04.html" target="_self" style="border-bottom:2px #48bbb4 solid;">雇员管理</a>
        <!--<a href="index_09_01.html" target="_self" >项目管理</a>-->
        <a href="index_09_02.html" target="_self" >进度管理</a>
        <a href="index_09_03.html" target="_self" >部门管理</a>

        <a href="index_09_05.html" target="_self">推荐商品管理</a> <a href="index_09_06.html" target="_self">车辆品牌管理</a>
        <a href="index_09_07.html" target="_self">车辆类型管理</a> <a href="index_09_08.html" target="_self">服务商管理</a>
        <a href="javascript:;" target="_self" id="yzf_09_top_tj">添加</a>
        <a href="javascript:;" target="_self" id="yzf_09_top_sc">删除</a>
        %{--<g:link action="ybUserCreate" target="_self"><span class="yzf_05_01_ts">删除</span></g:link>--}%
        %{--<a href="javascript:;" target="_self" id="fwsUserCreate" id="fwsUserCreate"><span class="yzf_05_01_ts">添加</span></a>--}%
        %{--<g:link action="ybUserCreate" target="_self" id="yzf_09_top_sc"><span class="yzf_05_01_ts">删除</span></g:link>--}%
    </div>
    <div id="yzf_09_bot_01">
        <p>雇员姓名：
            <input name="keyboard" type="text" size="60" value="" />
        </p>
        <p>头衔：
            <input name="keyboard" type="text" size="60" value="" />
        </p>
        <p>班组：
            <input name="keyboard" type="text" size="60" value="" />
        </p>
        <p>部门：
            <input name="keyboard" type="text" size="60" value="" />
        </p>
        <p>状态：
            <input name="keyboard" type="text" size="60" value="" />
        </p>
        <a href="#" target="_self" >查询</a> </div>
    <div class="yzf_09_04_bot">
        <p style="background:#f8f8f8; border-bottom:1px #48bbb4 solid;"><span>雇员编号</span><span>雇员姓名</span><span>电话</span><span>部门</span><span>班组</span><span>职位</span><span>收入</span><span>状态</span></p>
        <g:each in="${fwsUserList}" status="i" var="userInstance">
            <a class="fwsUserEdit" href="javascript:;" ><span style="display:none;">${userInstance?.id}</span><span>BMW-KE-005716</span><span>${userInstance?.name}</span><span>${userInstance?.phone}</span><span>${userInstance?.department.id}</span>
                <span>${userInstance.groups}</span><span>${userInstance.position}</span><span>${userInstance.money}</span><span>${userInstance.status}</span>
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
        <dt>
            %{--<img src="images/wx_d-03.jpg" />--}%
            <img src="${resource(dir: 'images', file: 'wx_d-03.jpg')}" />
        </dt>
        <dd>京ICP备14024271号-1 Copyright © YBCL 2014 .All rights reserved.</dd>
    </dl>
</div>
<div class="yz-01_fd create">
    <ul class="yzf_09_04-01_fd">
        <h2>雇员添加</h2>
        <g:form controller="fwsClientLogin" action="fwsUserSave" method= "post" enctype= "multipart/form-data">
        <li><span>账&nbsp;&nbsp;号：</span>
            <input name="username" type="text" size="60" value=""  class="username"/>
        </li>
        <li><span>密&nbsp;&nbsp;码：</span>
            <input name="password" type="text" size="60" value=""  class="password"/>
        </li>
        <li><span>确认密码：</span>
            <input name="" type="text" size="60" value=""  class="repassword"/>
        </li>
        <li><span>姓&nbsp;&nbsp;名：</span>
            <input name="name" type="text" size="60" value=""  class="name"/>
        </li>
        <li><span>电&nbsp;&nbsp;话：</span>
            <input name="phone" type="text" size="60" value=""  class="phone"/>
        </li>
        <li><span>部&nbsp;&nbsp;门：</span>

                <select name="department"  class="department">
                    <option value=""></option>
                    <option value="3">前台</option>
                    <option value="1">维修</option>
                    <option value="4">仓库</option>
                    <option value="2">财务</option>
                </select>

        </li>
        <li><span>班&nbsp;&nbsp;组：</span>

                <select name="groups" class="groups">
                    <option value=""></option>
                    <option value="1">班组1</option>
                    <option value="2">班组2</option>
                    <option value="3">班组3</option>
                    <option value="4">班组4</option>
                </select>

        </li>
        <li><span>职&nbsp;&nbsp;位：</span>

                <select name="position" class="position">
                    <option value=""></option>
                    <option value="1">店长</option>
                    <option value="2">组长</option>
                    <option value="3">员工</option>
                </select>

        </li>
        <li><span>收&nbsp;&nbsp;入：</span>
            <input name="money" type="text" size="60" value=""  class="money"/>
        </li>
        <li><span>状&nbsp;&nbsp;态：</span>

                <select name="status" class="status">
                    <option value=""></option>
                    <option value="0">工作</option>
                    <option value="1">休班</option>
                    <option value="2">请假</option>
                </select>

        </li>
        <h2>权限分配</h2>
        <li style="width:50%;">
            <input name="gongneng" type="checkbox"  value="15"/>
            首页</li>
        <li style="width:50%; padding:0 0 0 35px;">
            <input name="gongneng" type="checkbox"  value="5"/>
            预约接待</li>
        <li style="width:50%;">
            <input name="gongneng" type="checkbox"  value="6"/>
            维修接待</li>
        <li style="width:50%; padding:0 0 0 35px;">
            <input name="gongneng" type="checkbox"  value="7"/>
            维修领料</li>
        <li style="width:50%;">
            <input name="gongneng" type="checkbox"  value="8"/>
            车间管理</li>
        <li style="width:50%; padding:0 0 0 35px;">
            <input name="gongneng" type="checkbox"  value="9"/>
            库房管理</li>
        <li style="width:50%;">
            <input name="gongneng" type="checkbox"  value="10"/>
            客户管理</li>
        <li style="width:50%; padding:0 0 0 35px;">
            <input name="gongneng" type="checkbox"  value="16"/>
            部门管理</li>
        <li style="width:50%;">
            <input name="gongneng" type="checkbox"  value="12"/>
            财务管理</li>
        <li style="width:50%; padding:0 0 0 35px;">
            <input name="gongneng" type="checkbox" value="17"/>
            系统管理</li>
        <button type="submit" style="margin:10px 5px 10px 45px;" >提交</button><button type="button" style="margin:10px 0;" class="cancel">取消</button>
        </g:form>
        </ul>
</div>
<div class="yz-01_fd edit">
    <ul class="yzf_09_04-01_fd">
        <h2>雇员编辑</h2>
        <g:form controller="fwsClientLogin" action="fwsUserUpdate" method= "post" enctype= "multipart/form-data">
        <li><span>账&nbsp;&nbsp;号：</span>
            <input name="username" type="text" size="60" value=""  class="username"/>
        </li>
        <li><span>密&nbsp;&nbsp;码：</span>
            <input name="password" type="text" size="60" value=""  class="password"/>
        </li>
        <li><span>确认密码：</span>
            <input name="keyboard" type="text" size="60" value=""  class="repassword"/>
        </li>
        <li><span>姓&nbsp;&nbsp;名：</span>
            <input name="name" type="text" size="60" value=""  class="name"/>
        </li>
        <li><span>电&nbsp;&nbsp;话：</span>
            <input name="phone" type="text" size="60" value=""  class="phone"/>
        </li>
        <li><span>部&nbsp;&nbsp;门：</span>

                <select name="department"  class="department">
                    <option value=""></option>
                    <option value="3">前台</option>
                    <option value="1">维修</option>
                    <option value="4">仓库</option>
                    <option value="2">财务</option>
                </select>

        </li>
        <li><span>班&nbsp;&nbsp;组：</span>

                <select name="groups" class="groups">
                    <option value=""></option>
                    <option value="1">班组1</option>
                    <option value="2">班组2</option>
                    <option value="3">班组3</option>
                    <option value="4">班组4</option>
                </select>

        </li>
        <li><span>职&nbsp;&nbsp;位：</span>

                <select name="position" class="position">
                    <option value="1">店长</option>
                    <option value="2">组长</option>
                    <option value="3">员工</option>
                </select>

        </li>
        <li><span>收&nbsp;&nbsp;入：</span>
            <input name="money" type="text" size="60" value=""  class="money"/>
        </li>
        <li><span>状&nbsp;&nbsp;态：</span>

                <select name="status" class="status">
                    <option value=""></option>
                    <option value="0">工作</option>
                    <option value="1">休班</option>
                    <option value="2">请假</option>
                </select>

        </li>
        <h2>权限分配</h2>
        <li style="width:50%;">
            <input name="gongneng" type="checkbox"  value="15"/>
            首页</li>
        <li style="width:50%; padding:0 0 0 35px;">
            <input name="gongneng" type="checkbox"  value="5"/>
            预约接待</li>
        <li style="width:50%;">
            <input name="gongneng" type="checkbox"  value="6"/>
            维修接待</li>
        <li style="width:50%; padding:0 0 0 35px;">
            <input name="gongneng" type="checkbox"  value="7"/>
            维修领料</li>
        <li style="width:50%;">
            <input name="gongneng" type="checkbox"  value="8"/>
            车间管理</li>
        <li style="width:50%; padding:0 0 0 35px;">
            <input name="gongneng" type="checkbox"  value="9"/>
            库房管理</li>
        <li style="width:50%;">
            <input name="gongneng" type="checkbox"  value="10"/>
            客户管理</li>
        <li style="width:50%; padding:0 0 0 35px;">
            <input name="gongneng" type="checkbox"  value="16"/>
                   部门管理</li>
        <li style="width:50%;">
            <input name="gongneng" type="checkbox"  value="12"/>
            财务管理</li>
        <li style="width:50%; padding:0 0 0 35px;">
            <input name="gongneng" type="checkbox" value="17"/>
            系统管理</li>
        <button type="submit" style="margin:10px 5px 10px 45px;" >提交</button><button type="button" style="margin:10px 0;" class="cancel">取消</button>
   </g:form>
    </ul>
</div>
<script src="${resource(dir: 'ybjc/js/', file: 'jquery.js')}"></script>
<script>
    $(function(){
        $('#yzf_09_top_tj').click(function(){
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
                    var gongnenglist=data.listgongneng;
                    var did=data.fwsUserInstance.department.id

                    $('.edit .username').val(data.fwsUserInstance.username);
                    $('.edit .phone').val(data.fwsUserInstance.phone);
                    $('.edit .name').val(data.fwsUserInstance.name);
                    $('.edit .position').val(data.fwsUserInstance.position);
                    $('.edit .password').val(data.fwsUserInstance.password);
                    $('.edit .department').val(did)
                    $('.edit .money').val(data.fwsUserInstance.money);
                    $('.edit .time').val(data.fwsUserInstance.time);
                    $('.edit .status').val(data.fwsUserInstance.status);
                    $('.edit .groups').val(data.fwsUserInstance.groups);
                    for(var i=0;i<gongnenglist.length;i++){
                        var id=gongnenglist[i].id;
                        $("input:checkbox[name='gongneng']").each(function(){
                            if($(this).val()==id){
                                $(this).attr('checked','checked');
                            }
                        })
                    }

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



























