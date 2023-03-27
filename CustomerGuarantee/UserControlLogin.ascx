<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="UserControlLogin.ascx.cs" Inherits="CustomerGuarantee.UserControlLogin" %>
<div class="dangnhapkhachhang_box">
     <input id="customerlogin" runat="server" style="display: none;" />
       <input id="customeruser" runat="server" style="display:none;" />
    <input id="CustomerUserId" runat="server" style="display:none;" />
    <input id="CustomerEmail" runat="server" style="display:none;" />
    <a onclick="tgdn()" class="btn-dangnhap btn btn-xs btn-primary">Đăng nhập
    </a>
    <div class="ttdn_box">
        <i class="fa fa-user"></i>
        <a onclick="tg_info()"><span id="tendangnhap" class="tendangnhap" runat="server"></span>
        </a>
        <ul>
            <li>
                <a onclick="Capnhatthongtin()" style="cursor:pointer">Cập nhật thông tin
                </a>
            </li>
             <li>
                <a onclick="Doimatkhau()" style="cursor:pointer">Đổi mật khẩu
                </a>
            </li>
            <li>
                <a href="/lich-su-bao-hanh">Lịch sử bảo hành
                </a>
            </li>
            <li>
                <a style="cursor:pointer;" onclick="Logout()">Đăng xuất
                </a>
            </li>
        </ul>
    </div>
    <div class="clearfix">
    </div>
