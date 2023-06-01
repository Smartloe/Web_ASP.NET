<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SqlDSInsert.aspx.cs" Inherits="Web2022220054罗忠烨.L10.SqlDSInsert" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h3>插入新班级</h3>
            班号：<asp:TextBox ID="班号" runat="server"></asp:TextBox>
            <br />
            年级：<asp:TextBox ID="年级" runat="server"></asp:TextBox>
            <asp:Button ID="保存Button" runat="server" Text="保存Button" OnClick="保存Button_Click"  />
            <asp:SqlDataSource ID="班级SqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:Web程序设计ConnectionString2 %>" SelectCommand="SELECT [班号], [年级] FROM [班级表]">

            </asp:SqlDataSource>
            
            <asp:GridView ID="班级GridView" runat="server" AutoGenerateColumns="False" DataKeyNames="班号" DataSourceID="班级SqlDataSource">
                <Columns>
                    <asp:BoundField DataField="班号" HeaderText="班号" ReadOnly="True" SortExpression="班号" />
                    <asp:BoundField DataField="年级" HeaderText="年级" SortExpression="年级" />
                </Columns>

            </asp:GridView>
        </div>
    </form>
</body>
</html>