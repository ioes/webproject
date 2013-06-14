<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserScore.aspx.cs" Inherits="WebWork.UserScore" MasterPagefile="~/Site1.Master"%>


 <asp:content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
             <br />
        <asp:Panel ID="Panel2" runat="server" Visible="false">
            <asp:Label ID="Label1" runat="server" Text="欢迎您，ljc"></asp:Label>
            </asp:Panel>
        <asp:TreeView ID="TreeView1" runat="server"   BackColor="#CCFFFF" ForeColor="Black" Width="230px" ImageSet="BulletedList3" ShowExpandCollapse="False" BorderColor="#99FFCC" BorderStyle="Solid">
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
        <asp:GridView ID="GridView1" runat="server" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" GridLines="None">
            <AlternatingRowStyle BackColor="PaleGoldenrod" />
            <FooterStyle BackColor="Tan" />
            <HeaderStyle BackColor="Tan" Font-Bold="True" />
            <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
            <SortedAscendingCellStyle BackColor="#FAFAE7" />
            <SortedAscendingHeaderStyle BackColor="#DAC09E" />
            <SortedDescendingCellStyle BackColor="#E1DB9C" />
            <SortedDescendingHeaderStyle BackColor="#C2A47B" />
        </asp:GridView>
        </asp:content>