</div>

    <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document" style="width: 400px;">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title logincus_title" id="exampleModalLabel">Đăng nhập hệ thống</h5>
                </div>
                <div class="modal-body">
                    <div class="box-middle">

                        <div class="box-content">
                            <div class="login-form-wrap">
                                <div id="box-login" class="box-info">
                                    <div>
                                        <div class="form-wrap">
                                            <div class="form-field">
                                                <input type="text" name="CustomerUser" id="CustomerUser" value="" class="form-control" placeholder="Email *" required="1" autofocus="1" autocomplete="off">
                                            </div>
                                            <div class="form-field">
                                                <input type="password" name="CustomerPassword" id="CustomerPassword" value="" class="form-control" placeholder="Mật khẩu *" required="1" autocomplete="off">
                                            </div>
                                            <div class="form-button" style="width: 100%">
                                                <button style="width: 100%; margin-bottom: 13px; margin-top: 5px;    background-color: #1c449c;
    color: white;" onclick="Dangnhap()" name="login" type="submit" class="effect fa-sign-in">Đăng nhập</button>
                                            </div>
                                            <div class="form-button" style="width: 100%">
                                                <button style="width: 100%; margin-bottom: 13px; margin-top: 5px;" onclick="DangKy()" name="login"  class="effect fa-user">Đăng ký tài khoản</button>
                                            </div>
                                             <div class="form-button" style="width: 100%">
                                                <button style="width: 100%; margin-bottom: 13px; margin-top: 5px;" onclick="QuenMatKhau()" name="login"  class="effect fa-user">Quên mật khẩu</button>
                                            </div>
                                           <%-- <div style="width: 100%" class="g_id_signin" data-type="standard"></div>--%>
                                        </div>
                                    </div>
                                </div>
                                <div id="box-login2" class="box-info">
                                    <div>
                                        <div class="form-wrap">
                                            <div class="form-field">
                                                <input type="text" name="dkCustomerUser" id="dkCustomerUser" value="" class="form-control" placeholder="Nhập địa chỉ Email *" required="1" autofocus="1" autocomplete="off">
                                            </div>
                                            <div class="form-field">
                                                <input type="password" name="dkCustomerPassword" id="dkCustomerPassword" value="" class="form-control" placeholder="Mật khẩu *" required="1" autocomplete="off">
                                            </div>
                                             <div class="form-field">
                                                <input type="password" name="dkCustomerPassword2" id="dkCustomerPassword2" value="" class="form-control" placeholder="Nhập lại mật khẩu *" required="1" autocomplete="off">
                                            </div>
                                            <div class="form-button" style="width: 100%">
                                                <button style="width: 100%; margin-bottom: 13px; margin-top: 5px;background-color: #1c449c;color:white" onclick="DangKyLuu()" name="login" type="submit" class="effect fa-sign-in">Đăng Ký</button>
                                            </div>
                                            <div class="form-button" style="width: 100%">
                                                <button style="width: 100%; margin-bottom: 13px; margin-top: 5px;" onclick="Quaylai()" name="login" type="submit" class="effect fa-back">Quay lại</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                 <div id="box-login3" class="box-info">
                                    <div>
                                        <div class="form-wrap">
                                            <div class="form-field">
                                                <input type="text" name="dkEmail" id="dkEmail" value="" class="form-control" placeholder="Nhập địa chỉ Email *" required="1" autofocus="1" autocomplete="off">
                                            </div>
                                             <div class="form-button" style="width: 100%">
                                                <button style="width: 100%; margin-bottom: 13px; margin-top: 5px;background-color: #1c449c;color:white" onclick="ResetMatkhau()" name="login" type="submit" class="effect fa-sign-in">Reset Password</button>
                                            </div>
                                             <div class="form-button" style="width: 100%">
                                                <button style="width: 100%; margin-bottom: 13px; margin-top: 5px;" onclick="Quaylai()" name="login" type="submit" class="effect fa-back">Quay lại</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="clear"></div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Bỏ qua</button>
                </div>
                <div class="boquathongtin">
                    Trường hợp bạn bỏ qua, hệ thống sẽ tự đông tạo tài khoản sau khi nhập thông tin.
                </div>
            </div>
        </div>
    </div>


  <div class="modal fade" id="ModalThongTinKhachHang" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document" style="width: 400px;">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title logincus_title" id="">Cập nhật thông tin</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div class="box-content">
                        <div class="login-form-wrap">
                            <div id="box-login" class="box-info">
                                <div>
                                    <div class="form-wrap">
                                        <div class="form-field">
                                            <input type="text" name="mdCustomerName" id="mdCustomerName" runat="server" value="" class="form-control" placeholder="Họ tên ">
                                        </div>
                                        <div class="form-field">
                                            <input type="text" name="mdCustomerPhone" id="mdCustomerPhone" runat="server" value="" class="form-control" placeholder="Số điện thoại ">
                                        </div>
                                        <div class="form-field">
                                            <input type="text" name="mdCustomerAddress" id="mdCustomerAddress" runat="server" value="" class="form-control" placeholder="Địa chỉ ">
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="clear"></div>
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" onclick="capnhatthongtinkh()" class="btn btn-primary">Cập nhật</button>
                     <table border="0" cellpadding="0" cellspacing="0" width="100%" id="tb_button" runat="server" visible="true">
     
    </table>
                </div>
            </div>
        </div>
    </div>
 <div class="modal fade" id="ModalDoiMatKhau" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document" style="width: 400px;">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title logincus_title" id="">Đổi mật khẩu</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div class="box-content">
                        <div class="login-form-wrap">
                            <div id="box-login4" class="box-info">
                                <div>
                                    <div class="form-wrap">
                                        <div class="form-field">
                                            <label>Mật khẩu cũ</label>
                                            <input type="password" name="CustomerPasswordOld" id="CustomerPasswordOld" runat="server" value="" class="form-control" placeholder="Mật khẩu cũ">
                                        </div>
                                        <div class="form-field">
                                            <label>Mật khẩu mới</label>
                                            <input type="password" name="CustomerPasswordnew" id="CustomerPasswordnew" runat="server" value="" class="form-control" placeholder="Mật khẩu mới">
                                        </div>
                                        <div class="form-field">
                                             <label>Nhập lại mật khẩu</label>
                                            <input type="password" name="CustomerPasswordnew2" id="CustomerPasswordnew2" runat="server" value="" class="form-control" placeholder="Nhập lại mật khẩu">
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="clear"></div>
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" onclick="doimatkhau()" class="btn btn-primary">Cập nhật</button>
                     <table border="0" cellpadding="0" cellspacing="0" width="100%" id="Table1" runat="server" visible="true">
     
    </table>
                </div>
            </div>
        </div>
    </div>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@8"></script>

