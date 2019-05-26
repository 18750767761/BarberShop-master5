<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<center><h1 id="3"/></center>
<div style="background-color:#cccccc;float:left;width:15%;height:90%">
    <button id="2" onclick="f('4user.jsp',this)" style="width:100%">对用户进行增删改操作</button><br>
    <button onclick="f('5barber.jsp',this)" style="width:100%">对发型师进行增删改操作</button><br>
	<button onclick="f('6hairstyle.jsp',this)" style="width:100%">对发型进行增删改操作</button><br>
</div>
<iframe id="1" style="width:84%;height:90%"></iframe>
<script>
    d=document;
    function f(i,j){d.getElementById(1).src=i;d.getElementById(3).innerText=j.innerText;}
    d.getElementById(2).click();
</script>