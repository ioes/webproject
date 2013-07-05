<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebWork1.aspx.cs" Inherits="WebWork.WebWork11" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <strong>用户登录</strong><br />
        用户名:<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="用户名不能为空" ForeColor="Red" ControlToValidate="TextBox1" Display="Dynamic"></asp:RequiredFieldValidator>
        <br />
        密   码: <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="密码不能为空" ForeColor="Red" ControlToValidate="TextBox2" Display="Dynamic"></asp:RequiredFieldValidator>
        <br />
        &nbsp;
        <asp:Button ID="Button1" runat="server" Text="登录" OnClick="Button1_Click" style="height: 21px" />
        &nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" Text="返回首页" CausesValidation = "False" OnClick="Button2_Click" />
        <br />
        <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
        <br />
        <br />
        程序说明：使用RequiredFieldValidator控件检验输入是否为空。</form>
</body>
</html>
