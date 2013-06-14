<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserText.aspx.cs" Inherits="WebWork.Default" masterpagefile="~/Site1.Master"%>

<asp:content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
            <br />
        <asp:Panel ID="Panel2" runat="server" Visible="false">
            <asp:Label ID="Label1" runat="server" Text="欢迎您，ljc"></asp:Label>
            </asp:Panel>
        <asp:TreeView ID="TreeView1" runat="server" BackColor="#CCFFFF" ForeColor="Black" Width="230px" ImageSet="BulletedList3" ShowExpandCollapse="False" BorderColor="#99FFCC" BorderStyle="Solid">
            <HoverNodeStyle Font-Underline="True" ForeColor="#5555DD" />
            <Nodes>
                <asp:TreeNode Text="试题库系统" Value="试题库系统" NavigateUrl="~/default.aspx">
                    <asp:TreeNode Text="在线考试" Value="在线考试" NavigateUrl="~/UserText.aspx"></asp:TreeNode>
                    <asp:TreeNode Text="查看成绩" Value="查看成绩" NavigateUrl="~/UserScore.aspx"></asp:TreeNode>
                    <asp:TreeNode Text="错题复习   " Value="错题库"></asp:TreeNode>
                    <asp:TreeNode Text="用户信息" Value="用户信息"></asp:TreeNode>
                </asp:TreeNode>
            </Nodes>
            <NodeStyle Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" HorizontalPadding="5px" NodeSpacing="0px" VerticalPadding="0px" />
            <ParentNodeStyle Font-Bold="False" />
            <SelectedNodeStyle Font-Underline="True" ForeColor="#5555DD" HorizontalPadding="0px" VerticalPadding="0px" />
        </asp:TreeView>
        <br />
</asp:content>

<asp:content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
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
    </asp:content>
