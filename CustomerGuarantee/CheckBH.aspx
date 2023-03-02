﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CheckBH.aspx.cs" Inherits="CustomerGuarantee.CheckBH" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <link href="Content/Site.css" rel="stylesheet" />
    <link href="~/Content/Site.css" rel="stylesheet" />
    <div id="breadrumb" class="outer hidden-xs">
        <div class="wrapper">
            <div class="col-md-12">
                <ul itemscope itemtype="http://schema.org/BreadcrumbList" class="navation">
                    <li itemprop="itemListElement" itemscope itemtype="http://schema.org/ListItem" class="breadrumb-home breadrumb-item">
                        <a href="https://vitinhnguyenkim.vn/" class="fa-home" itemprop="item"><span class="hide" itemprop="name">Trang chủ</span></a>
                        <meta itemprop="position" content="1" />
                    </li>
                    <li class="last">
                        <span class="item-list">Yêu cầu báo giá</span>
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
                        <a href="gui-bao-hanh">
                            GỬI BẢO HÀNH
                        </a>
                    </li>   
                    <li>
                        <a class="tabThongTin_active" href="kiem-tra-bao-hanh">
                            KIỂM TRA THÔNG TIN
                        </a>
                    </li>
                     <li>
                         <a  href="lich-su-bao-hanh">
                              LỊCH SỬ BẢO HÀNH
                        </a>
                   </li>
                </ul>
            </div>
            <div id="box-middle" class="inner">
                <div class="box-title">
                    <h1 class="post-title anton">Kiểm tra thông tin bảo hành</h1>
                </div>
                <div class="shortcode box-content clear">
                    <div class="box-qoute">
                        <%--  <div class="entry">
                            <p style="text-align: center;">Hãy để lại thông tin và yêu cầu, chúng tôi sẽ liên lạc lại để tư vấn cho quý khách.</p>
                        </div>--%>
                        <div class="box-form-wrap voucher">

                            <form id="form1" runat="server">
                                <div class="form-field required">
                                    <div class="form-label">
                                        <label for="name">Mã phiếu bảo hành</label>
                                    </div>
                                    <div class="form-input">
                                        <input runat="server" type="text" name="CodeGenerate" value="" id="CodeGenerate" class="form-control" required autofocus="1" />
                                    </div>
                                    <div>
                                        <a onclick="searchphieu()" class="btn btn-sm btn-primary btn_searchCode"><i class="fa fa-search"></i></a>
                                    </div>
                                </div>

                                <input type="hidden" name="do_submit" value="1" />
                            </form>
                            <div class="tb_thongtinphieu" style="display:none">
                                <table class="table table-bordered">
                                    <tr>
                                        <td style="width: 170px;"><strong>Mã đơn</strong>
                                        </td>
                                        <td><strong id="txtCodeGenerate"></strong></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 170px;"><strong>Tình trạng</strong>
                                        </td>
                                        <td><strong id="Status" style="color: red"></strong></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 170px;"><strong>Tên khách hàng</strong>
                                        </td>
                                        <td><span id="CustomerName"></span></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 170px;"><strong>Địa chỉ</strong>
                                        </td>
                                        <td><span id="Address"></span></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 170px;"><strong>SĐT & người liên hệ</strong>
                                        </td>
                                        <td><span id="PhoneCustomer"></span></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 170px;"><strong>Email</strong>
                                        </td>
                                        <td><span id="Email"></span></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 170px;"><strong>Sản phẩm gửi BH</strong>

                                        </td>
                                        <td><span id="ProductName"></span>
                                            <div>
                                                <img id="myimg" style="width: 200px; box-shadow: 0 0.25rem 0.5rem rgb(0 0 0 / 50%); margin: 10px 0px;" />
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="width: 170px;"><strong>Tên nhà xe</strong>
                                        </td>
                                        <td><span id="CarName"></span></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 170px;"><strong>Địa chỉ nhà xe</strong>
                                        </td>
                                        <td><span id="CarAddress"></span></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 170px;"><strong>SĐT nhà xe</strong>
                                        </td>
                                        <td><span id="CarPhoneNumber"></span></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 170px;"><strong>Thông tin nhận từ(chành xe hoặc khách hàng)</strong>
                                        </td>
                                        <td><span id="InforFromCustomer"></span></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 170px;"><strong>Số Bill</strong>
                                        </td>
                                        <td><span id="BillNumber"></span></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 170px;"><strong>Ghi chú</strong>
                                        </td>
                                        <td><span id="Description"></span></td>
                                    </tr>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script>
        function clearData() {
            $("#Status").html('');
            $("#txtCodeGenerate").html('');
            $("#CustomerName").html('');
            $("#Address").html('');
            $("#PhoneCustomer").html('');
            $("#Email").html('');
            $("#ProductName").html('');
            $("#CarName").html('');
            $("#CarAddress").html('');
            $("#CarPhoneNumber").html('');
            $("#InforFromCustomer").html('');
            $("#BillNumber").html('');
            $("#Description").html('');
            $("#myimg").attr("src","");
        }
        function searchphieu() {
            $.ajax({
                url: 'CheckBH.aspx/CheckPhieu',
                type: "POST",
                dataType: "json",
                contentType: "application/json; charset=utf-8",
                data: "{MaPhieu:'" + $("#MainContent_CodeGenerate").val().trim() + "'}",
                success: function (result) {
                    $(".tb_thongtinphieu").show();
                    var data = result.d;
                    if (data == "null") {
                        alert("Mã không hợp lệ!");
                        clearData();
                    }
                    const obj = JSON.parse(data);
                    if (obj.Status == 0) {
                        $("#Status").html('Chưa nhận');
                    }
                    if (obj.Status == 1) {
                       
                        if (obj.ThoiGianXuLy != null) {
                            $("#Status").html('Đã nhận | ' + 'Thời gian: ' + obj.ThoiGianXuLy);
                        }
                        else {
                            $("#Status").html('Đã nhận');
                        }
                    }
                    if (obj.Status == 2) {
                        if (obj.ThoiGianXuLy != null) {
                            $("#Status").html('Đang xử lý | ' + 'Thời gian: ' + obj.ThoiGianXuLy);
                        }
                        else {
                            $("#Status").html('Đang xử lý');
                        }
                    }
                    if (obj.Status == 3) {
                        if (obj.ThoiGianXuLy != null) {
                            $("#Status").html('Đã xử lý | ' + 'Thời gian: ' + obj.ThoiGianXuLy);
                        }
                        else {
                            $("#Status").html('Đã xử lý');
                        }
                    }
                    $("#txtCodeGenerate").html(obj.CodeGenerate);
                    $("#CustomerName").html(obj.CustomerName);
                    $("#Address").html(obj.Address);
                    $("#PhoneCustomer").html(obj.PhoneCustomer);
                    $("#Email").html(obj.Email);
                    $("#ProductName").html(obj.ProductName);
                    $("#myimg").attr("src", "/Images/" + obj.ProductImage);
                    $("#CarName").html(obj.CarName);
                    $("#CarAddress").html(obj.CarAddress);
                    $("#CarPhoneNumber").html(obj.CarPhoneNumber);
                    $("#InforFromCustomer").html(obj.InforFromCustomer);
                    $("#BillNumber").html(obj.BillNumber);
                    $("#Description").html(obj.Description);
                },
                error: function (result) {
                    alert("Failed");
                }
            });
        }
        document.title = "Kiểm tra bảo hành";
    </script>
</asp:Content>
