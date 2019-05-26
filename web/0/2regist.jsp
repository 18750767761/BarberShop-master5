<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<center>
    <form action="2check.jsp" method="post">
    <table>
        <tr>
            <td>帐号：</td>
            <td><input id="11" name="id" onkeyup="f()"></td>
            <td><p id="12" style="color:red"/></td>
        </tr>
        <tr>
            <td>密码：</td>
            <td><input id="21" name="pw" onkeyup="f()" type="password"></td>
            <td><p id="22" style="color:red"/></td>
        </tr>
        <tr>
            <td>请确认密码：</td>
            <td><input id="31" onkeyup="f()" type="password"></td>
            <td><p id="32" style="color:red"/></td>
        </tr>
        <tr>
            <td>姓名：</td>
            <td><input name="name"></td>
        </tr>
        <tr>
            <td>性别（男填0，女填1）：</td>
            <td><input name="sex"></td>
        </tr>
        <tr>
            <td>年龄：</td>
            <td><input name="age"></td>
        </tr>
        <tr>
            <td>电话：</td>
            <td><input name="tel"></td>
        </tr>
    </table>
    <button id="0" type="submit">注册</button>
    </form>
</center>
<script>
    function f()
    {
        d=document;v="hidden";
        e=d.getElementById(11).value;
        e2=d.getElementById(21).value;
        e3=d.getElementById(31).value;
        if(e=="")t="请输入帐号";else t="";
        if(e2=="")t2="请输入密码";else t2="";
        if(e3!=e2)t3="请确保2次输入的密码一样";else t3="";
        if(e!=""&&e2!=""&&e3==e2)v="visible";
        d.getElementById(12).innerText=t;
        d.getElementById(22).innerText=t2;
        d.getElementById(32).innerText=t3;
        d.getElementById(0).style.visibility=v;
    }
    f();
</script>



