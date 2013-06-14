<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WebWork.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table style="height:222px; width: 76%;">
              <tr>
                        <td align="left" class="biaoti">在线考试登录窗口 | Login</td>
                      </tr>
                      <tr>
                        <td height="2" align="left" background="images/login_line_1.jpg"><img src="images/none.gif" width="1" height="1" /></td>
                      </tr>
                      <tr>
                        <td align="left"><table border="0" cellspacing="4" cellpadding="0" style="width: 500px">
                            <tr>
                              <td width="24%">用户名 | ID:</td>
                              <td width="76%">						
							<asp:TextBox id="txtUserID" runat="server" MaxLength="20" Width="150px"></asp:TextBox>   
                                        
                                </td>
                            </tr>
                            <tr>
                              <td>密　码 | PS:</td>
                              <td>
						<asp:TextBox id="txtPwd"  runat="server" MaxLength="20" TextMode="Password" Width="150px"></asp:TextBox>
                        <tr>
                              <td colspan="2"><a href="javascript:location.replace('UserTest.aspx')">
						<asp:Button ID="Button1" runat="server" Text="登录" /></a>
					    <asp:Button ID="Button2" runat="server" Text="重置" OnClick="Button2_Click" />
                               
                              </td>
                            </tr>
                                </td>
                            </tr>
        </table>
    </div>                         
    </form>
</body>
</html>
