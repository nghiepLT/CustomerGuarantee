<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="CustomerGuarantee._Default" %>

<%@ Register Src="~/UserControlLogin.ascx" TagPrefix="uc1" TagName="UserControlLogin" %>


<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div id="g_id_onload" data-client_id="1075276967005-esjhug2dih7v7cn8j2ugh9iarnvamuo0.apps.googleusercontent.com" data-context="signin" data-ux_mode="popup" data-login_uri="http://localhost:62201/" data-auto_prompt="false" data-callback="handleCredentialResponse">
    </div>


    <link href="Content/Site.css" rel="stylesheet" />
    <input id="randomCode" runat="server" style="display: none;" />
  
    <div id="breadrumb" class="outer hidden-xs">
        <div class="wrapper">
            <div class="col-md-12">
                <ul itemscope itemtype="http://schema.org/BreadcrumbList" class="navation">
                    <li itemprop="itemListElement" itemscope itemtype="http://schema.org/ListItem" class="breadrumb-home breadrumb-item">
                        <a href="https://vitinhnguyenkim.vn/" class="fa-home" itemprop="item"><span class="hide" itemprop="name">Trang chủ</span></a>
                        <meta itemprop="position" content="1" />
                    </li>
                    <li class="last">
                        <span class="item-list">Gửi bảo hành</span>
                    </li>
                </ul>
            </div>
        </div>
    </div>
    <div class="wrapper">
        <div class="col-md-12">
            <div class="tabThongTin">
                <ul>
                    <li>
                        <a href="gui-bao-hanh" class="tabThongTin_active">GỬI BẢO HÀNH
                        </a>
                    </li>
                    <li>
                        <a href="kiem-tra-bao-hanh">KIỂM TRA THÔNG TIN
                        </a>
                    </li>
                   <li>
                         <a  href="lich-su-bao-hanh">
                           LỊCH SỬ BẢO HÀNH
                        </a>
                   </li>
                </ul>
                <uc1:UserControlLogin runat="server" id="UserControlLogin" />
               <%-- <div class="dangnhapkhachhang_box">
                    <a onclick="tgdn()" class="btn-dangnhap btn btn-xs btn-primary">Đăng nhập
                    </a>
                    <div class="ttdn_box">
                        <i class="fa fa-user"></i>
                        <a onclick="tg_info()"><span class="tendangnhap"></span>
                        </a>
                        <ul>
                            <li>
                                <a onclick="Capnhatthongtin()">Cập nhật thông tin
                                </a>
                            </li>
                            <li>
                                <a>Lịch sử bảo hành
                                </a>
                            </li>
                            <li>
                                <a>Đăng xuất
                                </a>
                            </li>
                        </ul>
                    </div>
                    <div class="clearfix">
                    </div>
                </div>--%>
            </div>
            <div id="box-middle" class="inner tab1">
                <div class="box-title">
                    <h1 class="post-title anton">Gửi bảo hành</h1>
                </div>
                <div class="shortcode box-content clear">
                    <div class="khiguiyc_box">
                        Khi gửi Sản phẩm bảo hành quý khách vui lòng ghi thông tin người nhận :
