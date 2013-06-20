<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddQue.aspx.cs" Inherits="WebWork.AddQue" MasterPageFile="~/Site1.Master" %>



<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="border-style: double; border-color: #000000; font-size: large;">
        <br />
        <asp:TreeView ID="TreeView1" runat="server" BackColor="#CCFFFF" ForeColor="Black" Width="249px" ImageSet="BulletedList3" ShowExpandCollapse="False" BorderColor="#99FFCC" BorderStyle="Solid" Height="136px">
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
    请选择添加题目的种类：<asp:RadioButtonList ID="RadioButtonList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged" RepeatDirection="Horizontal">
        <asp:ListItem>单选题</asp:ListItem>
        <asp:ListItem>多选题</asp:ListItem>
        <asp:ListItem>判断题</asp:ListItem>
    </asp:RadioButtonList>
    <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
        <asp:View ID="View1" runat="server" >
            
            单选题：<br />
            
            <asp:Label ID="Label1" runat="server" Text="编号:"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="Label2" runat="server" Text="题目:     "></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox2" runat="server" Width="360px"></asp:TextBox>
            <br />
            <asp:Label ID="Label3" runat="server" Text="答案A:    "></asp:Label>
            &nbsp;&nbsp; <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="Label4" runat="server" Text="答案B:    "></asp:Label>
            &nbsp;&nbsp;
            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="Label5" runat="server" Text="答案C:    "></asp:Label>
            &nbsp;&nbsp;
            <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="Label6" runat="server" Text="答案D:    "></asp:Label>
            &nbsp;&nbsp;
            <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="Label7" runat="server" Text="正确答案："></asp:Label>
            &nbsp;<asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="Label8" runat="server" Text="问题类型："></asp:Label>
            
            &nbsp;<asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
            
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" Text="保存" Width="70px" OnClick="Button1_Click" />
            
        </asp:View>
        <asp:View ID="View2" runat="server" >
             多选题：<br />
             <asp:Label ID="Label9" runat="server" Text="编号:"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="Label10" runat="server" Text="题目:     "></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox10" runat="server" Width="360px"></asp:TextBox>
            <br />
            <asp:Label ID="Label11" runat="server" Text="答案A:    "></asp:Label>
            &nbsp;&nbsp; <asp:TextBox ID="TextBox11" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="Label12" runat="server" Text="答案B:    "></asp:Label>
            &nbsp;&nbsp;
            <asp:TextBox ID="TextBox12" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="Label13" runat="server" Text="答案C:    "></asp:Label>
            &nbsp;&nbsp;
            <asp:TextBox ID="TextBox13" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="Label14" runat="server" Text="答案D:    "></asp:Label>
            &nbsp;&nbsp;
            <asp:TextBox ID="TextBox14" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="Label15" runat="server" Text="正确答案："></asp:Label>
            &nbsp;<asp:TextBox ID="TextBox15" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="Label16" runat="server" Text="问题类型："></asp:Label>
            
            &nbsp;<asp:TextBox ID="TextBox16" runat="server"></asp:TextBox>
            
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button2" runat="server" Text="保存" Width="70px" OnClick="Button2_Click" />
        </asp:View>
        <asp:View ID="View3" runat="server" >
             判断题：<br />&nbsp;<asp:Label ID="Label17" runat="server" Text="编号:"></asp:Label>
             &nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox17" runat="server"></asp:TextBox>
             <br />
             <asp:Label ID="Label18" runat="server" Text="题目:     "></asp:Label>
             &nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox18" runat="server" Width="360px"></asp:TextBox>
             <br />
             <asp:Label ID="Label19" runat="server" Text="正确答案："></asp:Label>
             &nbsp;<asp:TextBox ID="TextBox19" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="Label20" runat="server" Text="问题类型："></asp:Label>
            
            &nbsp;<asp:TextBox ID="TextBox20" runat="server"></asp:TextBox>
            
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button3" runat="server" Text="保存" Width="70px" OnClick="Button3_Click" />
        </asp:View>
    </asp:MultiView>
    <br />
    <br />
    <br />
    <br />
        </div>

</asp:Content>