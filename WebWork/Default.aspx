<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebWork.WebWork1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body style="background-image:url('/Images/background2.jpg'); visibility: visible;";>  
    <form id="form1" runat="server">
    <div style="font-family: 宋体, Arial, Helvetica, sans-serif; font-size: xx-large; color: #FF0000">
     这就是一个静态页面！
        <br />
     李锦才，2010052815，G2组。
        <br />
        <br />
    </div>
        <asp:HyperLink ID="HyperLink1" runat="server" ForeColor="#3366FF" NavigateUrl="~/WebWork1.aspx">作业一：用户名和密码的非空判断程序。</asp:HyperLink>
        <br />
        <br />
        <asp:HyperLink ID="HyperLink2" runat="server" ForeColor="#3366FF" NavigateUrl="~/WebWork2.aspx">作业二：99乘法口诀表。</asp:HyperLink>
        <br />
        <br />
        <asp:HyperLink ID="HyperLink3" runat="server" ForeColor="#3366FF" NavigateUrl="~/WebWork3.aspx">作业三：注册页面。</asp:HyperLink>
        <br />
        <br />
        <asp:HyperLink ID="HyperLink4" runat="server" ForeColor="#3366FF" NavigateUrl="~/WebWork4.aspx">作业四（课程设计）：在线考试系统（测试部分）。</asp:HyperLink>
    </form>
</body>
</html>