Công Ty TNHH Vi Tính Nguyên Kim. ĐC: 245B Trần Quang Khải,P Tân Định ,Q.1,TPHCM .
 SĐT: 028 22 246 246 – Lầu 1 : Phòng Bảo Hành - 873
                    </div>
                    <div class="box-qoute">
                        <%--   <div class="entry">
                            <p style="text-align: center;">Hãy để lại thông tin và yêu cầu</p>
                        </div>--%>
                        <div class="box-form-wrap voucher">
                            <%-- <div class="tabDangNhap">
                                <ul>
                                    <li>
                                        <a class="tabDangNhapActive achung" onclick="activeTab(this)">Đăng Nhập
                                        </a>
                                    </li>
                                    <li>
                                        <a class="achung" onclick="activeTab(this)">Không Đăng Nhập
                                        </a>
                                    </li>
                                </ul>
                            </div>--%>
                            <div class="formdangnhapkh">
                                <div class="row">
                                    <div class="col-sm-6 col-sm-offset-3">
                                    </div>
                                </div>
                            </div>
                            <form id="form1" runat="server">

                                <div class="form-field required">
                                    <div class="form-label">
                                        <label for="name">Tên của bạn</label>
                                    </div>
                                    <div class="form-input">
                                        <input id="CustomerCaseID" type="hidden" />
                                        <input runat="server" type="text" name="CustomerName" value="" id="CustomerName" class="form-control" required autofocus="1" />
                                    </div>
                                </div>

                                <div class="form-field required">
                                    <div class="form-label">
                                        <label for="phone">Địa chỉ</label>
                                    </div>
                                    <div class="form-input">
                                        <input runat="server" type="text" name="Address" value="" id="Address" class="form-control" required />
                                    </div>
                                </div>

                                <div class="form-field">
                                    <div class="form-label">
                                        <label for="email">SĐT & người liên hệ</label>
                                    </div>
                                    <div class="form-input">
                                        <input runat="server" type="text" name="PhoneCustomer" value="" id="PhoneCustomer" class="form-control" />
                                    </div>
                                </div>
                                <div class="form-field">
                                    <div class="form-label">
                                        <label for="email">Email</label>
                                    </div>
                                    <div class="form-input">
                                        <input runat="server" type="email" name="Email" value="" id="Email" class="form-control" />
                                    </div>
                                </div>
                                <div class="form-field">
                                    <div class="form-label">
                                        <label for="company">Sản phẩm gửi BH</label>
                                    </div>
                                    <div class="form-input">
                                        <input runat="server" type="text" name="ProductName" value="" id="ProductName" required class="form-control" />
                                    </div>
                                </div>
                                <div class="form-field">
                                    <div class="form-label">
                                        <label for="company">Hình ảnh</label>
                                    </div>
                                    <div class="form-input">
                                        <input type="file" class="btn-group btn btn-xs upload" id="uploadAvatar" accept="application/msword, application/vnd.ms-excel, application/vnd.ms-powerpoint,text/plain, application/pdf, image/*" /><br />
                                        <input type="hidden" id="Filess" />
                                        <div class="imgbox">
                                            <img id="myimg" style="width: 200px;" /><a style="display: none" onclick="closeimg()" class="fa fa-close btnclose"></a>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-field">
                                    <div class="form-label">
                                        <label for="company">Thời gian dự kiến gửi</label>
                                    </div>
                                    <div class="form-input">
                                        <input runat="server" type="text" name="NgayGui" value="" id="NgayGui" class="form-control" required />
                                    </div>
                                </div>
                                <div class="form-field">
                                    <div class="form-label">
                                        <label for="company">Tên nhà xe</label>
                                    </div>
                                    <div class="form-input">
                                        <input runat="server" type="text" name="CarName" value="" id="CarName" class="form-control" required />
                                    </div>
                                </div>
                                
                                <div class="form-field">
                                    <div class="form-label">
                                        <label for="company">Địa chỉ nhà xe</label>
                                    </div>
                                    <div class="form-input">
                                        <input runat="server" type="text" name="CarAddress" value="" id="CarAddress" class="form-control" required />
                                    </div>
                                </div>
                                <div class="form-field">
                                    <div class="form-label">
                                        SĐT nhà xe
                                    </div>
                                    <div class="form-input">
                                        <input runat="server" type="text" name="CarPhoneNumber" value="" id="CarPhoneNumber" class="form-control" />
                                    </div>
                                </div>
                                <div class="form-field">
                                    <div class="form-label">
                                        Thông tin nhận từ(chành xe hoặc khách hàng)
                                    </div>
                                    <div class="form-input">
                                        <input runat="server" type="text" name="InforFromCustomer" value="" id="InforFromCustomer" class="form-control" />
                                    </div>
                                </div>
                                <div class="form-field">
                                    <div class="form-label">
                                        Số Bill (nếu có)
                                    </div>
                                    <div class="form-input">
                                        <input runat="server" type="text" name="BillNumber" value="" id="BillNumber" class="form-control" />
                                    </div>
                                </div>
                                <div class="form-field">
                                    <div class="form-label">
                                        Ghi chú
                                    </div>
                                    <div class="form-input">
                                        <input runat="server" type="text" name="Description" value="" id="Description" class="form-control" />
                                    </div>
                                </div>
                                <div class="form-field field-security_code required">
                                    <div class="form-label">
                                        <label for="security_code">Mã bảo vệ</label>
                                    </div>
                                    <div class="form-input">
                                        <div class="row">
                                            <div class="col-sm-9">
                                                <input required runat="server" type="text" name="security_code" value="" id="security_codes" class="form-control" minlength="4" maxlength="4" rows="3" onkeypress="return INPUT.is_num(event)" />
                                            </div>
                                            <div class="col-sm-3 capcha_box">
                                                <img src="Images/capcha_background.png" />
                                                <div class="capcha_image">
                                                    <asp:Image ID="Image1" runat="server" Style="vertical-align: middle;" ImageUrl="/ImageValidator.aspx?code=0" />
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-field field-button last">
                                    <div class="form-label">
                                    </div>
                                    <div class="form-input">
                                        <div class="form-button">
                                            <div class="btn_gui">
                                                <asp:Button ID="btnGui" runat="server" Text="Gửi" CssClass="btn-submit" />
                                                <i class="fa fa-envelope-o"></i>
                                            </div>
                                        </div>

                                        <%--                                        <div class="form-button">
                                            <button type="reset" class="btn-reset fa-refresh">Nhập lại</button>
                                        </div>--%>
                                    </div>
                                </div>

                                <input type="hidden" name="do_submit" value="1" />
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

  
    <script>

        $(document).ready(function () {

            //if ($("#MainContent_customerlogin").val() == 0) {
            //    $("#exampleModal").modal("toggle");
            //    $(".ttdn_box").hide();
            //}
            //else {
            //    $(".tendangnhap").html($("#MainContent_customeruser").val());
            //    $(".btn-dangnhap").hide();
            //    $(".ttdn_box").show();
            //}

            //Filess
            $('form').submit(function () {
                var param = {
                    CustomerName: $('#MainContent_CustomerName').val(),
                    Address: $('#MainContent_Address').val(),
                    PhoneCustomer: $('#MainContent_PhoneCustomer').val(),
                    Email: $('#MainContent_Email').val(),
                    ProductName: $('#MainContent_ProductName').val(),
                    ProductImage: $('#Filess').val(),
                    CarName: $('#MainContent_CarName').val(),
                    CarAddress: $('#MainContent_CarAddress').val(),
                    CarPhoneNumber: $('#MainContent_CarPhoneNumber').val(),
                    InforFromCustomer: $('#MainContent_InforFromCustomer').val(),
                    BillNumber: $('#MainContent_BillNumber').val(),
                    Description: $('#MainContent_Description').val(),
                    CodeGenerate: $("#MainContent_randomCode").val(),
                    NgayGui: $("#MainContent_NgayGui").val(),
                }
                $.ajax({
                    url: 'Default.aspx/UpdateData',
                    type: "POST",
                    dataType: "html",
                    contentType: "application/json; charset=utf-8",
                    data: "{data:" + JSON.stringify(param) + ",capchaText:'" + $("#MainContent_security_codes").val() + "'}",
                    //data: JSON.stringify({
                    //    CustomerName: $('#CustomerName').val() 
                    //}),
                    success: function (result) {

                        if (result == '{"d":1}') {
                            alert("Gửi thành công. Vui lòng kiểm tra Email để xác nhận thông tin!");
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


        var _URL = window.URL || window.webkitURL;
        $("#uploadAvatar").on('change', function () {
            var file, img;

            if ((file = this.files[0])) {
                //img = new Image();
                sendFile(file);
                //img.onerror = function () {
                //    alert("Not a valid file:" + file.type);
                //};
                //img.src = _URL.createObjectURL(file);
            }
        });

        function sendFile(file) {
            var formData = new FormData();
            formData.append('file', $('#uploadAvatar')[0].files[0]);
            $.ajax({
                url: "../UploadImages.ashx",
                type: "POST",
                data: formData,
                success: function (status) {
                    $("#Filess").val(status);
                    $("#myimg").attr("src", "/Images/" + status);
                    $(".btnclose").show();
                },
                processData: false,
                contentType: false,
                error: function () {
                    alert("Whoops something went wrong!");
                }
            });
        }

        function closeimg() {
            $("#myimg").attr("src", "");
            $(".btnclose").hide();
            $("#Filess").val('');
            $("#uploadAvatar").val('');
        }
    </script>
    <!--Code for the sign on-->
    <script src="https://accounts.google.com/gsi/client" async defer></script>

    <!--Needed to decode the returned JWT-->
    <script src="https://unpkg.com/jwt-decode/build/jwt-decode.js"></script>
    <script>

        function decodeJwtResponse(r) {
            var decoded = jwt_decode(r);
            return decoded;
        }
        function handleCredentialResponse(response) {
            const responsePayload = decodeJwtResponse(response.credential);
            console.log("ID: " + responsePayload.sub);
            console.log('Full Name: ' + responsePayload.name);
            console.log('Given Name: ' + responsePayload.given_name);
            console.log('Family Name: ' + responsePayload.family_name);
            console.log("Image URL: " + responsePayload.picture);
            console.log("Email: " + responsePayload.email);


            //Tạo tài khoản
            var param = {
                CustomerName: responsePayload.name,
                CustomerEmail: responsePayload.email
            }
            $.ajax({
                url: 'Default.aspx/LoginByEmail',
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

        function activeTab(dis) {
            $(".achung").removeClass("tabDangNhapActive");
            $(dis).addClass("tabDangNhapActive");
        }

       
      
        document.title = "Gửi bảo hành";
       
   
    </script>

</asp:Content>
