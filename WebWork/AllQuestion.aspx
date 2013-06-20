<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AllQuestion.aspx.cs" Inherits="WebWork.AllQuestion" MasterPageFile="~/Site1.Master" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="border-style: double; border-color: #000000; font-size: large;">
        <br />
        <asp:TreeView ID="TreeView1" runat="server" BackColor="#CCFFFF" ForeColor="Black" Width="251px" ImageSet="BulletedList3" ShowExpandCollapse="False" BorderColor="#99FFCC" BorderStyle="Solid" Height="135px">
            <HoverNodeStyle Font-Underline="True" ForeColor="#5555DD" />
            <Nodes>
                <asp:TreeNode Text="试题库系统" Value="试题库系统" NavigateUrl="~/default.aspx">
                    <asp:TreeNode Text="在线考试" Value="在线考试" NavigateUrl="~/UserText.aspx"></asp:TreeNode>
                    <asp:TreeNode Text="查看成绩" Value="查看成绩" NavigateUrl="~/UserScore.aspx"></asp:TreeNode>
                    <asp:TreeNode Text="错题复习   " Value="错题库" NavigateUrl="~/ErrorQue.aspx"></asp:TreeNode>
                    <asp:TreeNode Text="添加试题" Value="用户信息" NavigateUrl="~/AddQue.aspx"></asp:TreeNode>
                    <asp:TreeNode NavigateUrl="~/AllQuestion.aspx" Text="考试题库" Value="考试题库"></asp:TreeNode>
                </asp:TreeNode>
            </Nodes>
            <NodeStyle Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" HorizontalPadding="5px" NodeSpacing="0px" VerticalPadding="0px" />
            <ParentNodeStyle Font-Bold="False" />
            <SelectedNodeStyle Font-Underline="True" ForeColor="#5555DD" HorizontalPadding="0px" VerticalPadding="0px" />
        </asp:TreeView>
        <br />
    </div>
    <br />
    <asp:Image ID="Image1" runat="server" ImageUrl="~/Images/jnu.jpg" Width="150px" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div style="border-style: double; border-color: #000000">
        请选择你要查看的类型：<br />
        <asp:RadioButtonList ID="RadioButtonList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged" RepeatDirection="Horizontal">
            <asp:ListItem>单选题</asp:ListItem>
            <asp:ListItem>多选题</asp:ListItem>
            <asp:ListItem>判断题</asp:ListItem>
        </asp:RadioButtonList>
        <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
            <asp:View ID="View1" runat="server">
                <asp:GridView ID="GridView1" runat="server" AllowPaging="true" AllowSorting="true" PageSize="3" OnPageIndexChanging="GridView1_PageIndexChanging" AutoGenerateColumns="False" Width="80%" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" GridLines="None">
                    <AlternatingRowStyle BackColor="PaleGoldenrod"  />
                    <Columns>
                        <asp:TemplateField>
                            <HeaderTemplate>
                                <asp:Label ID="Label13" runat="server" Text="单选题"></asp:Label><br />
                            </HeaderTemplate>
                            <ItemTemplate>
                                <table align="center" border="0" cellpadding="1" cellspacing="1" style="width: 100%">
                                    <tr>
                                        <td colspan="3" class="auto-style1">
                                            <asp:Label ID="Label1" runat="server" Text="<%# Container.DataItemIndex+1 %>">
                                            </asp:Label><asp:Label ID="Label2" runat="server" Text='<%# Eval("Title","、{0}") %>'>
                                            </asp:Label><br />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td width="50%">A:<asp:RadioButton ID="RadioButton1" runat="server" GroupName="Sl"
                                            Text='<%# Eval("AnswerA") %>' /></td>
                                    </tr>
                                    <tr>
                                        <td width="50%">B:<asp:RadioButton ID="RadioButton2" runat="server" GroupName="Sl"
                                            Text='<%# Eval("AnswerB") %>' /></td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td width="50%">C:<asp:RadioButton ID="RadioButton3" runat="server" GroupName="Sl"
                                            Text='<%# Eval("AnswerC") %>' /></td>
                                    </tr>
                                    <tr>
                                        <td width="50%">D:<asp:RadioButton ID="RadioButton4" runat="server" GroupName="Sl"
                                            Text='<%# Eval("AnswerD") %>' /></td>
                                        <td></td>
                                    </tr>
                                    <tr>
                                        <td colspan="3">
                                            <asp:Label ID="Label3" runat="server" Text="正确的答案是：" ForeColor="Red"></asp:Label>
                                            <asp:Label ID="Label4" runat="server" Text='<%# Eval("Answer") %>'  ForeColor="Red"></asp:Label></td>
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
            </asp:View>
            <asp:View ID="View2" runat="server">
                <asp:GridView ID="GridView2" runat="server" AllowPaging="true" AllowSorting="true" PageSize="3" OnPageIndexChanging="GridView2_PageIndexChanging" AutoGenerateColumns="False" Width="80%" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" GridLines="None">
                    <AlternatingRowStyle BackColor="PaleGoldenrod" />
                    <Columns>
                        <asp:TemplateField>
                            <HeaderTemplate>
                                <asp:Label ID="Label14" runat="server" Text="多选题"></asp:Label>
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
                                                <asp:Label ID="Label7" runat="server" Text="正确的答案是：" ForeColor="Red"></asp:Label>
                                                <asp:Label ID="Label8" runat="server" Text='<%# Eval("Answer") %>' ForeColor="Red"></asp:Label>
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
            </asp:View>
            <asp:View ID="View3" runat="server">
                <asp:GridView ID="GridView3" runat="server" AllowPaging="true" AllowSorting ="true" PageSize="3" OnPageIndexChanging="GridView3_PageIndexChanging" AutoGenerateColumns="False" Width="80%" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" GridLines="None">
                    <AlternatingRowStyle BackColor="PaleGoldenrod" />
                    <Columns>
                        <asp:TemplateField>
                            <HeaderTemplate>
                                <asp:Label ID="Label15" runat="server" Text="判断题"></asp:Label>
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
                                                <asp:Label ID="Label11" runat="server" Text="正确的答案是：" ForeColor="Red"></asp:Label>
                                                <asp:Label ID="Label12" runat="server" Text='<%# Eval("Answer") %>'  ForeColor="Red"></asp:Label>
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
            </asp:View>
        </asp:MultiView>
    </div>
</asp:Content>
