<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebWork2.aspx.cs" Inherits="WebWork.WebWork2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        打印XX乘法表：<br />
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        输入你要打印的X（1-9）的数值<br />
        <asp:Button ID="Button1" runat="server" Text="确定" OnClick="Button1_Click" />
        &nbsp;
        <asp:Button ID="Button2" runat="server" Text="返回首页" OnClick="Button2_Click" />
        <br />
        程序说明：使用了动态控件，可以动态打印XX乘法表。<br />
        <asp:PlaceHolder ID="PlaceHolder1" runat="server"></asp:PlaceHolder>
    </div>
    </form>
</body>
</html>
