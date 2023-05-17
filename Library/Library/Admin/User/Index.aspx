<%@ Page Title="用户管理" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="Library.Admin.Admin_User" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="container-fluid">
        <div style="width:300px;" class="center-block">
            <div class="form-inline">
                <div class="form-group">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
&nbsp;</div>
                <div class="form-group">
                    <asp:DropDownList ID="DropDownList1" runat="server"  class="form-control" >
                        <asp:ListItem Value="num">ID查询</asp:ListItem>
                        <asp:ListItem Value="name">姓名查询</asp:ListItem>
                    </asp:DropDownList>
&nbsp;</div>
                <div class="form-group">
                    <asp:button runat="server"  id="research" Cssclass="btn btn-primary" Text="搜索" OnClick="Research_Click"></asp:button>
                </div>
            </div>
        </div>
        <div class="container">
            <a class="btn btn-info pull-right" href="User_Add.aspx" style="margin:15px 10px 10px;">添加用户</a>
            
            <div class="t1">
                
                            <asp:PlaceHolder ID="PlaceHolder1" runat="server">
                            </asp:PlaceHolder>

            </div>
           
        </div>
      </div>
     <script type="text/javascript">
      
         $(".navbar-nav li").eq(2).addClass("active");
         window.onload = function () {
              
             $(".t1 table").eq(0).addClass("table table-bordered table-hover text-center")
             var ftr="<thead><tr class=\"active\"><th class=\"text-center\">用户ID</th><th class=\"text-center\">姓名</th><th class=\"text-center\">班级</th><th class=\"text-center\">最后登陆时间</th><th class=\"text-center\">状态</th><th class=\"text-center\"style=\"width:70px;\">操作</th></tr></thead>";
             $(".t1 table").eq(0).append(ftr);
         }
         //$(".t1 table td").eq(4).addClass("danger");
         //$(".t1 table td").eq(10).addClass("success")
       
</script>
    

</asp:Content>
