<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="UserControlLogin.ascx.cs" Inherits="CustomerGuarantee.UserControlLogin" %>
<div class="dangnhapkhachhang_box">
     <input id="customerlogin" runat="server" style="display: none;" />
       <input id="customeruser" runat="server" style="display:none;" />
    <input id="CustomerUserId" runat="server" style="display:none;" />
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
                                                <input type="text" name="CustomerUser" id="CustomerUser" value="" class="form-control" placeholder="Tên dăng nhập *" required="1" autofocus="1" autocomplete="off">
                                            </div>
                                            <div class="form-field">
                                                <input type="password" name="CustomerPassword" id="CustomerPassword" value="" class="form-control" placeholder="Mật khẩu *" required="1" autocomplete="off">
                                            </div>
                                            <div class="form-button" style="width: 100%">
                                                <button style="width: 100%; margin-bottom: 13px; margin-top: 5px;" onclick="Dangnhap()" name="login" type="submit" class="effect fa-sign-in">Đăng nhập</button>
                                            </div>
                                            <div style="width: 100%" class="g_id_signin" data-type="standard"></div>
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
<script>
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
    function tg_info() {
        $(".ttdn_box ul").toggle();
    }
    function Capnhatthongtin() {
        $("#ModalThongTinKhachHang").modal("toggle");
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

    function Dangnhap() {
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
                    alert("Đăng nhập thành công");
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