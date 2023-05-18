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
            <asp:SqlDataSource runat="server" ConnectionString="<%$ ConnectionStrings:tangbin %>" DeleteCommand="DELETE FROM [班级表] WHERE [班号] = @班号" InsertCommand="INSERT INTO [班级表] ([班号], [年级], [添加时间]) VALUES (@班号, @年级, @添加时间)" SelectCommand="SELECT * FROM [班级表]" UpdateCommand="UPDATE [班级表] SET [年级] = @年级, [添加时间] = @添加时间 WHERE [班号] = @班号">
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
        </div>
    </form>
</body>
</html>