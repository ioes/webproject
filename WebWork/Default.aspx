<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="WebWork._1" MasterPagefile="~/Site1.Master"%>


    <asp:content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <br />
        <asp:Panel ID="Panel1" runat="server" Width="230px" BackColor="#CCFFFF">
            <asp:Label ID="Label2" runat="server" Text="在线考试系统登录" Font-Bold="True" Font-Size="Large"></asp:Label>
                                  <br />
                        用户名 				
						<asp:TextBox id="txtUserID" runat="server" MaxLength="20" Width="150px"></asp:TextBox>   
                                  <br />
                        密　码  
						<asp:TextBox id="txtPwd"  runat="server" MaxLength="20" TextMode="Password" Width="150px"></asp:TextBox>
						<asp:Button ID="Button3" runat="server" Text="登录" OnClick="Button3_Click" />
					              &nbsp;<asp:Button ID="Button4" runat="server" Text="重置" OnClick="Button2_Click" />
             
        </asp:Panel>
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
        <div>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 在线考试系统简介：<br />
            &nbsp;&nbsp; 暨南大学10软工在线考试系统，谁用谁知道，妈妈再也不用担心我的学习啦！一下省略一万字！！！！！！
        </div>
        <p>
            <span style="color: rgb(17, 17, 17); font-family: Helvetica, Arial, sans-serif; font-size: 13px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 21px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); display: inline !important; float: none;">(￣(ｴ)￣)ﾉ<span class="Apple-converted-space">&nbsp;</span></span><br style="color: rgb(17, 17, 17); font-family: Helvetica, Arial, sans-serif; font-size: 13px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 21px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);" />
        </p>
                <p>
                    .....</p>
                <p>
                    ...</p>
                <p>
                    ..</p>
                <p>
                    .</p>
                <p>
                    &nbsp;</p>
                <p>
                    &nbsp;</p>
    </asp:content>

