<%@ Page Title="主页" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="web作业._Default" %>

<asp:Content runat="server" ID="FeaturedContent" ContentPlaceHolderID="FeaturedContent">
    <section class="featured">
        <div class="content-wrapper">
            <hgroup class="title">
                <h1><%: Title %>.</h1>
                <h2>试题库系统测试程序。</h2>
            </hgroup>
            <p>
                若要了解有关项目要求的详细信息，请访问 <a href="http://study.jnu.edu.cn" title="ASP.NET Website">http://study.jnu.edu.cn</a>              
            </p>
            要进行测试请按以下按键：
            <p>
                <asp:Button ID="Button1" runat="server" Text="测试" OnClick="Button1_Click" />
            </p>
        </div>
    </section>
</asp:Content>
<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <h3>项目要求:</h3>
    <ol class="round">
        <li class="one">
            <h5>第一步</h5>
            分课程、题型建立试题库（题型包括单选、多选、问答题）。
            <a href="http://study.jnu.edu.cn/">了解详细信息...</a>
        </li>
        <li class="two">
            <h5>第二步</h5>
            教师按课程完成实体与答案的录入、修改、删除、查询、关闭等操作。    
        </li>
        <li class="three">
            <h5>第三步</h5>
            学生按课程章节进行测试，并自动判分，完成后可以显示答案。
        </li>
    </ol>
</asp:Content>
