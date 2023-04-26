<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="while.aspx.cs" Inherits="Web2022220054罗忠烨.L03._while" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:TextBox ID="txtInput" runat="server" ForeColor="Silver" BorderStyle="Solid" OnTextChanged="TextBox1_TextChanged" style="width: 148px">请输入一个数字</asp:TextBox>
            <asp:Label ID="lblOutput" runat="server" Text=" "></asp:Label>
            <br />
            <asp:Button ID="btnSubmit" runat="server" Text="确定" OnClick="BtnSubmit_Click" />
        </div>
    </form>
</body>
</html>
