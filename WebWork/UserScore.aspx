<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserScore.aspx.cs" Inherits="WebWork.UserScore" MasterPageFile="~/Site1.Master" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="border-style: double; border-color: #000000; font-size: large;">
        <br />
        <asp:TreeView ID="TreeView1" runat="server" BackColor="#CCFFFF" ForeColor="Black" Width="250px" ImageSet="BulletedList3" ShowExpandCollapse="False" BorderColor="#99FFCC" BorderStyle="Solid" Height="137px">
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
    <asp:GridView ID="GridView1" runat="server" BackColor="#DEBA84" BorderColor="#DEBA84" BorderWidth="1px" CellPadding="3" BorderStyle="None" CellSpacing="2" Height="143px" Width="438px">
        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
        <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
        <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
        <SelectedRowStyle BackColor="#738A9C" ForeColor="White" Font-Bold="True" />
        <SortedAscendingCellStyle BackColor="#FFF1D4" />
        <SortedAscendingHeaderStyle BackColor="#B95C30" />
        <SortedDescendingCellStyle BackColor="#F1E5CE" />
        <SortedDescendingHeaderStyle BackColor="#93451F" />
    </asp:GridView>
        </div>
</asp:Content>

