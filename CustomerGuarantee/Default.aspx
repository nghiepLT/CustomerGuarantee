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
                        <a href="lich-su-bao-hanh">LỊCH SỬ BẢO HÀNH
                        </a>
                    </li>
                </ul>
                <uc1:UserControlLogin runat="server" ID="UserControlLogin" />
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
                    <!-- multistep form -->
                    <form id="msform" runat="server">
                        <!-- progressbar -->
                        <ul id="progressbar">
                            <li class="active l1">Thông tin khách</li>
                            <li class="l2">Thông tin sản phẩm</li>
                            <li class="l3">Phương thức gửi</li>
                        </ul>
                        <!-- fieldsets -->
                        <fieldset id="fiel1">
                            <div id="step1" class="stepchung">
                                 <h2 class="fs-title">I.Thông tin khách</h2>
                                <div class="form-field required">
                                    <div class="form-label">
                                        <label for="name">Tên công ty</label>
                                    </div>
                                    <div class="form-input">
                                        <input id="CustomerCaseID" type="hidden" />
                                        <input runat="server" type="text" name="CustomerName" value="" id="CustomerName" class="form-control" />
                                    </div>
                                </div>
                                <div class="form-field required">
                                    <div class="form-label">
                                        <label for="phone">Tên người liên hệ</label>
                                    </div>
                                    <div class="form-input">
                                        <input runat="server" type="text" name="NguoiLienHe" value="" id="NguoiLienHe" class="form-control" required />
                                    </div>
                                </div>
                                   <div class="form-field required">
                                    <div class="form-label">
                                        <label for="email">Số điện thoại</label>
                                    </div>
                                    <div class="form-input">
                                        <input runat="server" type="text" name="PhoneCustomer" value="" id="PhoneCustomer" class="form-control" />
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

                             
                                <div class="form-field required">
                                    <div class="form-label">
                                        <label for="email">Địa chỉ Email</label>
                                    </div>
                                    <div class="form-input">
                                        <input runat="server" type="email" name="Email" value="" id="Email" class="form-control" />
                                    </div>
                                </div>
                               
                              
                                <input type="hidden" name="do_submit" value="1" />
                            </div>
                            <div id="step2" class="stepchung">
                                <h2 class="fs-title">II.Thông sản phẩm</h2>
                                  <div class="form-field required">
                                    <div class="form-label">
                                        <label for="company">Tên sản phẩm</label>
                                    </div>
                                    <div class="form-input">
                                        <input runat="server" type="text" name="ProductName" value="" id="ProductName"  class="form-control" />
                                    </div>
                                </div> 
                                <div class="form-field">
                                    <div class="form-label">
                                        <label for="email">Số seri</label>
                                    </div>
                                    <div class="form-input">
                                        <input runat="server" type="text" name="ProductSeri" value="" id="ProductSeri" class="form-control" />
                                    </div>
                                </div>
                                <div class="form-field">
                                    <div class="form-label">
                                        <label for="email">Ngày mua</label>
                                    </div>
                                    <div class="form-input">
                                        <input  type="date" name="ProductNgayMua" value="" id="ProductNgayMua" class="form-control" />
                                    </div>
                                </div>
                                 <div class="form-field">
                                    <div class="form-label">
                                        <label for="company">Hình ảnh lỗi</label>
                                    </div>
                                    <div class="form-input">
                                        <input type="file" class="btn-group btn btn-xs upload" id="uploadAvatar" accept="application/msword, application/vnd.ms-excel, application/vnd.ms-powerpoint,text/plain, application/pdf, image/*" /><br />
                                        <input type="hidden" id="Filess" />
                                        <div class="imgbox">
                                            <img src="" id="myimg" style="width: 200px;" /><a style="display: none" onclick="closeimg()" class="fa fa-close btnclose"></a>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-field required">
                                    <div class="form-label">
                                        <label for="email">Tình trạng lỗi</label>
                                    </div>
                                    <div class="form-input">
                                        <input runat="server" type="text" name="ProductTinhTrangLoi" value="" id="ProductTinhTrangLoi" class="form-control" />
                                    </div>
                                </div>
                                  <div class="form-field required">
                                    <div class="form-label">
                                        <label for="email">Phụ kiện kèm theo</label>
                                    </div>
                                    <div class="form-input">
                                        <input runat="server" type="text" name="ProductPhukien" value="" id="ProductPhukien" class="form-control" />
                                    </div>
                                </div>
                            </div>
                            <div id="step3" class="stepchung">
                                <h2 class="fs-title">III.Phương thức gửi</h2>
                                  <div class="form-field">
                                    <div class="form-label">
                                        <label for="company">Hình thức gửi</label>
                                    </div>
                                    <div class="form-input">
                                        <select id="slHinhThucGui" class="form-control" onchange="tgHinhThuc()">
                                            <option value="1">Gửi trực tiếp đến công ty</option>
                                            <option value="2">Giao nhận mang về</option>
                                            <option selected value="3">Chành xe/ chuyển phát</option>
                                        </select>
                                    </div>
                                </div> 
                             <div class="sl1">
                                  <div class="form-field required">
                                    <div class="form-label">
                                        <label for="company">Tên chành xe/ Đơn vị chuyển phát</label>
                                    </div>
                                    <div class="form-input">
                                        <input runat="server" type="text" name="CarName" value="" id="CarName" class="form-control" required />
                                    </div>
                                </div>
                                <div class="form-field required">
                                    <div class="form-label">
                                        <label for="company">Thời gian dự kiến gửi</label>
                                    </div>
                                    <div class="form-input">
                                        <input  type="date" name="NgayGui" value="" id="NgayGui" class="form-control" required />
                                    </div>
                                </div>
                                

                                <div class="form-field required">
                                    <div class="form-label">
                                        <label for="company">Địa chỉ nhà xe</label>
                                    </div>
                                    <div class="form-input">
                                        <input runat="server" type="text" name="CarAddress" value="" id="CarAddress" class="form-control" required />
                                    </div>
                                </div>
                                <div class="form-field required">
                                    <div class="form-label">
                                        <label for="company">SĐT nhà xe</label>
                                    </div>
                                    <div class="form-input">
                                        <input runat="server" type="text" name="CarPhoneNumber" value="" id="CarPhoneNumber" class="form-control" required />
                                    </div>
                                </div>
                                <div class="form-field hidden">
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
                             </div>
                                <div class="sl2">
                                    <div class="form-field">
                                        <div class="form-label">
                                            Họ tên giao nhận
                                        </div>
                                        <div class="form-input">
                                            <input runat="server" type="text" name="TenGiaoNhan" value="" id="TenGiaoNhan" class="form-control" />
                                        </div>
                                    </div>
                                    <div class="form-field">
                                        <div class="form-label">
                                            Số điện thoại
                                        </div>
                                        <div class="form-input">
                                            <input runat="server" type="text" name="SoDienThoaiGiaoNhan" value="" id="SoDienThoaiGiaoNhan" class="form-control" />
                                        </div>
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
                                      
                                        </div>

                                        <%--                                        <div class="form-button">
                                            <button type="reset" class="btn-reset fa-refresh">Nhập lại</button>
                                        </div>--%>
                                    </div>
                                </div>

                            </div>
                           <div class="nextprevbox">
                                <input onclick="prevstep()" type="button" name="previous" class="previous action-button" value="Quay lại">
                            <input onclick="nextstep()" type="button" name="next" class="next action-button" value="Bước tiếp theo" /> 
                                  <%-- <asp:Button OnClick="datbaohanh()" ID="btnGui" runat="server" Text="Gửi" CssClass="next action-button" /> --%>
                               <input OnClick="datbaohanh()" id="btnGui" runat="server" class="next action-button text-center" value="Gửi" />
                           </div>
                        </fieldset>
                    </form>
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
                             
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>


    <script>
        //Khai bao doi tuong
        var CustomerName = "";
        var NguoiLienHe = "";
        var Address = "";
        var PhoneCustomer = "";
        var Email = "";
        //Step 2
        var ProductName = "";
        var ProductSeri = "";
        var ProductNgayMua = "";
        var ProductTinhTrangLoi = "";
        var ProductPhukien = "";
        var ProductImage = "";
        //Step 3
        var HinhThucGui = 0;
        var CarName = "";
        var NgayGui = "";
        var CarAddress = "";
        var CarPhoneNumber = "";
        var BillNumber = "";
        var Description = "";
        var CodeGenerate="";
        var TenGiaoNhan = "";
        var SoDienThoaiGiaoNhan = "";

        var step = 1;
        function prevstep() {
            step -= 1;
            if (step == 0)
                step = 1;
            toglestep();
        }
        function Checkvalidate() {

        }
        function nextstep() {
             
            //Checkvalidate
            if (step == 1) {
                if ($("#MainContent_CustomerName").val() == '') {
                    alert("Vui lòng nhập họ tên");
                    $("#MainContent_CustomerName").focus();
                    return false;
                }
                if ($("#MainContent_NguoiLienHe").val() == '') {
                    alert("Vui lòng nhập tên người liên hệ");
                    $("#MainContent_NguoiLienHe").focus();
                    return false;
                }
                if ($("#MainContent_PhoneCustomer").val() == '') {
                    alert("Vui lòng nhập Số điện thoại");
                    $("#MainContent_PhoneCustomer").focus();
                    return false;
                }
                if ($("#MainContent_Address").val() == '') {
                    alert("Vui lòng nhập Địa chỉ");
                    $("#MainContent_Address").focus();
                    return false;
                }
            }
            if (step == 2) {
                if ($("#MainContent_ProductName").val() == '') {
                    alert("Vui lòng nhập tên sản phẩm");
                    $("#MainContent_ProductName").focus();
                    return false;
                }

                if ($("#MainContent_ProductTinhTrangLoi").val() == '') {
                    alert("Vui lòng nhập tình trạng lỗi");
                    $("#MainContent_ProductTinhTrangLoi").focus();
                    return false;
                }
                if ($("#MainContent_ProductPhukien").val() == '') {
                    alert("Vui lòng nhập phụ kiện kèm theo");
                    $("#MainContent_ProductPhukien").focus();
                    return false;
                }   
            }

            
            //Cập nhật giá  trị
            if (step == 1) {

                CustomerName = $("#MainContent_CustomerName").val();
                NguoiLienHe = $("#MainContent_NguoiLienHe").val();
                PhoneCustomer = $("#MainContent_PhoneCustomer").val();
                Address = $("#MainContent_Address").val();
                Email = $("#MainContent_Email").val();
            }
            if (step == 2) {
                ProductName = $("#MainContent_ProductName").val();
                ProductSeri = $("#MainContent_ProductSeri").val();
                ProductNgayMua = $("#ProductNgayMua").val();
                ProductTinhTrangLoi = $("#MainContent_ProductTinhTrangLoi").val();
                ProductPhukien = $("#MainContent_ProductPhukien").val();
                ProductImage = $("#Filess").val();
            }
           

            step += 1;
            if (step == 3)
                step = 3;
            toglestep();
        }
        function toglestep() { 
            if (step == 1) {

                $("#step1").show();
                $("#step2").hide();
                $("#step3").hide();
                $(".previous").css("opacity", 0);
                //
                $(".l2").removeClass("active");
                $(".l3").removeClass("active");

                $(".next").show();
                $("#MainContent_btnGui").hide();
              


            }
            if (step == 2) {
                $("#step2").show();
                $("#step1").hide();
                $("#step3").hide();
                $(".previous").css("opacity", 1);
                $(".l2").addClass("active");
                $(".l3").removeClass("active");

                $(".next").show();
                $("#MainContent_btnGui").hide();
            }
            if (step == 3) {
                $("#step3").show();
                $("#step1").hide();
                $("#step2").hide();
                $(".previous").css("opacity", 1);
                $(".l2").addClass("active");
                $(".l3").addClass("active");

                $(".next").hide();
                $("#MainContent_btnGui").show();
            }
        }
        $(document).ready(function () {

            $("#MainContent_btnGui").hide();
            $(".sl2").hide();
            $(".previous").css("opacity",0);
            //Filess
            
        });
        function datbaohanh() {
            HinhThucGui = $("#slHinhThucGui").val();
            //Validate
            if (HinhThucGui == 3) {
                if ($("#MainContent_CarName").val() == '') {
                    alert("Vui lòng nhập tên chành xe");
                    $("#MainContent_CarName").focus();
                    return false;
                }
                if ($("#NgayGui").val() == '') {
                    alert("Vui lòng nhập thời gian dự kiến");
                    $("#NgayGui").focus();
                    return false;
                }
                if ($("#MainContent_CarAddress").val() == '') {
                    alert("Vui lòng nhập địa chỉ chành xe");
                    $("#MainContent_CarAddress").focus();
                    return false;
                }
                if ($("#MainContent_CarPhoneNumber").val() == '') {
                    alert("Vui lòng nhập số điện thoại chành xe");
                    $("#MainContent_CarPhoneNumber").focus();
                    return false;
                }
                if ($("#MainContent_security_codes").val() == '') {
                    alert("Vui lòng nhập mã bảo vệ");
                    $("#MainContent_security_codes").focus();
                    return false;
                }
            }
          
            CarName = $("#MainContent_CarName").val();
            NgayGui = $("#NgayGui").val();
            CarAddress = $("#MainContent_CarAddress").val();
            CarPhoneNumber = $("#MainContent_CarPhoneNumber").val();
            BillNumber = $("#MainContent_BillNumber").val();
            Description = $("#MainContent_Description").val();
            CodeGenerate = $("#MainContent_randomCode").val();
            TenGiaoNhan = $("#MainContent_TenGiaoNhan").val();
            SoDienThoaiGiaoNhan = $("#MainContent_SoDienThoaiGiaoNhan").val();
            var param = {
                CustomerName: CustomerName,
                Address: Address,
                NguoiLienHe: NguoiLienHe,
                PhoneCustomer: PhoneCustomer,
                Email: Email,
                ProductName: ProductName,
                ProductSeri: ProductSeri,
                ProductNgayMua: ProductNgayMua,
                ProductTinhTrangLoi: ProductTinhTrangLoi,
                ProductPhukien: ProductPhukien,
                ProductImage: ProductImage,
                HinhThucGui: HinhThucGui,
                CarName: CarName,
                NgayGui: NgayGui,
                CarAddress: CarAddress,
                CarPhoneNumber: CarPhoneNumber,
                BillNumber: BillNumber,
                Description: Description,
                CodeGenerate: CodeGenerate,
                TenGiaoNhan:TenGiaoNhan,
                SoDienThoaiGiaoNhan: SoDienThoaiGiaoNhan
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
                        alert("Gửi thành công. Vui lòng kiểm tra Email hoặc Email Spam để xác nhận thông tin!");
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
        }

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

        $("#step2").hide();
        $("#step3").hide();

        function tgHinhThuc() {
            var vl = $("#slHinhThucGui").val();
            if (vl == 1) {
                $(".sl2").hide();
                $(".sl1").hide();
            }
            if (vl == 2) {
                $(".sl2").show();
                $(".sl1").hide();
            }
            if (vl == 3) {
                $(".sl2").hide();
                $(".sl1").show();
            }
        }
    </script>
</asp:Content>
