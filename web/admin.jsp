<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8" %>
<!DOCTYPE>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Employee and Tool Management System</title>
    <link type="text/css" rel="stylesheet" href="/css/style.css"/>
    <script type="text/javascript" src="/js/jquery-1.8.3.min.js"></script>
    <script type="text/javascript" src="/js/menu.js"></script>
</head>

<body>
<div class="top"></div>
<div id="header">
    <div class="logo">Employee and Tool Management System</div>
    <div class="navigation">
        <ul>
            <li>欢迎您！</li>
            <li><a href=""><s:property value="username"/> </a></li>
            <li><a href="">修改密码</a></li>
            <li><a href="">设置</a></li>
            <li><a href="">退出</a></li>
        </ul>
    </div>
</div>
<div id="content">
    <div class="left_menu">
        <ul id="nav_dot">
            <s:debug/>
            <li>
                <h4 class="M1"><span></span>Tools</h4>
                <div class="list-item none">
                    <a href='/ETMS/Inexpensivetools_show?staffid=<s:property value="staff.id"/>' target="menuFrame">Inexpensive tools </a>
                    <a href='/ETMS/Expensivetools_show?staffid=<s:property value="staff.id"/>' target="menuFrame">Expensive tools</a>
                    <a href='/ETMS/Expensivetools_request?staffid=<s:property value="staff.id"/>' target="menuFrame">Request Expensive tools</a>
                </div>
            </li>
            <li>
                <h4 class="M2"><span></span>Record</h4>
                <div class="list-item none">
                    <a href='/ETMS/record/request?staffid=<s:property value="staff.id"/>' target="menuFrame">Request</a>
                    <a href='/ETMS/record/lend?staffid=<s:property value="staff.id"/>' target="menuFrame">Lend</a>
                    <a href='/ETMS/record/register?staffid=<s:property value="staff.id"/>' target="menuFrame">Register</a>
                    <a href='/ETMS/record/cancellation?staffid=<s:property value="staff.id"/>' target="menuFrame">Cancellation</a>
                    <a href='' target="menuFrame">Revert</a>
                </div>
            </li>

        </ul>
    </div>
    <div class="m-right">
        <%--<div class="right-nav">
            <ul>
                <li><img src="/images/home.png"></li>
                <li style="margin-left:25px;">您当前的位置：</li>
                <li><a href="#">系统公告</a></li>
                <li>></li>
                <li><a href="#">最新公告</a></li>
            </ul>
        </div>--%>
        <div class="main">
            <iframe id="menuFrame" name="menuFrame" src="/Staff_info" style="overflow:visible;"
                    scrolling="yes" frameborder="no" width="100%" height="100%"></iframe>
        </div>
    </div>
</div>
<div class="bottom"></div>
<div id="footer"><p>FastRepair
</p></div>
<script>navList(12);</script>
</body>
</html>