<script>
   
    //Khai báo biến
    var varCustomerName = "";
    var varNguoiLienHe = "";
    var varPhoneCustomer = "";
    var varAddress = "";
    var varEmail = "";
    $(document).ready(function () {
        if ($("#MainContent_UserControlLogin_customerlogin").val() == 0) {
            $("#exampleModal").modal("toggle");
            $(".ttdn_box").hide();
        }
        else {
            $(".tendangnhap").html($("#MainContent_customeruser").val());
            $(".btn-dangnhap").hide();
            $(".ttdn_box").show();
        }
    })
    function doimatkhau() {
        if ($("#MainContent_UserControlLogin_CustomerPasswordOld").val() == '') {
            alert("Vui lòng nhập thông tin");
            $("#MainContent_UserControlLogin_CustomerPasswordOld").focus();
            return false;
        }
        if ($("#MainContent_UserControlLogin_CustomerPasswordnew").val() == '') {
            alert("Vui lòng nhập thông tin");
            $("#MainContent_UserControlLogin_CustomerPasswordnew").focus();
            return false;
        }
        if ($("#MainContent_UserControlLogin_CustomerPasswordnew2").val() == '') {
            alert("Vui lòng nhập thông tin");
            $("#MainContent_UserControlLogin_CustomerPasswordnew2").focus();
            return false;
        }
        if ($("#MainContent_UserControlLogin_CustomerPasswordnew").val() != $("#MainContent_UserControlLogin_CustomerPasswordnew2").val()) {
            alert("Mật khẩu mới không khớp");
            return false;
        }


        $.ajax({
            url: 'Default.aspx/Doimatkhau',
            type: "POST",
            dataType: "html",
            contentType: "application/json; charset=utf-8",
            data: "{oldpassword:'" + $("#MainContent_UserControlLogin_CustomerPasswordOld").val() + "',newpassword:'" + $("#MainContent_UserControlLogin_CustomerPasswordnew").val() + "',CustomerEmail:'" + $("#MainContent_UserControlLogin_CustomerEmail").val() + "'}",
            success: function (result) {
                if (result == '{"d":true}') {
                    alert("Cập nhật mật khẩu thành công")
                   window.location.reload();
                }
                else {
                    alert("Mật khẩu không đúng");
                }
            },
            error: function (result) {
                alert("Failed");
            }
        });
    }
    function ResetMatkhau() {
        if ($("#dkEmail").val() == '') {
            alert("Vui lòng nhập Email");
        }
        var param = {
            CustomerEmail: $('#dkEmail').val()
        }
        $.ajax({
            url: 'Default.aspx/ResetMatkhau',
            type: "POST",
            dataType: "html",
            contentType: "application/json; charset=utf-8",
            data: "{data:" + JSON.stringify(param) + "}",
            success: function (result) {
                alert("Chúng tôi đã không phục lại mật khẩu của bạn, vui lòng kiểm tra Email.");
                window.location.reload();
            },
            error: function (result) {
                alert("Failed");
            }
        });
    }
    function tg_info() {
        $(".ttdn_box ul").toggle();
    }
    function Capnhatthongtin() {
        $("#ModalThongTinKhachHang").modal("toggle");
    }
    function Doimatkhau() {
        //ModalDoiMatKhau
        $("#ModalDoiMatKhau").modal("toggle");
    }
    function capnhatthongtinkh() {
        var param = {
            CustomerName: $('#MainContent_UserControlLogin_mdCustomerName').val(),
            CustomerPhone: $('#MainContent_UserControlLogin_mdCustomerPhone').val(),
            CustomerAddress: $('#MainContent_UserControlLogin_mdCustomerAddress').val(),
            CustomerUserId: $('#MainContent_UserControlLogin_CustomerUserId').val(),
        }
        $.ajax({
            url: 'Default.aspx/Capnhatthongtinkhachhang',
            type: "POST",
            dataType: "html",
            contentType: "application/json; charset=utf-8",
            data: "{data:" + JSON.stringify(param) + "}",
            success: function (result) {
                if (result == '{"d":true}') {
                    window.location.reload();
                }
                else {
                    alert("Đăng nhập thất bại");
                }
            },
            error: function (result) {
                alert("Failed");
            }
        });
    }
    function setCookie(cname, cvalue, exMins) {
        var d = new Date();
        d.setTime(d.getTime() + (exMins * 60 * 1000));
        var expires = "expires=" + d.toUTCString();
        document.cookie = cname + "=" + cvalue + ";" + expires + ";path=/";
    }

   
    function Logout() {
        setCookie('CustomerLogin', '', 0) // this will delete the cookie.
        location.reload();
    }
    function tgdn() {
        $("#exampleModal").modal("toggle");
    }
    $("#box-login2").hide();
    $("#box-login3").hide();
    function Dangnhap() {
        if ($("#CustomerUser").val() == '') {
            alert("Vui lòng nhập Email");
            $("#CustomerUser").focus();
            return;
        }
        if ($("#CustomerPassword").val() == '') {
            alert("Vui lòng Mật khẩu");
            $("#CustomerPassword").focus();
            return;
        }
        var param = {
            CustomerUser: $('#CustomerUser').val(),
            CustomerPassword: $('#CustomerPassword').val()
        }
        $.ajax({
            url: 'Default.aspx/Login',
            type: "POST",
            dataType: "html",
            contentType: "application/json; charset=utf-8",
            data: "{data:" + JSON.stringify(param) + "}",
            success: function (result) {
                if (result == '{"d":true}') {
                    Swal.fire({
                        type: 'success',
                        title: 'Đăng nhập thành công',
                        showConfirmButton: false,
                        timer: 800
                    })
                    .then(name => {
                        location.reload();
                    })
                  
                }
                else {
                    alert("Đăng nhập thất bại");
                }
            },
            error: function (result) {
                alert("Failed");
            }
        });
    }
    function DangKy() {
        $("#box-login").hide();
        $("#box-login2").show();
        $("#box-login3").hide();
        $("#exampleModalLabel").html("ĐĂNG KÝ TÀI KHOẢN");
    }
    function QuenMatKhau() {
        $("#box-login").hide();
        $("#box-login2").hide();
        $("#box-login3").show();
        $("#exampleModalLabel").html("QUÊN MẬT KHẨU");
    }
    function Quaylai() {
        $("#box-login").show();
        $("#box-login2").hide();
        $("#box-login3").hide();
        $("#exampleModalLabel").html("ĐĂNG NHẬP HỆ THỐNG");
    }
    function DangKyLuu() {

        if ($("#dkCustomerUser").val() == '') {
            alert("Vui lòng nhập Email");
            $("#dkCustomerUser").focus();
            return;
        }
        if ($("#dkCustomerPassword").val() == '') {
            alert("Vui lòng nhập Mật khẩu");
            $("#dkCustomerPassword").focus();
            return;
        }

        if ($("#dkCustomerPassword2").val() == '') {
            alert("Vui lòng nhập Mật khẩu");
            $("#dkCustomerPassword2").focus();
            return;
        }

        if ($("#dkCustomerPassword").val() != $("#dkCustomerPassword2").val()) {
            alert("Mật khẩu không trùng khớp");
            return;
        }
        var param = {
            CustomerUser: $('#dkCustomerUser').val(),
            CustomerPassword: $('#dkCustomerPassword').val()
        }
        $.ajax({
            url: 'Default.aspx/Register',
            type: "POST",
            dataType: "html",
            contentType: "application/json; charset=utf-8",
            data: "{data:" + JSON.stringify(param) + "}",
            success: function (result) {
                if (result == '{"d":2}') {
                    alert("Email đã được tạo tài khoản!");
                    return;
                }
                if (result == '{"d":1}') {
                    alert("Tạo tài khoản thành công");
                    location.reload();
                }
                else {
                    alert("Đăng nhập thất bại");
                }
            },
            error: function (result) {
                alert("Failed");
            }
        });
    }
</script>