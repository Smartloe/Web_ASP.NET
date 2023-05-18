<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Parameters.aspx.cs" Inherits="Web2022220054罗忠烨.L10.Parameters" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            请选择班级:<asp:RadioButtonList ID="RadioButtonList" runat="server" AutoPostBack="True" DataSourceID="班级SqlDataSource" DataTextField="班号" DataValueField="班号"></asp:RadioButtonList>学生信息：<br />
            <asp:ListBox ID="学生ListBox" runat="server" DataSourceID="学生SqlDataSource" DataTextField="姓名" DataValueField="学号" Width="347px"></asp:ListBox><asp:SqlDataSource ID="班级SqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:tangbin %>" SelectCommand="SELECT [班号] FROM [班级表]"></asp:SqlDataSource>
            <asp:SqlDataSource ID="学生SqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:tangbin %>" SelectCommand="SELECT [学号], [姓名] FROM [学生表] WHERE ([班号] = @班号) ORDER BY [学号]">
                <SelectParameters>
                    <asp:ControlParameter ControlID="RadioButtonList" Name="班号" PropertyName="SelectedValue" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>