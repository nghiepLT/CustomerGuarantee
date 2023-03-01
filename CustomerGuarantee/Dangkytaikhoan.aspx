<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Dangkytaikhoan.aspx.cs" Inherits="CustomerGuarantee.Dangkytaikhoan" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <link href="Content/Site.css" rel="stylesheet" />
    <link href="https://vitinhnguyenkim.vn/app/modules/member/assets/css/register.css" rel="stylesheet" type="text/css" />
    <script src="https://apis.google.com/js/api.js" language="javascript" type="text/javascript"></script>
    <link href="https://vitinhnguyenkim.vn/app/modules/member/assets/css/member.css" rel="stylesheet" type="text/css" />
    <script src="https://vitinhnguyenkim.vn/app/modules/member/assets/js/member.js" language="javascript" type="text/javascript"></script>

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
                            <span class="item-list">Đăng ký</span>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="wrapper">
            <div class="box-middle">

                <div class="box-content">

                    <form action="" name="frmRegister" id="frmRegister" method="post" accept-charset="utf-8">
                        <div class="border">
                            <div class="row">
                                <div class="col-md-6 col-md-offset-3">
                                    <div class="login-form">
                                        <h3 class="title">Thông tin tài khoản</h3>
                                        <div class="form-field">
                                            <input type="text" id="UserName" name="UserName" value=""  id="username" class="form-control" placeholder="Tên đăng nhập viết liền không dấu, tối thiểu 6 ký tự *" autofocus="1" required="1"  autocomplete="off">
                                        </div>
                                        <div class="form-field">
                                            <input type="password" id="Password" name="Password" value="" id="password" class="form-control" placeholder="Mật khẩu *" required="1" autocomplete="off">

                                            <span title="show password" toggle="#password" class="fa fa-fw fa-eye field-icon toggle-password"></span>
                                            <div class="hidden">
                                                <input type="checkbox" id="checkbox" autocomplete="off">
                                                Show Password
                                            </div>
                                        </div>
                                        <div class="form-field">
                                            <input type="password" name="re_password" value="" title="Xác nhận lại mật khẩu " id="re_password" class="form-control" placeholder="Xác nhận mật khẩu *" required="1" autocomplete="off">
                                            <span title="show re-password" toggle="#re_password" class="fa fa-fw fa-eye field-icon toggle-password"></span>
                                        </div>

                                        <div class="form-field">
                                            <input type="email" id="Email" name="Email" value="" title="Địa chỉ email vd: xxxx@gmail.com" id="email" class="form-control" placeholder="Email *" required="1" autocomplete="off">
                                        </div>
                                        <div class="form-button" style="float:right">

                                            <div class="button-wrap">
                                                <button type="submit" class="button fa-user effect" style="float:right">Tạo</button>
                                            </div>
                                        </div>
                                    </div>
                            </div>

                        </div>
                        <!--?= view('box.socialLogin'); ?-->
                </div>


                <input type="hidden" name="do_submit" value="1" autocomplete="off">
                </form>		
            </div>
        </div>
    </div>
    </div>

    <script>
        $(function () {
            MODULE.initGoogle();
        });
        $(document).ready(function () {
            $('#checkbox').on('change', function () {
                $('#password').attr('type', $('#checkbox').prop('checked') == true ? "text" : "password");
            });

            $('#username').on('keypress', function (event) {
                var regex = new RegExp("^[a-zA-Z0-9]+$");
                var key = String.fromCharCode(!event.charCode ? event.which : event.charCode);
                if (!regex.test(key)) {
                    event.preventDefault();
                    return false;
                }
            });

        });

        $(".toggle-password").click(function () {

            $(this).toggleClass("fa-eye fa-eye-slash");
            var input = $($(this).attr("toggle"));
            if (input.attr("type") == "password") {
                input.attr("type", "text");
            } else {
                input.attr("type", "password");
            }
        });


        $(document).ready(function () {
            //Filess
            $('form').submit(function () {
                var param = {
                    UserName: $('#UserName').val(),
                    Password: $('#Password').val(),
                    Email: $('#Email').val()
                }
                $.ajax({
                    url: 'Dangkytaikhoan.aspx/Register',
                    type: "POST",
                    dataType: "html",
                    contentType: "application/json; charset=utf-8",
                    data: "{data:" + JSON.stringify(param)+"}",
                    //data: JSON.stringify({
                    //    CustomerName: $('#CustomerName').val() 
                    //}),
                    success: function (result) {

                        if (result == '{"d":1}') {
                            alert("Tạo tài khoản thành công!");
                            location.reload();
                        }
                        if (result == '{"d":2}') {
                            $("#MainContent_security_codes").focus();
                            alert("Mã bảo vệ không đúng! Vui lòng nhập lại");
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
