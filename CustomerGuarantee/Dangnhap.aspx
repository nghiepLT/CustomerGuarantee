<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Dangnhap.aspx.cs" Inherits="CustomerGuarantee.Dangnhap" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <link href="https://vitinhnguyenkim.vn/app/modules/member/assets/css/member.css" rel="stylesheet" type="text/css" />
<script src="https://vitinhnguyenkim.vn/app/modules/member/assets/js/member.js" language="javascript" type="text/javascript"></script>
<link href="https://vitinhnguyenkim.vn/app/modules/member/assets/css/login.css" rel="stylesheet" type="text/css" />
    <div id="pvt-main" class="outer">
        <div id="breadrumb" class="outer hidden-xs">
            <div class="wrapper">
                <div class="col-md-12">
                    <ul itemscope="" itemtype="http://schema.org/BreadcrumbList" class="navation">
                        <li itemprop="itemListElement" itemscope="" itemtype="http://schema.org/ListItem" class="breadrumb-home breadrumb-item">
                            <a href="https://vitinhnguyenkim.vn/" class="fa-home" itemprop="item"><span class="hide" itemprop="name">Trang chủ</span></a>
                            <meta itemprop="position" content="1">
                        </li>
                        <li itemprop="itemListElement" itemscope="" itemtype="http://schema.org/ListItem" class="breadrumb-item">
                            <a href="https://vitinhnguyenkim.vn/member" itemprop="item"><span class="item-list" itemprop="name">Thành viên</span></a>
                            <meta itemprop="position" content="2">
                        </li>
                        <li class="last">
                            <span class="item-list">Đăng nhập</span> </li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="wrapper">
         <div class="row">
             <div class="col-sm-6 col-sm-offset-3">
                    <div class="box-middle">
                <div class="box-title">
                    <h1 class="post-title anton">Đăng nhập</h1>
                </div>
                <div class="box-content">
                    <div class="login-form-wrap">
                        <div id="box-login" class="box-info">
                            <form  id="frm-login" method="post" accept-charset="utf-8">
                                <h4 class="divtitle">Đăng nhập bằng tài khoản web đã đăng ký</h4>
                                <div class="form-wrap">
                                    <div class="form-field">
                                        <input type="text" name="UserName" id="UserName" value="" class="form-control" placeholder="Tên dăng nhập *" required="1" autofocus="1" autocomplete="off">
                                    </div>
                                    <div class="form-field">
                                        <input type="password" name="Password" id="Password" value="" id="password" class="form-control" placeholder="Mật khẩu *" required="1" autocomplete="off">
                                    </div>
                                    <div class="form-button">
                                        <button name="login" type="submit" class="effect fa-sign-in">Đăng nhập</button>
                                    </div>
                                </div>
                            </form>
                        </div>
                       
                        <div class="clear"></div>
                    </div>
                </div>
            </div>
             </div>
         </div>
        </div>
    </div>
    <style>
        .box-info {
    width: 100%;
}
    </style>
    <script>
        $(document).ready(function () {
            //Filess
            $('form').submit(function () {
                var param = {
                    UserName: $('#UserName').val(),
                    Password: $('#Password').val()
                }
                $.ajax({
                    url: 'Dangnhap.aspx/Login',
                    type: "POST",
                    dataType: "html",
                    contentType: "application/json; charset=utf-8",
                    data: "{data:" + JSON.stringify(param) + "}",
                    //data: JSON.stringify({
                    //    CustomerName: $('#CustomerName').val() 
                    //}),
                    success: function (result) {
                        if (result == '{"d":1}') {
                            alert("Đăng nhập thành công");
                            location.href = "/xulybaohanh";
                        }
                        else {
                            alert("Đăng nhập thất bại");
                        }
                    },
                    error: function (result) {
                        alert("Failed");
                    }
                });
                return false;
            });
        });
    </script>
</asp:Content>
