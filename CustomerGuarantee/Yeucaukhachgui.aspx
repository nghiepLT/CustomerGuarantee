<%@ Page Title="Yêu cầu khách gửi" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Yeucaukhachgui.aspx.cs" Inherits="CustomerGuarantee.Yeucaukhachgui" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    
    <link href="Content/Site.css" rel="stylesheet" />
    <input id="userlogin" runat="server" style="display:none;" />
    <div id="breadrumb" class="outer hidden-xs">
        <div class="wrapper">
            <div class="col-md-12">
                <ul itemscope itemtype="http://schema.org/BreadcrumbList" class="navation">
                    <li itemprop="itemListElement" itemscope itemtype="http://schema.org/ListItem" class="breadrumb-home breadrumb-item">
                        <a href="https://vitinhnguyenkim.vn/" class="fa-home" itemprop="item"><span class="hide" itemprop="name">Trang chủ</span></a>
                        <meta itemprop="position" content="1" />
                    </li>
                    <li class="last">
                        <span class="item-list">Yêu cầu khách gửi</span>
                    </li>
                </ul>
            </div>
        </div>
    </div>
    <div class="wrapper">
        <div class="col-md-12">

            <div id="box-middle" class="inner">
                <div class="box-title">
                    <h1 class="post-title anton">Yêu cầu khách gửi</h1>
                </div>
                <div class="shortcode box-content clear">
                    <div class="box-qoute">
                        <%--  <div class="entry">
                            <p style="text-align: center;">Hãy để lại thông tin và yêu cầu, chúng tôi sẽ liên lạc lại để tư vấn cho quý khách.</p>
                        </div>--%>
                        <div class="box-form-wrap voucher">
                            <div>
                                <table class="table table-bordered">
                                    <thead>
                                        <tr>
                                            <td>
                                                Mã đơn
                                            </td>
                                              <td>
                                                Thời gian dự kiến gửi
                                            </td>
                                            <td style="width:15%;">Tên khách hàng	
                                            </td>
                                            <td style="width:15%;">Địa chỉ
                                            </td>
                                            <td>SĐT & người liên hệ
                                            </td>
                                            <td>Sản phẩm gửi BH
                                            </td>
                                          
                                            <td>
                                                Trạng thái
                                            </td>
                                        </tr>
                                    </thead>
                                   <tbody id="contents">
                                       
                                   </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="modal fade danhgiamodal" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true"  data-backdrop="static" >
        <div class="modal-dialog" role="document" style="width:400px;">
            <div class="modal-content">

                <div class="modal-body">
                    <div>
                        Cập nhật trạng thái
                    </div>
                    <ul>
                        <li> 
                            <input type="radio" name="radChange" id="rad1" onchange="radChange(1)" />
                            <span>Chưa nhận</span>
                        </li>
                        <li>
                            <input type="radio" name="radChange" id="rad2"  onchange="radChange(2)" />
                            <span>Đã nhận và đang xử lý</span>
                        </li>
                        <li>
                            <input type="radio" name="radChange" id="rad4" onchange="radChange(4)" />
                            <span>Đã xử lý xong</span>
                        </li>
                    </ul>
                    <div class="thongtintrakhach_box">
                         <div class="mg-10">
                            <div class="row ">
                                <div class="col-sm-12">
                                    Nhân viên trả
                                </div>
                                <div class="col-sm-12">
                                    <input id="USerGuiTra" type="text" class="form-control" placeholder="Nhân viên trả" />
                                </div>
                            </div>
                        </div>
                        <div class="mg-10">
                            <div class="row ">
                                <div class="col-sm-12">
                                    Thời gian trả khách
                                </div>
                                <div class="col-sm-12">
                                    <input id="UserNgayGui" type="datetime-local" class="form-control" placeholder="Thời gian trả" />
                                </div>
                            </div>
                        </div>
                         <div class="mg-10">
                            <div class="row ">
                                <div class="col-sm-12">
                                   Hình thức trả
                                </div>
                                <div class="col-sm-12">
                                    <select id="slHinhthuc" class="form-control" onchange="slTra()">
                                        <option value="1">Nhà xe trả
                                        </option>
                                        <option value="2">Giao nhận
                                        </option>
                                    </select>
                                </div>
                            </div>
                        </div>
                        <div class="ttnx">
                            <div class="mg-10">
                                <div class="row ">
                                    <div class="col-sm-12">
                                        Tên nhà xe
                                    </div>
                                    <div class="col-sm-12">
                                        <input id="UserTenNhaXe" type="text" class="form-control" placeholder="Tên nhà xe" />
                                    </div>
                                </div>
                            </div>
                            <div class="mg-10">
                                <div class="row ">
                                    <div class="col-sm-12">
                                        Địa chỉ nhà xe
                                    </div>
                                    <div class="col-sm-12">
                                        <input id="UserAddress" type="text" class="form-control" placeholder="Địa chỉ nhà xe" />
                                    </div>
                                </div>
                            </div>
                            <div class="mg-10">
                                <div class="row ">
                                    <div class="col-sm-12">
                                        Số điện thoại nhà xe
                                    </div>
                                    <div class="col-sm-12">
                                        <input id="USerSoDTNhaXe" type="text" class="form-control" placeholder="Số điện thoại nhà xe" />
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="mg-10">
                            <div class="row ">
                                <div class="col-sm-12">
                                   Nội dung xử lý
                                </div>
                                <div class="col-sm-12">
                                    <textarea id="GhiChuXuLy" placeholder="Nội dung xử lý" style="width: 100%" rows="3"></textarea>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button onclick="capnhattrangthai()" type="button" class="btn btn-primary">Lưu</button>
                </div>
            </div>
        </div>
    </div>
     <div class="modal fade danhgiamodal" id="exampleModal2" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true" >
        <div class="modal-dialog" role="document" >
            <div class="modal-content">

                <div class="modal-body">
                    <div class="thongtinkhachgui_title">
                        Thông tin khách gửi
                    </div>
                   <table class="table table-bordered">
                       <tr>
                           <td>
                               Tên khách hàng
                           </td>
                           <td>
                               <span  id="txtCustomerName"></span>
                           </td>
                       </tr>
                       <tr>
                           <td>
                               Địa chỉ
                           </td>
                           <td>
                               <span  id="txtAddress"></span>
                           </td>
                       </tr>
                        <tr>
                           <td>
                              SĐT & người liên hệ	
                           </td>
                           <td>
                               <span  id="txtPhoneCustomer"></span>
                           </td>
                       </tr>
                        <tr>
                           <td>
                             Email
                           </td>
                           <td>
                               <span  id="txtEmail"></span>
                           </td>
                       </tr>
                        <tr>
                           <td>
                             Sản phẩm gửi BH
                           </td>
                           <td>
                               <span  id="txtProductName"></span>
                           </td>
                       </tr>
                        <tr>
                           <td>
                            Tên nhà xe	
                           </td>
                           <td>
                               <span  id="txtCarName"></span>
                           </td>
                       </tr>
                        <tr>
                           <td>
                           Địa chỉ nhà xe	
                           </td>
                           <td>
                               <span  id="txtCarAddress"></span>
                           </td>
                       </tr>
                        <tr>
                           <td>
                          SĐT nhà xe	
                           </td>
                           <td>
                               <span  id="txtCarPhoneNumber"></span>
                           </td>
                       </tr>
                       <tr>
                           <td>Thông tin nhận từ(chành xe hoặc khách hàng)	
                           </td>
                           <td>
                               <span id="txtInforFromCustomer"></span>
                           </td>
                       </tr>
                       <tr>
                           <td>Số Bill	
                           </td>
                           <td>
                               <span id="txtBillNumber"></span>
                           </td>
                       </tr>
                        <tr>
                           <td>Ghi chú		
                           </td>
                           <td>
                               <span id="txtDescription"></span>
                           </td>
                       </tr>
                   </table>

                     <div class="thongtinkhachgui_title">
                        Thông tin trả hàng
                    </div>

                    <table class="table table-bordered">
                        <tr>
                            <td>
                               Thời gian trả
                            </td>
                            <td>
                               <span  id="txtUserNgayGui"></span>
                           </td>
                        </tr>
                         <tr>
                            <td>
                               Nhân viên thực hiện
                            </td>
                            <td>
                               <span  id="txtUSerGuiTra"></span>
                           </td>
                        </tr>
                         <tr>
                            <td>
                              Hình thức trả
                            </td>
                            <td>
                               <span  id="txtUserGuiType"></span>
                           </td>
                        </tr>
                         <tr class="trtxtUserTenNhaXe">
                            <td>
                             Tên nhà xe
                            </td>
                            <td>
                               <span  id="txtUserTenNhaXe"></span>
                           </td>
                        </tr>
                         <tr class="trUserAddress">
                            <td>
                             Địa chỉ nhà xe
                            </td>
                            <td>
                               <span  id="txtUserAddress"></span>
                           </td>
                        </tr>
                         <tr class="trUserAddress">
                            <td>
                             Số điện thoại
                            </td>
                            <td>
                               <span  id="txtUSerSoDTNhaXe"></span>
                           </td>
                        </tr>
                    </table>
                </div>
            </div>
        </div>
    </div>
    <script>
        searchphieu();
        function searchphieu() {
            $.ajax({
                url: 'Yeucaukhachgui.aspx/LoadDanhSach',
                type: "POST",
                dataType: "json",
                contentType: "application/json; charset=utf-8",
                data: "{MaPhieu:'" + $("#MainContent_CodeGenerate").val() + "'}",
                success: function (result) { 
                    var data = result.d;
                    const obj = JSON.parse(data);
                    var htmlContents = "";
                    for (i = 0; i < obj.length; i++) {
                        htmlContents += "<tr>";
                        htmlContents += "<td>";
                        htmlContents += "<strong style=\"color:red\">"+obj[i].CodeGenerate+"</strong>";
                        htmlContents += "</td>";
                        htmlContents += "<td>";
                        if (obj[i].NgayGui != null) {
                            htmlContents += obj[i].NgayGui;
                        }
                        htmlContents += "</td>";
                        htmlContents += "<td>";
                        htmlContents +="<strong>"+obj[i].CustomerName+"</strong>";
                        htmlContents += "</td>";
                        htmlContents += "<td>";
                        htmlContents += obj[i].Address;
                        htmlContents += "</td>";
                        htmlContents += "<td>";
                        htmlContents += obj[i].PhoneCustomer;
                        htmlContents += "</td>"; 
                        htmlContents += "<td>";
                        htmlContents += obj[i].ProductName;
                        if (obj[i].ProductImage != '') {
                            htmlContents += "<div><img style=\"width:100px;\" src=\"/Images/" + obj[i].ProductImage + "\" </div>"
                        }
                      
                        htmlContents += "</td>";
                       
                        if (obj[i].Status == 0)
                        {
                            htmlContents += "<td>";
                            htmlContents += "<a class=\"btn btn-xs btn-danger\" onclick=\"tgStatus("+obj[i].CustomerCaseID+")\" >Chưa nhận</a>";
                            htmlContents += "</td>";
                        }
                        if (obj[i].Status == 1) {
                            htmlContents += "<td>";
                            htmlContents += "<a class=\"btn btn-xs btn-primary\" onclick=\"tgStatus(" + obj[i].CustomerCaseID + ")\" >Đã nhận và đang xử lý</a>";
                            htmlContents += "</td>";
                        }
                      
                        if (obj[i].Status == 3) {
                            htmlContents += "<td>";
                            htmlContents += "<a style=\"pointer-events: none;\" class=\"btn btn-xs btn-success\" onclick=\"tgStatus(" + obj[i].CustomerCaseID + ")\" >Đã xử lý xong</a>";
                            htmlContents += "<div>Ngày trả: ";
                            var date = new Date(parseInt(obj[i].UserNgayGui.substr(6)));
                            htmlContents += GetFormattedDate(date)
                            htmlContents += "</div>";
                            htmlContents += "</td>";
                        }
                        htmlContents += "<td>";
                        htmlContents += "<a  class=\"btn btn-xs btn-primary\" onclick=\"xemchitiet(" + obj[i].CustomerCaseID + ")\" >Xem chi tiết</a>";
                        htmlContents += "</td>";
                        htmlContents += "</tr>";
                    }
                    $("#contents").html(htmlContents);
                },
                error: function (result) {
                    alert("Failed");
                }
            });
        }
        var CustomerCaseID = 0;
        function tgStatus(id) {
            $(".thongtintrakhach_box").hide();
            $("#exampleModal").modal("toggle");

            $.ajax({
                url: 'Yeucaukhachgui.aspx/GetData',
                type: "POST",
                dataType: "json",
                contentType: "application/json; charset=utf-8",
                data: "{CustomerCaseID:'" + id + "'}",
                success: function (result) {
                    var data = result.d;
                    const obj = JSON.parse(data);
                    CustomerCaseID = obj.CustomerCaseID;
                    if (obj.Status == 0) {
                        $("#rad1").prop("checked", true);
                    }
                    if (obj.Status == 1) {
                        $("#rad2").prop("checked", true);
                    }
                    if (obj.Status == 2) {
                        $("#rad3").prop("checked", true);
                    }
                    if (obj.Status == 3) {
                        $("#rad4").prop("checked", true);
                    }
                },
                error: function (result) {
                    alert("Failed");
                }
            });
        }

        function capnhattrangthai() {
            $("#exampleModal").modal("toggle");
            var status = 0;
            if ($("#rad1").prop("checked") == true) {
                status = 0;
            }
            if ($("#rad2").prop("checked") == true) {
                status = 1;
            }
            if ($("#rad3").prop("checked") == true) {
                status = 2;
            }
            if ($("#rad4").prop("checked") == true) {
                status = 3;
            }
            var userstatus = 0;
            if ($("#slHinhthuc").val() == 1) {
                userstatus = 1;
            }
            else {
                userstatus = 2;
            }
            //
            if (userstatus == 1) {
                if ($("#USerGuiTra").val() == '') {
                    alert("Vui lòng nhập thông tin"); 
                    return false;
                }
            }
            var param = {
                CustomerCaseID: CustomerCaseID,
                Status: status,
                GhiChuXuLy: $('#GhiChuXuLy').val(),
                UserEdit: $("#MainContent_userlogin").val(),
                UserNgayGui: $("#UserNgayGui").val(),
                UserTenNhaXe:$("#UserTenNhaXe").val(),
                UserAddress: $("#UserAddress").val(),
                USerSoDTNhaXe: $("#USerSoDTNhaXe").val(),
                USerGuiTra: $("#USerGuiTra").val(),
                UserGuiType: userstatus
            }
            $.ajax({
                url: 'Yeucaukhachgui.aspx/UpdateData',
                type: "POST",
                dataType: "html",
                contentType: "application/json; charset=utf-8",
                data: "{CustomerCaseInfor:" + JSON.stringify(param) + "}",
                success: function (result) {
                    //var data = result.d;
                    //const obj = JSON.parse(data);
                    location.reload();
                },
                error: function (result) {
                    alert("Failed");
                }
            });
        }

        function xemchitiet(id) {
            $("#exampleModal2").modal("toggle"); 
            $.ajax({
                url: 'Yeucaukhachgui.aspx/GetData',
                type: "POST",
                dataType: "json",
                contentType: "application/json; charset=utf-8",
                data: "{CustomerCaseID:'" + id + "'}",
                success: function (result) {
                    var data = result.d;
                    const obj = JSON.parse(data);
                    $("#txtCustomerName").html(obj.CustomerName);
                    $("#txtAddress").html(obj.Address);
                    $("#txtPhoneCustomer").html(obj.PhoneCustomer);
                    $("#txtEmail").html(obj.Email);
                    $("#txtProductName").html(obj.ProductName);
                    $("#txtProductImage").html(obj.ProductImage);
                    $("#txtCarName").html(obj.CarName);
                    $("#txtCarAddress").html(obj.CarAddress);
                    $("#txtCarPhoneNumber").html(obj.CarPhoneNumber);
                    $("#txtInforFromCustomer").html(obj.InforFromCustomer);
                    $("#txtBillNumber").html(obj.BillNumber);
                    $("#txtDescription").html(obj.Description);
                    //
                    $("#txtUSerGuiTra").html(obj.USerGuiTra);
                  
                    var date = new Date(parseInt(obj.UserNgayGui.substr(6)));
                    var getdate = GetFormattedDate(date);
                    $("#txtUserNgayGui").html("<strong>" + getdate+"</strong>");
                    if (obj.UserGuiType == 1) {
                        $("#txtUserGuiType").html("Nhà xe trả");
                    }
                    else {
                        $("#txtUserGuiType").html("Giao nhận");
                    }

                    $("#txtUserTenNhaXe").html(obj.UserTenNhaXe);
                    $("#txtUserAddress").html(obj.UserAddress);
                    $("#txtUSerSoDTNhaXe").html(obj.USerSoDTNhaXe);
                },
                error: function (result) {
                    alert("Failed");
                }
            });
        }
        function GetFormattedDate(date) {
            var todayTime = new Date(date);
            var month = todayTime.getMonth() + 1;
            var day = todayTime.getDate();
            var year = todayTime.getFullYear();
            var hour=todayTime.getHours();
            var minus=todayTime.getMinutes();
            var seconds=todayTime.getSeconds();
            return month + "/" + day + "/" + year +" "+ hour + ":" + minus;
        }
        function thongtintrakhach_box() {

        }
        $(document).ready(function () {
            $(".thongtintrakhach_box").hide();
        });

        function radChange(id) {
            if (id == 4) {
                $(".thongtintrakhach_box").show();
            }
            else {
                $(".thongtintrakhach_box").hide();
            }
        }

        function slTra() {
            var sltra = $("#slHinhthuc").val();
            if (sltra == 1) {
                $(".ttnx").show();
            }
            else {
                $(".ttnx").hide();
            }
        }
        document.title = "Yêu cầu khách hàng";
    </script>

</asp:Content>
