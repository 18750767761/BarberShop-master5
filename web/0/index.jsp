<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<center>
        <table style="text-align:center">
            <tr>
                <td>管理员帐号：</td>
                <td><input id="11" onkeyup="f()"></td>
                <td><p id="12" style="color:red"/></td>
            </tr>
            <tr>
                <td>管理员密码：</td>
                <td><input id="21" onkeyup="f()" type="password"></td>
                <td><p id="22" style="color:red"/></td>
            </tr>
        </table>
    <button id="0" onclick="g()">登录</button>
</center>
<script>
    d=document;
    function f()
    {
        e=d.getElementById(11).value;
        e2=d.getElementById(21).value;
        v="hidden";
        if(e=="")t="请输入帐号";else t="";
        if(e2=="")t2="请输入密码";else t2="";
        if(e!=""&&e2!="")v="visible";
        d.getElementById(12).innerText=t;
        d.getElementById(22).innerText=t2;
        d.getElementById(0).style.visibility=v;
    }
    f();
    function g()
    {
        e=d.getElementById(11).value;
        e2=d.getElementById(21).value;
        if(e=="1"&&e2=="1")window.location='main.jsp';
        else alert("用户名或密码错误！请重新登录！");
    }
</script>
