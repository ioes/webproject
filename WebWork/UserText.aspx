<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserText.aspx.cs" Inherits="WebWork.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">         
        <asp:ImageButton ID="ImageButton1" ImageUrl="~/Images/top01.jpg"  runat="server" OnClick="ImageButton1_Click" />
        <div>
            <asp:Table ID="Table1" runat="server"></asp:Table>
            <asp:Label ID="Label101" runat="server" Text="请选择科目："></asp:Label>
            <asp:RadioButtonList ID="RadioButtonList1" runat="server" AutoPostBack="True">
                <asp:ListItem Value="语文">语文</asp:ListItem>
                <asp:ListItem Value="数学">数学</asp:ListItem>
                <asp:ListItem Value="英语">英语</asp:ListItem>
            </asp:RadioButtonList>
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="确定" />
            <asp:Label ID="Label102" runat="server" Text="Label" Visible="false"></asp:Label>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Width="80%" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" GridLines="None">
                <AlternatingRowStyle BackColor="PaleGoldenrod" />
                <Columns>
                    <asp:TemplateField>
                        <HeaderTemplate>
                            <asp:Label ID="Label13" runat="server" Text="一、单选题(每题20分）"></asp:Label>
                            <br />
                        </HeaderTemplate>
                        <ItemTemplate>
                            <table align="center" border="0" cellpadding="1" cellspacing="1" style="width: 100%">
                                <tr>
                                    <td colspan="3" class="auto-style1">
                                        <asp:Label ID="Label1" runat="server" Text="<%# Container.DataItemIndex+1 %>">
                                        </asp:Label>
                                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("Title","、{0}") %>'>
                                        </asp:Label><br />
                                    </td>
                                </tr>
                                <tr>
                                    <td width="50%">A:<asp:RadioButton ID="RadioButton1" runat="server" GroupName="Sl"
                                        Text='<%# Eval("AnswerA") %>' />
                                    </td>
                                </tr>
                                <tr>
                                    <td width="50%">B:<asp:RadioButton ID="RadioButton2" runat="server" GroupName="Sl"
                                        Text='<%# Eval("AnswerB") %>' />
                                    </td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td width="50%">C:<asp:RadioButton ID="RadioButton3" runat="server" GroupName="Sl"
                                        Text='<%# Eval("AnswerC") %>' />
                                    </td>
                                </tr>
                                <tr>
                                    <td width="50%">D:<asp:RadioButton ID="RadioButton4" runat="server" GroupName="Sl"
                                        Text='<%# Eval("AnswerD") %>' />
                                    </td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td colspan="3">
                                        <asp:Label ID="Label3" runat="server" Text="你的答案错误，正确的答案是：" Visible="False" ForeColor="Red"></asp:Label>
                                        <asp:Label ID="Label4" runat="server" Text='<%# Eval("Answer") %>' Visible="False" ForeColor="Red"></asp:Label>
                                    </td>
                                </tr>
                            </table>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
                <FooterStyle BackColor="Tan" />
                <HeaderStyle BackColor="Tan" Font-Bold="True" />
                <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
                <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                <SortedAscendingCellStyle BackColor="#FAFAE7" />
                <SortedAscendingHeaderStyle BackColor="#DAC09E" />
                <SortedDescendingCellStyle BackColor="#E1DB9C" />
                <SortedDescendingHeaderStyle BackColor="#C2A47B" />
            </asp:GridView>
            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" Width="80%" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" GridLines="None">
                <AlternatingRowStyle BackColor="PaleGoldenrod" />
                <Columns>
                    <asp:TemplateField>
                        <HeaderTemplate>
                            <asp:Label ID="Label14" runat="server" Text="二、多选题(每题30分）"></asp:Label>
                            <br />
                        </HeaderTemplate>
                        <ItemTemplate>
                            <table align="center" border="0" cellpadding="1" cellspacing="1"
                                width="100%">
                                <tr>
                                    <td colspan="3">
                                        <asp:Label ID="Label5" runat="server" Text="<%# Container.DataItemIndex+1 %>">
                                        </asp:Label>
                                        <asp:Label ID="Label6" runat="server" Text='<%# Eval("Title","、{0}") %>'>
                                        </asp:Label><br />

                                    </td>
                                </tr>
                                <tr>
                                    <td width="50%">A:<asp:CheckBox ID="CheckBox1" runat="server"
                                        Text='<%# Eval("AnswerA") %>' />
                                    </td>
                                </tr>
                                <tr>
                                    <td width="50%">B:<asp:CheckBox ID="CheckBox2" runat="server"
                                        Text='<%# Eval("AnswerB") %>' />
                                    </td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td width="50%">C:<asp:CheckBox ID="CheckBox3" runat="server"
                                        Text='<%# Eval("AnswerC") %>' />
                                    </td>
                                </tr>
                                <tr>
                                    <td width="50%">D:<asp:CheckBox ID="CheckBox4" runat="server"
                                        Text='<%# Eval("AnswerD") %>' />
                                    </td>
                                    <td></td>
                                    <tr>
                                        <td colspan="3">
                                            <asp:Label ID="Label7" runat="server" Text="你的答案错误，正确的答案是：" Visible="False" ForeColor="Red"></asp:Label>
                                            <asp:Label ID="Label8" runat="server" Text='<%# Eval("Answer") %>' Visible="False" ForeColor="Red"></asp:Label>
                                        </td>
                                    </tr>
                                </tr>
                            </table>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
                <FooterStyle BackColor="Tan" />
                <HeaderStyle BackColor="Tan" Font-Bold="True" />
                <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
                <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                <SortedAscendingCellStyle BackColor="#FAFAE7" />
                <SortedAscendingHeaderStyle BackColor="#DAC09E" />
                <SortedDescendingCellStyle BackColor="#E1DB9C" />
                <SortedDescendingHeaderStyle BackColor="#C2A47B" />
            </asp:GridView>
            <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" Width="80%" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" GridLines="None">
                <AlternatingRowStyle BackColor="PaleGoldenrod" />
                <Columns>
                    <asp:TemplateField>
                        <HeaderTemplate>
                            <asp:Label ID="Label15" runat="server" Text="三、判断题(每题15分）"></asp:Label>
                            <br />
                        </HeaderTemplate>
                        <ItemTemplate>
                            <table align="center" border="0" cellpadding="1" cellspacing="1"
                                width="100%">
                                <tr>
                                    <td colspan="2">
                                        <asp:Label ID="Label9" runat="server" Text="<%# Container.DataItemIndex+1 %>">
                                        </asp:Label>
                                        <asp:Label ID="Label10" runat="server" Text='<%# Eval("Title","、{0}") %>'>
                                        </asp:Label><br />

                                        <br />
                                    </td>
                                </tr>
                                <tr>
                                    <td width="50%">
                                        <asp:CheckBox ID="CheckBox5" runat="server" Text="正确" />
                                    </td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td width="50%">
                                        <asp:CheckBox ID="CheckBox6" runat="server" Text="错误" />
                                    </td>
                                    <td></td>
                                    <tr>
                                        <td colspan="2">
                                            <asp:Label ID="Label11" runat="server" Text="你的答案错误，正确的答案是：" Visible="False" ForeColor="Red"></asp:Label>
                                            <asp:Label ID="Label12" runat="server" Text='<%# Eval("Answer") %>' Visible="False" ForeColor="Red"></asp:Label>
                                        </td>
                                    </tr>
                                </tr>
                            </table>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
                <FooterStyle BackColor="Tan" />
                <HeaderStyle BackColor="Tan" Font-Bold="True" />
                <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
                <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                <SortedAscendingCellStyle BackColor="#FAFAE7" />
                <SortedAscendingHeaderStyle BackColor="#DAC09E" />
                <SortedDescendingCellStyle BackColor="#E1DB9C" />
                <SortedDescendingHeaderStyle BackColor="#C2A47B" />
            </asp:GridView>
            <asp:Button ID="Button1" runat="server" Text="交卷" OnClick="Button1_Click" Height="33px" Width="154px" Visible="false" />
            <asp:Label ID="Label100" runat="server" Font-Size="20pt" ForeColor="#FF3300"></asp:Label>
            <br />
            <asp:Button ID="Button3" runat="server" Height="33px" OnClick="Button3_Click" Text="保存成绩" Width="154px" Visible="False" />
        </div>
    </form>
</body>
</html>
