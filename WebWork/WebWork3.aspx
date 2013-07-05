<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebWork3.aspx.cs" Inherits="WebWork.WebWork3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body> 
    <form id="form1" runat="server">
        <br />
        <strong>用户注册</strong><br />
        用户名 :<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="用户名不能为空" ForeColor="Red" ControlToValidate="TextBox1" Display="None"></asp:RequiredFieldValidator>
        <br />
        密&nbsp; 码:<asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="密码不能为空" ForeColor="Red" ControlToValidate="TextBox2" Display="None"></asp:RequiredFieldValidator>
        <br />
        确认密码:<asp:TextBox ID="TextBox3" runat="server" TextMode="Password"></asp:TextBox>
        <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="密码输入不一致" ForeColor="Red" ControlToValidate="TextBox3" ControlToCompare="TextBox1" Display="None"></asp:CompareValidator>
        <br />
        联系地址:<asp:TextBox ID="TextBox4" runat="server" ></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="联系地址不能为空" ForeColor="Red" ControlToValidate="TextBox4" Display="None"></asp:RequiredFieldValidator>
        <br />
        出入日期:<asp:TextBox ID="TextBox5" runat="server" Width="41px" ></asp:TextBox>年
        <asp:TextBox ID="TextBox6" runat="server" Width="41px" ></asp:TextBox>月
        <asp:TextBox ID="TextBox7" runat="server" Width="41px" ></asp:TextBox>日
        <br />
        <asp:RangeValidator ID="RangeValidator1" runat="server" MaximumValue="2013" MinimumValue="1" Type="Integer" ErrorMessage="出生年份不能大于当前年份,"  ForeColor="Red" ControlToValidate="TextBox5" Display="None"></asp:RangeValidator>
        <asp:RangeValidator ID="RangeValidator2" runat="server" MaximumValue="12" MinimumValue="1" Type="Integer" ErrorMessage="出生月份必须为1-12月," ForeColor="Red" ControlToValidate="TextBox6" Display="None"></asp:RangeValidator>
        <asp:RangeValidator ID="RangeValidator3" runat="server" MaximumValue="31" MinimumValue="1" Type="Integer" ErrorMessage="出生日期必须为1-31号." ForeColor="Red" ControlToValidate="TextBox7" Display="None"></asp:RangeValidator>
        <br />
        电子邮件:<asp:TextBox ID="TextBox8" runat="server" ></asp:TextBox>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="你输入电子邮件的格式错误"  ForeColor="Red" ControlToValidate="TextBox8" Display="None" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        <br />
        邮政编码:<asp:TextBox ID="TextBox9" runat="server" ></asp:TextBox>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="你输入的邮政编码格式错误"  ForeColor="Red" ControlToValidate="TextBox9" Display="None" ValidationExpression="\d{6}"></asp:RegularExpressionValidator>
        <br />
        联系电话:<asp:TextBox ID="TextBox10" runat="server" ></asp:TextBox>(XXX-XXXXXXXX)
        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="你输入联系电话的格式错误"  ForeColor="Red" ControlToValidate="TextBox10" Display="None" ValidationExpression="(\(\d{3}\)|\d{3}-)?\d{8}"></asp:RegularExpressionValidator>
        <br />
        &nbsp;
        <asp:Button ID="Button1" runat="server" Text="注册" OnClick="Button1_Click" style="height: 21px" />
        &nbsp;&nbsp; 
        <asp:Button ID="Button2" runat="server" Text="返回首页" CausesValidation = "False" OnClick="Button2_Click" />
        <br />
        <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
        <br />
        <br />
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" BorderColor="#003300" BorderStyle="Double" BorderWidth="1px" ForeColor="#FF3300" HeaderText="所有错误信息提示" Width="250px" style="margin-top:0px" />
    </form>
</body>
</html>
