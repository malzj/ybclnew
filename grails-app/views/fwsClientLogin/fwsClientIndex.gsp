<%--
  Created by IntelliJ IDEA.
  User: malmemeda
  Date: 16-1-25
  Time: 下午2:00
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
</head>

<body>

<g:each in="${list}" status="i" var="li">

    %{--<g:each in="${fwsShopList}" status="i" var="shop">--}%
        %{--<g:link action="fwsUserList" id="${shop.id}">${shop.name}</g:link>--}%
    %{--</g:each>--}%
    <g:link action="${li?.functionLink}">${li?.functionName}</g:link>

</g:each>
</body>
</html>