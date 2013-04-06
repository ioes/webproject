<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="MvcApplication.WebForm1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>我叫李锦才</title>
</head>
<body bgcolor="#ccffcc">
    <form id="form1" runat="server">
    <div>
    这个是干嘛的？
    </div>
    </form>
    <h1>我叫李锦才，大家好。</h1>
    <p>这是一个静态页面</p>
    <form action=ur1 method=get>
    <h2>登录</h2>
    账号:
    <input type=text name=myname /><br />
    密码:
    <input type=password name=mypasswrod /><br />
    <input type=submit value="登录" />
    <input type=reset value="重置" />
    </form>
</body>
</html>
