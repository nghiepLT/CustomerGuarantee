<%@ Page Title="Yêu cầu khách gửi" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Yeucaukhachgui.aspx.cs" Inherits="CustomerGuarantee.Yeucaukhachgui" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <link href="Content/Site.css" rel="stylesheet" />
    <input id="userlogin" runat="server" style="display: none;" />
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
                            <div class="colbox" style="display:none;">
                                <div class="col1">
                                    Mã đơn
                                </div>
                                <div class="col3">
                                    <input />
                                </div>
                                <div class="clearfix">
                                </div>
                            </div>
                           
                            <div>
                                <table class="table table-bordered">
                                    <thead>
                                        <tr>
                                            <td>Mã đơn
                                            </td>
                                            <td>Thời gian dự kiến gửi
                                            </td>
                                            <td style="width: 15%;">Tên khách hàng	
                                            </td>
                                            <td style="width: 15%;">Địa chỉ
                                            </td>
                                            <td>SĐT & người liên hệ
                                            </td>
                                            <td>Sản phẩm gửi BH
                                            </td>
                                            <td>Đánh giá của khách
                                            </td>
                                            <td>Trạng thái
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
    <div class="modal fade danhgiamodal" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document" style="width: 700px;">
            <div class="modal-content">

                <div class="modal-body">
                    <div class="capnhattrangthai_title">
                        Cập nhật trạng thái
                    </div>
                    <div class="container">
                        <div class="wrapper">
                            <div class="arrow-steps clearfix">
                                <div id="tab1" data-status="0" onclick="tgstep(this)" class="step current"><span>Chưa nhận</span> </div>
                                <div id="tab2" data-status="1" onclick="tgstep(this)" class="step"><span>Đã nhận</span> </div>
                                <div id="tab3" data-status="2" onclick="tgstep(this)" class="step"><span>Đang xử lý</span> </div>
                                <div id="tab4" data-status="3" onclick="tgstep(this)" class="step"><span>Phát sinh</span> </div>
                                <div id="tab5" data-status="4" onclick="tgstep(this)" class="step"><span>Đã xử lý xong</span> </div>
                            </div>
                        </div>
                        <div>
                            <textarea rows="4" class="ghichuphatsinh" id="GhiChuPhatSinh" placeholder="Ghi chú phát sinh" style="display: none;"></textarea>
                              <textarea rows="4" class="GhiChuThucNhan" id="GhiChuThucNhan" placeholder="Ghi chú phát sinh" style="display: none;"></textarea>
                        </div>
                    </div>
                    <ul style="display: none;">
                        <li>
                            <input type="radio" name="radChange" id="rad1" onchange="radChange(1)" />
                            <span>Chưa nhận</span>
                        </li>
                        <li>
                            <input type="radio" name="radChange" id="rad2" onchange="radChange(2)" />
                            <span>Đã nhận</span>
                        </li>
                        <li>
                            <input type="radio" name="radChange" id="rad3" onchange="radChange(3)" />
                            <span>Đang tiếp nhận</span>
                        </li>
                        <li>
                            <input type="radio" name="radChange" id="rad5" onchange="radChange(5)" />
                            <span>Phát sinh</span>
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
                                         <option value="3">Khách đến nhận
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
                    <button onclick="capnhattrangthai()" type="button" class="btn btn-primary btnluu">Lưu</button>
                </div>
            </div>
        </div>
    </div>
    <div class="modal fade danhgiamodal" id="exampleModal2" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">

                <div class="modal-body">
                    <div class="thongtinkhachgui_title">
                        Thông tin khách gửi
                    </div>
                    <table class="table table-bordered">
                         <tr>

                           <td>
                              <strong>Mã bảo hành</strong>
                           </td>
                           <td>
                               <strong style="color:red"  id="txtCodeGenerate"></strong>
                           </td>
                       </tr>
                        <tr>
                            <td>Tên khách hàng
                            </td>
                            <td>
                                <span id="txtCustomerName"></span>
                            </td>
                        </tr>
                        <tr>
                            <td>Địa chỉ
                            </td>
                            <td>
                                <span id="txtAddress"></span>
                            </td>
                        </tr>
                         <tr>
                           <td>
                          Người liên hệ
                           </td>
                           <td>
                               <strong style="color:blue"  id="txtNguoiLienHe"></strong>
                           </td>
                       </tr>
                        <tr>
                            <td>SĐT
                            </td>
                            <td>
                                <span id="txtPhoneCustomer"></span>
                            </td>
                        </tr>
                        <tr>
                            <td>Email
                            </td>
                            <td>
                                <span id="txtEmail"></span>
                            </td>
                        </tr>
                        <tr>
                            <td>Sản phẩm gửi BH
                            </td>
                            <td>
                                <span id="txtProductName"></span>
                            </td>
                        </tr>
                        <tr>
                            <td>Số Seri
                            </td>
                            <td>
                                <strong style="font-style: italic" id="txtProductSeri"></strong>
                            </td>
                        </tr>
                           <tr>
                            <td>Ngày mua
                            </td>
                            <td>
                                <strong style="font-style: italic" id="txtProductNgayMua"></strong>
                            </td>
                        </tr>
                        <tr class="type1">
                            <td>Tên nhà xe	
                            </td>
                            <td>
                                <span id="txtCarName"></span>
                            </td>
                        </tr>
                        <tr class="type1">
                            <td>Địa chỉ nhà xe	
                            </td>
                            <td>
                                <span id="txtCarAddress"></span>
                            </td>
                        </tr>
                         <tr class="type1">
                            <td>Tình trạng lỗi
                            </td>
                            <td>
                                <strong style="color:red" id="ProductTinhTrangLoi"></strong>
                            </td>
                        </tr>
                         <tr class="type1">
                            <td>Phụ kiện kèm theo	
                            </td>
                            <td>
                                <span id="ProductPhukien"></span>
                            </td>
                        </tr>
                        <tr class="type1">
                            <td>SĐT nhà xe	
                            </td>
                            <td>
                                <span id="txtCarPhoneNumber"></span>
                            </td>
                        </tr>
                        <tr class="type1">
                            <td>Ngày gửi
                            </td>
                            <td>
                                <span id="txtNgayGui"></span>
                            </td>
                        </tr>
                        <tr class="type1">
                            <td>Số Bill
                            </td>
                            <td>
                                <span id="txtBillNumber"></span>
                            </td>
                        </tr>
                      <%--  <tr class="type1">
                            <td>Thông tin nhận từ(chành xe hoặc khách hàng)	
                            </td>
                            <td>
                                <span id="txtInforFromCustomer"></span>
                            </td>
                        </tr>--%>
                       
                        <tr class="type1">
                            <td>Ghi chú		
                            </td>
                            <td>
                                <span id="txtDescription"></span>
                            </td>
                        </tr>
                        <tr>
                               <td>Thực nhận	
                            </td>
                            <td>
                                <span id="txtThucNhan"></span>
                            </td>
                        </tr>
                         <tr>
                               <td>Ghi chú phát sinh
                            </td>
                            <td>
                                <span id="txtGhichuphatsinh"></span>
                            </td>
                        </tr>
                         <tr class="type2">
                           <td><strong>Nhân viên nhận hàng</strong>
                           </td>
                           <td>
                               <span id="TenGiaoNhan"></span>
                           </td>
                       </tr>
                        <tr class="type2">
                           <td><strong>Số điện thoại</strong>
                           </td>
                           <td>
                               <span id="SoDienThoaiGiaoNhan"></span>
                           </td>
                       </tr>
                    </table>

                    <div class="thongtinkhachgui_title">
                        Thông tin trả hàng
                    </div>

                    <table class="table table-bordered">
                        <tr>
                            <td>Thời gian trả
                            </td>
                            <td>
                                <span id="txtUserNgayGui"></span>
                            </td>
                        </tr>
                        <tr>
                            <td>Nhân viên thực hiện
                            </td>
                            <td>
                                <span id="txtUSerGuiTra"></span>
                            </td>
                        </tr>
                        <tr>
                            <td>Hình thức trả
                            </td>
                            <td>
                                <span id="txtUserGuiType"></span>
                            </td>
                        </tr>
                        <tr class="trtxtUserTenNhaXe">
                            <td>Tên nhà xe
                            </td>
                            <td>
                                <span id="txtUserTenNhaXe"></span>
                            </td>
                        </tr>
                        <tr class="trUserAddress">
                            <td>Địa chỉ nhà xe
                            </td>
                            <td>
                                <span id="txtUserAddress"></span>
                            </td>
                        </tr>
                        <tr class="trUserAddress">
                            <td>Số điện thoại
                            </td>
                            <td>
                                <span id="txtUSerSoDTNhaXe"></span>
                            </td>
                        </tr>
                         <tr class="trUserAddress">
                            <td>Thông tin xử lý:
                            </td>
                            <td>
                                <span id="txtXuLy"></span>
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
                        htmlContents += "<strong style=\"color:red;font-size: 12px;\">" + obj[i].CodeGenerate + "</strong>";
                        htmlContents += "</td>";
                        htmlContents += "<td>";
                        if (obj[i].NgayGui != null && obj[i].NgayGui!='') {
                            var splitDate = obj[i].NgayGui.split('-');
                            var newDate = splitDate[2] + '/' + splitDate[1] + '/' + splitDate[0];
                            htmlContents += newDate;
                        }
                        htmlContents += "</td>";
                        htmlContents += "<td>";
                        htmlContents += "<strong>" + obj[i].CustomerName + "</strong>";
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

                        //Đánh giá của khách	
                        htmlContents += "<td>";
                        if (obj[i].StarRate != null) {
                            htmlContents += "<ul class=\"khstar_box\">";

                            //star 1
                            var aactive = "";
                            if (obj[i].StarRate >= 1) {
                                aactive = "staractive";
                            }
                            else {
                                aactive = "";
                            }

                            htmlContents += "<li>";
                            htmlContents += "<i id=\"i_st1\" class=\"fa fa-star " + aactive + "\" ></i>";
                            htmlContents += "</li>";
                            //star 2
                            if (obj[i].StarRate >= 2) {
                                aactive = "staractive";
                            }
                            else {
                                aactive = "";
                            }
                            htmlContents += "<li>";
                            htmlContents += "<i id=\"i_st2\" class=\"fa fa-star " + aactive + "\" ></i>";
                            htmlContents += "</li>";
                            //star 3
                            if (obj[i].StarRate >= 3) {
                                aactive = "staractive";
                            }
                            else {
                                aactive = "";
                            }
                            htmlContents += "<li>";
                            htmlContents += "<i id=\"i_st3\" class=\"fa fa-star " + aactive + "\" ></i>";
                            htmlContents += "</li>";
                            //star 4
                            if (obj[i].StarRate >= 4) {
                                aactive = "staractive";
                            }
                            else {
                                aactive = "";
                            }
                            htmlContents += "<li>";
                            htmlContents += "<i id=\"i_st4\" class=\"fa fa-star " + aactive + "\" ></i>";
                            htmlContents += "</li>";
                            //star 5
                            if (obj[i].StarRate >= 5) {
                                aactive = "staractive";
                            }
                            else {
                                aactive = "";
                            }
                            htmlContents += "<li>";
                            htmlContents += "<i id=\"i_st5\" class=\"fa fa-star " + aactive + "\" ></i>";
                            htmlContents += "</li>";

                            htmlContents += "</ul>";
                            htmlContents += "<div style=\"margin-top:5px;\">";
                            htmlContents += obj[i].RateDescription
                            htmlContents += "</div>";
                        }
                        htmlContents += "</td>";



                        if (obj[i].Status == 0) {
                            htmlContents += "<td>";
                            htmlContents += "<a class=\"btn btn-xs btn-danger\" onclick=\"tgStatus(" + obj[i].CustomerCaseID + ")\" >Chưa nhận</a>";
                            htmlContents += "</td>";
                        }
                        if (obj[i].Status == 1) {
                            htmlContents += "<td>";
                            htmlContents += "<a class=\"btn btn-xs btn-primary\" onclick=\"tgStatus(" + obj[i].CustomerCaseID + ")\" >Đã nhận</a>";
                            htmlContents += "</td>";
                        }
                        if (obj[i].Status == 2) {
                            htmlContents += "<td>";
                            htmlContents += "<a class=\"btn btn-xs btn-primary\" onclick=\"tgStatus(" + obj[i].CustomerCaseID + ")\" >Đang xử lý</a>";
                            htmlContents += "</td>";
                        }
                        if (obj[i].Status == 3) {
                            htmlContents += "<td>";
                            htmlContents += "<a class=\"btn btn-xs btn-primary\" onclick=\"tgStatus(" + obj[i].CustomerCaseID + ")\" >Đang phát sinh</a>";
                            htmlContents += "</td>";
                        }
                        if (obj[i].Status == 4) {
                            htmlContents += "<td>";
                            htmlContents += "<a style=\"pointer-events: none;\" class=\"btn btn-xs btn-success\" onclick=\"tgStatus(" + obj[i].CustomerCaseID + ")\" >Đã xử lý xong</a>";

                            if (obj[i].UserNgayGui != null) {
                                htmlContents += "<div>Ngày trả: ";
                                var date = new Date(parseInt(obj[i].UserNgayGui.substr(6)));
                                htmlContents += GetFormattedDate(date)
                                if (obj[i].UserGuiType == 1) {
                                    htmlContents += "<div><strong style=\"color:red\">Gửi chành xe</strong></div>";
                                }
                                if (obj[i].UserGuiType == 2) {
                                    htmlContents += "<div><strong style=\"color:red\">Gửi Nhân viên giao nhận</strong></div>";
                                }
                                if (obj[i].UserGuiType == 3) {
                                    htmlContents += "<div><strong style=\"color:red\">Khách đến nhận</strong></div>";
                                }
                              
                                htmlContents += "</div>";
                            }

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
        var currentStatus = 0;

        function ActiceStep1() {
            $("#tab1").addClass("disabletabstep");
            $("#tab3").addClass("disabletabstep");
            $("#tab4").addClass("disabletabstep");
            $("#tab5").addClass("disabletabstep");
            $(".step").removeClass("current");
            $("#tab1").addClass("current");
            $(".btnluu").hide();
        }
        function ActiceStep2() {
            $("#tab1").addClass("disabletabstep");
            $("#tab2").addClass("disabletabstep");
            $("#tab4").addClass("disabletabstep");
            $("#tab5").addClass("disabletabstep");
            $(".step").removeClass("current");
            $("#tab2").addClass("current");
            $("#GhiChuThucNhan").show();
            step = 2; $(".btnluu").hide();
            $("#GhiChuThucNhan").attr("disabled",'');
        }
        function ActiceStep3() {
            $("#tab1").addClass("disabletabstep");
            $("#tab2").addClass("disabletabstep");
            $("#tab3").addClass("disabletabstep");
            $(".step").removeClass("current");
            $("#tab3").addClass("current");
        }

        function ActiceStep4() {
            $("#tab1").addClass("disabletabstep");
            $("#tab2").addClass("disabletabstep");
            $("#tab3").addClass("disabletabstep");
            $(".step").removeClass("current");
            $("#tab4").addClass("current");
            $(".ghichuphatsinh").show();
            step = 3;
        }
        function tgStatus(id) {
            $(".thongtintrakhach_box").hide();
            $("#exampleModal").modal("toggle");
            $(".ghichuphatsinh").hide();
            $(".thongtintrakhach_box").hide();
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
                        ActiceStep1();
                    }
                    if (obj.Status == 1) {
                        $("#rad2").prop("checked", true);
                        ActiceStep2();
                        $("#GhiChuThucNhan").val(obj.ThucNhan)
                    }
                    if (obj.Status == 2) {
                        $("#rad3").prop("checked", true);
                        ActiceStep3();
                    }
                    if (obj.Status == 3) {
                        $("#rad4").prop("checked", true);
                        ActiceStep4();
                        $("#GhiChuPhatSinh").val(obj.GhiChuPhatSinh)
                    }
                    currentStatus = obj.Status;
                },
                error: function (result) {
                    alert("Failed");
                }
            });
        }

        function capnhattrangthai() {

            if (step == 1) {
                var param = {
                    CustomerCaseID: CustomerCaseID,
                    ThucNhan: $('#GhiChuThucNhan').val()
                }
                $.ajax({
                    url: 'Yeucaukhachgui.aspx/CapNhatGhiChuThucNhan',
                    type: "POST",
                    dataType: "html",
                    contentType: "application/json; charset=utf-8",
                    data: "{CustomerCaseInfor:" + JSON.stringify(param) + "}",
                    success: function (result) {

                        location.reload();
                    },
                    error: function (result) {
                        alert("Failed");
                    }
                });
            }

            var param = {
                CustomerCaseID: CustomerCaseID,
                Status: step,
            }
            $.ajax({
                url: 'Yeucaukhachgui.aspx/Caphattrangthai',
                type: "POST",
                dataType: "html",
                contentType: "application/json; charset=utf-8",
                data: "{CustomerCaseInfor:" + JSON.stringify(param) + "}",
                success: function (result) {

                },
                error: function (result) {
                    alert("Failed");
                }
            });
            if (step == 3) {
                var param = {
                    CustomerCaseID: CustomerCaseID,
                    GhiChuPhatSinh: $('#GhiChuPhatSinh').val()
                }
                $.ajax({
                    url: 'Yeucaukhachgui.aspx/CapNhatGhiChuPhatSinh',
                    type: "POST",
                    dataType: "html",
                    contentType: "application/json; charset=utf-8",
                    data: "{CustomerCaseInfor:" + JSON.stringify(param) + "}",
                    success: function (result) {

                        location.reload();
                    },
                    error: function (result) {
                        alert("Failed");
                    }
                });
            }
            if (step == 4) {
                var userstatus = 0;
                if ($("#slHinhthuc").val() == 1) {
                    userstatus = 1;
                }
                if ($("#slHinhthuc").val() == 2) {
                    userstatus = 2;
                }
                if ($("#slHinhthuc").val() == 3) {
                    userstatus = 3;
                }
                //
                if (userstatus == 3) {
                    if ($("#USerGuiTra").val() == '') {
                        alert("Vui lòng nhập thông tin");
                        return false;
                    }
                }
                var param = {
                    CustomerCaseID: CustomerCaseID,
                    Status: step,
                    GhiChuXuLy: $('#GhiChuXuLy').val(),
                    UserEdit: $("#MainContent_userlogin").val(),
                    UserNgayGui: $("#UserNgayGui").val(),
                    UserTenNhaXe: $("#UserTenNhaXe").val(),
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
        }
        function cleardata() {
            $("#txtCodeGenerate").html('');
            $("#txtCustomerName").html('');
            $("#txtAddress").html('');
            $("#txtNguoiLienHe").html('');
            $("#txtPhoneCustomer").html('');
            $("#txtEmail").html('');
            $("#txtProductName").html('');
            $("#txtProductImage").html('');
            $("#txtCarName").html('');
            $("#txtCarAddress").html('');
            $("#txtNgayGui").html('');
            $("#txtCarPhoneNumber").html('');
            $("#txtInforFromCustomer").html('');
            $("#txtBillNumber").html('');
            $("#txtDescription").html('');
            $("#txtthucNhan").html('');
            //
            $("#txtUSerGuiTra").html('');

            $("#txtUserNgayGui").html('');
            $("#txtUserGuiType").html('');

            $("#txtUserTenNhaXe").html('');
            $("#txtUserAddress").html('');
            $("#txtUSerSoDTNhaXe").html('');
            $("#txtProductSeri").html(''); 
            $("#txtProductNgayMua").html('');
            $("#txtXuLy").html('');
        }
        function xemchitiet(id) {
            cleardata();
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
                    $("#txtCodeGenerate").html(obj.CodeGenerate);
                    $("#txtCustomerName").html(obj.CustomerName);
                    $("#txtAddress").html(obj.Address);
                    $("#txtNguoiLienHe").html(obj.NguoiLienHe);
                    $("#txtPhoneCustomer").html(obj.PhoneCustomer);
                    $("#txtEmail").html(obj.Email);
                    $("#txtProductName").html(obj.ProductName);
                    $("#txtProductImage").html(obj.ProductImage);
                    $("#ProductTinhTrangLoi").html(obj.ProductTinhTrangLoi);
                    $("#ProductPhukien").html(obj.ProductPhukien);
                    $("#txtThucNhan").html(obj.ThucNhan);
                    $("#txtGhichuphatsinh").html(obj.GhiChuPhatSinh);
                    $("#txtProductSeri").html(obj.ProductSeri);
                    $("#txtProductNgayMua").html(obj.ProductNgayMua);
                    if (obj.HinhThucGui == 3) {
                        $(".type1").show();
                        $(".type2").hide();
                        $("#txtCarName").html(obj.CarName);
                       
                        $("#txtCarAddress").html(obj.CarAddress);
                        $("#txtCarPhoneNumber").html(obj.CarPhoneNumber);
                        $("#txtNgayGui").html(obj.NgayGui);

                        $("#txtBillNumber").html(obj.BillNumber);
                        $("#txtDescription").html(obj.Description);

                    }
                    if (obj.HinhThucGui == 2) {
                        $(".type1").hide();
                        $(".type2").show(); 
                        $("#TenGiaoNhan").html(obj.TenGiaoNhan);
                        $("#SoDienThoaiGiaoNhan").html(obj.SoDienThoaiGiaoNhan);
                    }
                    //
                    $("#txtUSerGuiTra").html(obj.USerGuiTra);
                    if (obj.UserNgayGui != null) {
                        var date = new Date(parseInt(obj.UserNgayGui.substr(6)));
                        var getdate = GetFormattedDate(date);
                        $("#txtUserNgayGui").html("<strong>" + getdate + "</strong>");
                    }
                    
                    if (obj.UserGuiType == 1) {
                        $("#txtUserGuiType").html("Gửi chành xe");
                    }
                    if (obj.UserGuiType == 2) {
                        $("#txtUserGuiType").html("Gửi Nhân viên giao nhận");
                    }
                    if (obj.UserGuiType == 3) {
                        $("#txtUserGuiType").html("Khách đến nhận");
                    }

                    $("#txtUserTenNhaXe").html(obj.UserTenNhaXe);
                    $("#txtUserAddress").html(obj.UserAddress);
                    $("#txtUSerSoDTNhaXe").html(obj.USerSoDTNhaXe);
                    $("#txtXuLy").html(obj.GhiChuXuLy);
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
            var hour = todayTime.getHours();
            var minus = todayTime.getMinutes();
            var seconds = todayTime.getSeconds();
            return month + "/" + day + "/" + year + " " + hour + ":" + minus;
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

        var step = 0;
        function tgstep(dis) {
            var status = $(dis).attr("data-status");
            step = status;
             
            if (step < 3) {
                if (step == 1) {
                    $(".step").removeClass("current");
                    $(dis).addClass("current");
                    $(".GhiChuThucNhan").show();
                    $(".ghichuphatsinh").hide();
                    $(".thongtintrakhach_box").hide();
                    $(".btnluu").show();
                }
                else {
                    if (confirm('Chuyển trạng thái cho đơn bảo hành này?')) {
                        $(".step").removeClass("current");
                        $(dis).addClass("current");
                        $(".btnluu").trigger("click");
                        window.location.reload();
                        //
                    }
                }
                
            }
            else {
                $(".step").removeClass("current");
                $(dis).addClass("current");
                if (step == 3) {
                    $(".ghichuphatsinh").show();
                    $(".thongtintrakhach_box").hide();
                    $(".GhiChuThucNhan").hide();
                }
                if (step == 4) {
                    $(".ghichuphatsinh").hide();
                    $(".thongtintrakhach_box").show();
                    $(".GhiChuThucNhan").hide();
                }
            }
        }
    </script>

</asp:Content>
