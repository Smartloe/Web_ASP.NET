<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CustomValidator.aspx.cs" Inherits="Web2022220054罗忠烨.L08.CustomValidator" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>验证必须输入一个偶数</title>
</head>
<script type="text/javascript">
    function validateNumber(sender, args) {
        var number = parseInt(args.Value);
        if (number % 2 == 0) {
            args.IsValid = true;
        } else {
            args.IsValid = false;
        }
    }
</script>
<body>
    <form id="form1" runat="server">
        <div>
            请输入一个偶数：<asp:TextBox ID="txtNumber" runat="server"></asp:TextBox>
            <asp:CustomValidator ID="cvNumber" runat="server" ControlToValidate="txtNumber" ClientValidationFunction="validateNumber" ErrorMessage="*Please enter an even number" ForeColor="Red"></asp:CustomValidator>
        </div>
    </form>
</body>
</html>