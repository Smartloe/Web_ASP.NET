<%@ Page Title="首页" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="Library.Admin.Admin_Index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="container">
    <div class="center-block" style="margin-top:50px;padding:20px;width:500px;background-color:rgba(255, 255, 255, 0.55);border-radius:30px;">
      <h3 class="text-center">
            <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>:你好！</h3>
      <h3 class="text-center" style="margin-top:70px;">本馆共有<asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>本图书</h3>
      <h3 class="text-center">共有<asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>名读者</h3>
      <h4 class="text-center" style="margin-top:70px;">上次登录时间：</h4>
      <h4 class="text-center">
                <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label></h4>
    </div>
  </div>
    <style>
        Body{background-image: url(../../Resources/index.jpg);background-size:100%; } 
    </style>
    <script type="text/javascript">
        $(".navbar-nav li").eq(0).addClass("active")
</script>
</asp:Content>
