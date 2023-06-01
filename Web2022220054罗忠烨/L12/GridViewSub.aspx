<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GridViewSub.aspx.cs" Inherits="Web2022220054罗忠烨.L12.GridViewSub" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Web程序设计ConnectionString6 %>" DeleteCommand="DELETE FROM [班级表] WHERE [班号] = @班号" InsertCommand="INSERT INTO [班级表] ([班号], [年级], [添加时间]) VALUES (@班号, @年级, @添加时间)" SelectCommand="SELECT * FROM [班级表]" UpdateCommand="UPDATE [班级表] SET [年级] = @年级, [添加时间] = @添加时间 WHERE [班号] = @班号">
                <DeleteParameters>
                    <asp:Parameter Name="班号" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="班号" Type="String" />
                    <asp:Parameter Name="年级" Type="String" />
                    <asp:Parameter Name="添加时间" Type="DateTime" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="年级" Type="String" />
                    <asp:Parameter Name="添加时间" Type="DateTime" />
                    <asp:Parameter Name="班号" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Web程序设计ConnectionString6 %>" DeleteCommand="DELETE FROM [学生表] WHERE [Id] = @Id" InsertCommand="INSERT INTO [学生表] ([学号], [姓名], [性别], [手机号], [邮箱], [出生日期], [添加时间], [班号]) VALUES (@学号, @姓名, @性别, @手机号, @邮箱, @出生日期, @添加时间, @班号)" SelectCommand="SELECT * FROM [学生表] WHERE ([Id] = @Id)" UpdateCommand="UPDATE [学生表] SET [学号] = @学号, [姓名] = @姓名, [性别] = @性别, [手机号] = @手机号, [邮箱] = @邮箱, [出生日期] = @出生日期, [添加时间] = @添加时间, [班号] = @班号 WHERE [Id] = @Id">
                <DeleteParameters>
                    <asp:Parameter Name="Id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="学号" Type="String" />
                    <asp:Parameter Name="姓名" Type="String" />
                    <asp:Parameter Name="性别" Type="String" />
                    <asp:Parameter Name="手机号" Type="String" />
                    <asp:Parameter Name="邮箱" Type="String" />
                    <asp:Parameter DbType="Date" Name="出生日期" />
                    <asp:Parameter Name="添加时间" Type="DateTime" />
                    <asp:Parameter Name="班号" Type="String" />
                </InsertParameters>
                <SelectParameters>
                    <asp:ControlParameter ControlID="GridView1" Name="Id" PropertyName="SelectedValue" Type="Int32" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="学号" Type="String" />
                    <asp:Parameter Name="姓名" Type="String" />
                    <asp:Parameter Name="性别" Type="String" />
                    <asp:Parameter Name="手机号" Type="String" />
                    <asp:Parameter Name="邮箱" Type="String" />
                    <asp:Parameter DbType="Date" Name="出生日期" />
                    <asp:Parameter Name="添加时间" Type="DateTime" />
                    <asp:Parameter Name="班号" Type="String" />
                    <asp:Parameter Name="Id" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="班号" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="班号" HeaderText="班号" ReadOnly="True" SortExpression="班号" />
                    <asp:BoundField DataField="年级" HeaderText="年级" SortExpression="年级" />
                    <asp:BoundField DataField="添加时间" HeaderText="添加时间" SortExpression="添加时间" />
                </Columns>
            </asp:GridView>
            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource2">
                <Columns>
                    <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                    <asp:BoundField DataField="学号" HeaderText="学号" SortExpression="学号" />
                    <asp:BoundField DataField="姓名" HeaderText="姓名" SortExpression="姓名" />
                    <asp:BoundField DataField="性别" HeaderText="性别" SortExpression="性别" />
                    <asp:BoundField DataField="手机号" HeaderText="手机号" SortExpression="手机号" />
                    <asp:BoundField DataField="邮箱" HeaderText="邮箱" SortExpression="邮箱" />
                    <asp:BoundField DataField="出生日期" HeaderText="出生日期" SortExpression="出生日期" />
                    <asp:BoundField DataField="添加时间" HeaderText="添加时间" SortExpression="添加时间" />
                    <asp:BoundField DataField="班号" HeaderText="班号" SortExpression="班号" />
                </Columns>
            </asp:GridView>
        </div>
    </form>
</body>
</html>
