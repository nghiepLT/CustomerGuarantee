<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Lichsubaohanh.aspx.cs" Inherits="CustomerGuarantee.Lichsubaohanh" %>

<%@ Register Src="~/UserControlLogin.ascx" TagPrefix="uc1" TagName="UserControlLogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    
    <link href="Content/Site.css" rel="stylesheet" />
    <link href="~/Content/Site.css" rel="stylesheet" />
    <input id="customerlogin" runat="server" style="display:none;" />
    <div id="breadrumb" class="outer hidden-xs">
        <div class="wrapper">
            <div class="col-md-12">
                <ul itemscope itemtype="http://schema.org/BreadcrumbList" class="navation">
                    <li itemprop="itemListElement" itemscope itemtype="http://schema.org/ListItem" class="breadrumb-home breadrumb-item">
                        <a href="https://vitinhnguyenkim.vn/" class="fa-home" itemprop="item"><span class="hide" itemprop="name">Trang chủ</span></a>
                        <meta itemprop="position" content="1" />
                    </li>
                    <li class="last">
                        <span class="item-list">Lịch sử bảo hành</span>
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
                        <a class="" href="kiem-tra-bao-hanh">
                            KIỂM TRA THÔNG TIN
                        </a>
                    </li>
                     <li>
                        <a class="tabThongTin_active" href="lich-su-bao-hanh">
                              LỊCH SỬ BẢO HÀNH
                        </a>
                    </li>
                </ul>
                 <uc1:UserControlLogin runat="server" ID="UserControlLogin" />
            </div>
            <div id="box-middle" class="inner">
                <div class="box-title">
                    <h1 class="post-title anton">Lịch sử bảo hành</h1>
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
                                            <td style="width:15%;">Tên công ty	
                                            </td>
                                            <td style="width:15%;">Địa chỉ
                                            </td>
                                            <td>SĐT & người liên hệ
                                            </td>
                                            <td>Sản phẩm gửi BH
                                            </td>
                                            <td>
                                                Thời gian dự kiến gửi
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

      <div class="modal fade danhgiamodal" id="exampleModal2" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true" >
        <div class="modal-dialog" role="document" >
            <div class="modal-content">

                <div class="modal-body">
                    <div class="thongtinkhachgui_title">
                        Tình trạng đơn
                    </div>
                    <div class="tinhtrangdon_box">
                        <ul>
                            <li id="li_1">
                                <div class="lefthistory">
                                    <span id="datestep1"></span>
                                </div>
                                <div class="righthistory">
                                    <span>Dịch vụ bảo hành của quý khách đã được tạo với mã Bảo hành là:</span> <strong id="mabaohanh">BH-12345</strong>
                                </div>
                                <div class="clearfix">

                                </div>
                            </li>
                            <li id="li_2" style="display: none;">
                                <div class="lefthistory">
                                    <span id="datestep2"></span>
                                </div>
                                <div class="righthistory">
                                    <span>Trường hợp bảo hành của quý khách đã được tiếp nhận.</span>
                                </div>
                                <div class="clearfix">
                                </div>
                            </li>
                            <li id="li_3" style="display: none;">
                                <div class="lefthistory">
                                    <span id="datestep3"></span>
                                </div>
                                <div class="righthistory">
                                    <span>Trường hợp bảo hành của quý khách đang được hãng xử lí 
                                (Dự kiến 3-5 ngày làm việc)</span>
                                </div>
                                  <div class="clearfix">

                                </div>
                            </li>
                            <li id="li_4" style="display: none;">
                                <div class="lefthistory">
                                    <span id="datestep4"></span>
                                </div>
                                 <div class="righthistory">
                                    <span id="spghichuphatsinh">Trường phát sinh (Nếu có)</span>
                                </div>
                                 <div class="clearfix">

                                </div>
                            </li>
                            <li id="li_5" style="display:none;">
                                <div class="lefthistory">
                                    <span id="datestep5"></span>
                                </div>
                             <div class="righthistory">
                                    <span>Trường hợp bảo hành của quý khách đã hoàn tất</span>
                              </div>
                                 <div class="clearfix">

                                </div>
                            </li>
                        </ul>
                    </div>
                    <hr />
                    <div class="thongtinkhachgui_title" style="margin-top:30px">
                        Thông tin gửi hàng
                    </div>
                   <table class="table table-bordered" style="padding: 15px 15px;background-color: #f7f7f7;border-radius: 5px;box-shadow: 0 3px 9px rgb(0 0 0 / 22%);">
                       <tr>
                           <td>
                              <strong> Tên khách hàng</strong>
                           </td>
                           <td>
                               <span  id="txtCustomerName"></span>
                           </td>
                       </tr>
                       <tr>
                           <td>
                               <strong>Địa chỉ</strong>
                           </td>
                           <td>
                               <span  id="txtAddress"></span>
                           </td>
                       </tr>
                        <tr>
                           <td>
                             <strong>SĐT & người liên hệ</strong>
                           </td>
                           <td>
                               <span  id="txtPhoneCustomer"></span>
                           </td>
                       </tr>
                        <tr>
                           <td>
                            <strong>Email</strong>
                           </td>
                           <td>
                               <span  id="txtEmail"></span>
                           </td>
                       </tr>
                        <tr >
                           <td>
                             <strong>Sản phẩm gửi BH</strong>
                           </td>
                           <td>
                               <span  id="txtProductName"></span>
                           </td>
                       </tr >
                       <tr>
                           <td>
                               <strong>Tình trạng lỗi	</strong>
                           </td>
                           <td>
                               <strong style="color:red" id="ProductTinhTrangLoi"></strong>
                           </td>
                       </tr>
                        <tr>
                           <td>
                               <strong>Phụ kiện kèm theo</strong>
                           </td>
                           <td>
                               <span id="ProductPhukien"></span>
                           </td>
                       </tr>
                        <tr class="type1">
                           <td>
                            <strong>Tên nhà xe</strong>	
                           </td>
                           <td>
                               <span  id="txtCarName"></span>
                           </td>
                       </tr>
                        <tr class="type1">
                           <td>
                           <strong>Địa chỉ nhà xe</strong>	
                           </td>
                           <td>
                               <span  id="txtCarAddress"></span>
                           </td>
                       </tr>
                        <tr class="type1">
                           <td>
                         <strong>SĐT nhà xe</strong>	
                           </td>
                           <td>
                               <span  id="txtCarPhoneNumber"></span>
                           </td>
                       </tr>
                    <%--   <tr>
                           <td><strong>Thông tin nhận từ(chành xe hoặc khách hàng)</strong>
                           </td>
                           <td>
                               <span id="txtInforFromCustomer"></span>
                           </td>
                       </tr>--%>
                       <tr class="type1">
                           <td><strong>Số Bill</strong>	
                           </td>
                           <td>
                               <span id="txtBillNumber"></span>
                           </td>
                       </tr>
                       <tr class="type1">
                           <td><strong>Ghi chú</strong>
                           </td>
                           <td>
                               <span id="txtDescription"></span>
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
                     <hr />
                     <div class="thongtinkhachgui_title">
                        <strong>Thông tin trả hàng</strong>
                    </div>

                    <table class="table table-bordered" style="padding: 15px 15px;background-color: #f7f7f7;border-radius: 5px;box-shadow: 0 3px 9px rgb(0 0 0 / 22%);">
                        <tr>
                            <td>
                               <strong>Thời gian trả</strong>
                            </td>
                            <td>
                               <strong style="color:red"  id="txtUserNgayGui"></strong>
                           </td>
                        </tr>
                         <tr style="display:none;">
                            <td>
                               <strong>Nhân viên thực hiện</strong>
                            </td>
                            <td>
                               <span  id="txtUSerGuiTra"></span>
                           </td>
                        </tr>
                         <tr>
                            <td>
                              <strong>Hình thức trả</strong>
                            </td>
                            <td>
                               <span  id="txtUserGuiType"></span>
                           </td>
                        </tr>
                         <tr class="trtxtUserTenNhaXe">
                            <td>
                             <strong>Tên nhà xe</strong>
                            </td>
                            <td>
                               <span  id="txtUserTenNhaXe"></span>
                           </td>
                        </tr>
                         <tr class="trUserAddress">
                            <td>
                             <strong>Địa chỉ nhà xe</strong>
                            </td>
                            <td>
                               <span  id="txtUserAddress"></span>
                           </td>
                        </tr>
                         <tr class="trUserAddress">
                            <td>
                             <strong>Số điện thoại</strong>
                            </td>
                            <td>
                               <span  id="txtUSerSoDTNhaXe"></span>
                           </td>
                        </tr>
                    </table>
                      <hr />
                  <div id="danhgiasao_box">
                        <div class="thongtinkhachgui_title">
                        <strong>Đánh giá của bạn</strong>
                    </div>
                    <div class="starvote_box">
                        <ul class="ratings">
                            <li class="star" data-value="5"></li>
                            <li class="star" data-value="4"></li>
                            <li class="star" data-value="3"></li>
                            <li class="star" data-value="2"></li>
                            <li class="star" data-value="1"></li>
                        </ul>
                        <div class="noidungdanhgia_box">
                            <textarea id="txtRateDescription" rows="4" placeholder="Nội dung đánh giá"></textarea>
                        </div>
                        <div class="giudanhgia">
                            <a onclick="Guidanhgia()">Gửi đánh giá</a>
                        </div>
                    </div>
                    <div class="starvoted_box">
                        <ul>
                            <li>
                                <i id="i_tg1" class="fa fa-star"></i>
                            </li>
                            <li>
                                <i id="i_tg2" class="fa fa-star"></i>
                            </li>
                            <li>
                                <i id="i_tg3" class="fa fa-star"></i>
                            </li>
                            <li>
                                <i id="i_tg4" class="fa fa-star"></i>
                            </li>
                            <li>
                                <i id="i_tg5" class="fa fa-star"></i>
                            </li>
                        </ul>
                        <div>
                            <span id="noidungdanhgia"></span>
                        </div>
                    </div>
                  </div>
                </div>
            </div>
        </div>
    </div>
    <script>
        var datavalue = 0;
        $(function () {
            var star = '.star',
                selected = '.selected';

            $(star).on('click', function () {
                $(selected).each(function () {
                    $(this).removeClass('selected');
                });
                $(this).addClass('selected');
                datavalue = $(this).attr("data-value");
            });

        });
        function Guidanhgia() {
            var param = {
                CustomerCaseID: CustomerCaseID,
                StarRate: datavalue,
                RateDescription: $('#txtRateDescription').val(),
            }
            $.ajax({
                url: 'Yeucaukhachgui.aspx/UpdateStarVote',
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
        searchphieu();
        var starvote = 3;
        function togglevote(dis) {
            var data = $(dis).attr("data-value");
            if (data == 3) {
                $("#i_star3").addClass("staractive");
                $("#i_star4").removeClass("staractive");
                $("#i_star5").removeClass("staractive");
                starvote = 3;
            }
            if (data == 4) {
                $("#i_star3").addClass("staractive");
                $("#i_star4").addClass("staractive");
                $("#i_star5").removeClass("staractive");
                starvote = 4;
            }
           
            if (data == 5) {
                $("#i_star3").addClass("staractive");
                $("#i_star4").addClass("staractive");
                $("#i_star5").addClass("staractive");
                starvote = 5;
            }
        }
        function searchphieu() {
            $.ajax({
                url: 'Lichsubaohanh.aspx/LoadDanhSach',
                type: "POST",
                dataType: "json",
                contentType: "application/json; charset=utf-8",
                data: "{CustomerUser:'" + $("#MainContent_customerlogin").val() + "'}",
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
                        htmlContents += "<strong>" + obj[i].CustomerName + "</strong>";
                        htmlContents += "<div style=\"margin-top:5px;\">Người liên hệ : " + obj[i].NguoiLienHe + "</div>";
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
                        htmlContents += "<td>";
                        if (obj[i].NgayGui != null) {
                            htmlContents += obj[i].NgayGui;
                        } else {
                            htmlContents += "";
                        }
                        htmlContents += "</td>";
                        if (obj[i].Status == 0)
                        {
                            htmlContents += "<td>";
                            htmlContents += "<a class=\"  text-primary\"  >Chưa nhận</a>";
                            htmlContents += "</td>";
                        }
                        if (obj[i].Status == 1) {
                            htmlContents += "<td>";
                            htmlContents += "<a class=\" text-primary\" >Đã nhận</a>";
                            htmlContents += "</td>";
                        }
                        if (obj[i].Status == 2) {
                            htmlContents += "<td>";
                            htmlContents += "<a class=\" text-primary\" >Đang xử lý</a>";
                            htmlContents += "</td>";
                        }
                        if (obj[i].Status ==3) {
                            htmlContents += "<td>";
                            htmlContents += "<strong><a class=\" text-success\" >"+obj[i].GhiChuPhatSinh+"</a></strong>";
                            htmlContents += "</td>";
                        }
                        if (obj[i].Status == 4) {
                            htmlContents += "<td>";
                            htmlContents += "<strong><a class=\" text-success\" >Đã hoàn tất </a></strong>";
                            htmlContents += "<div>Ngày trả: ";
                            var date = new Date(parseInt(obj[i].UserNgayGui.substr(6)));
                            htmlContents += GetFormattedDate(date)
                            htmlContents += "</div>";
                            htmlContents += "</td>";
                        }
                        htmlContents += "<td>";
                        htmlContents += "<a class=\"btn btn-sm btn-warning\" onclick=\"xemchitiet(" + obj[i].CustomerCaseID + ")\" >Xem Chi Tiết</a>";
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
            var param = {
                CustomerCaseID: CustomerCaseID,
                Status: status,
                GhiChuXuLy: $('#GhiChuXuLy').val(),
                UserEdit: $("#MainContent_userlogin").val()
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
        function cleardata() {
            $("#txtCustomerName").html('');
            $("#txtAddress").html('');
            $("#txtPhoneCustomer").html('');
            $("#txtEmail").html('');
            $("#txtProductName").html('');
            $("#txtProductImage").html('');
            $("#txtCarName").html('');
            $("#txtCarAddress").html('');
            $("#txtCarPhoneNumber").html('');
            $("#txtInforFromCustomer").html('');
            $("#txtBillNumber").html('');
            $("#txtDescription").html('');
            //
            $("#txtUSerGuiTra").html('');
             
            $("#txtUserNgayGui").html('');
            $("#txtUserGuiType").html('');

            $("#txtUserTenNhaXe").html('');
            $("#txtUserAddress").html('');
            $("#txtUSerSoDTNhaXe").html('');
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
                    CustomerCaseID = obj.CustomerCaseID;
                    $("#txtCustomerName").html(obj.CustomerName);
                    $("#txtAddress").html(obj.Address);
                    $("#txtPhoneCustomer").html(obj.PhoneCustomer);
                    $("#txtEmail").html(obj.Email);
                    $("#txtProductName").html(obj.ProductName);
                    $("#txtProductImage").html(obj.ProductImage);
                    $("#ProductTinhTrangLoi").html(obj.ProductTinhTrangLoi);
                    $("#ProductPhukien").html(obj.ProductPhukien);
                    if (obj.Status != 4) {
                        $("#danhgiasao_box").hide();
                    }
                    if (obj.HinhThucGui == 3) {
                        $(".type1").show();
                        $(".type2").hide();
                        $("#txtCarName").html(obj.CarName);
                        $("#txtCarAddress").html(obj.CarAddress);
                        $("#txtCarPhoneNumber").html(obj.CarPhoneNumber);
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
                    else {
                        $("#txtUserGuiType").html("Giao nhận");
                    }

                    $("#txtUserTenNhaXe").html(obj.UserTenNhaXe);
                    $("#txtUserAddress").html(obj.UserAddress);
                    $("#txtUSerSoDTNhaXe").html(obj.USerSoDTNhaXe);

                    //Step 1
                    $("#li_2").hide();
                    $("#li_3").hide();
                    $("#li_4").hide();
                    $("#li_5").hide();

                    var date = new Date(parseInt(obj.Step1.substr(6)));
                    var Step1 = GetFormattedDate(date);
                    $("#datestep1").html(Step1);
                    $("#mabaohanh").html(obj.CodeGenerate)
                    if (obj.Step1 != null) {
                        $("#li_1").show();
                    }
                    //Step 2
                    if (obj.Step2 != null) {
                        var date2 = new Date(parseInt(obj.Step2.substr(6)));
                        var Step2 = GetFormattedDate(date2);
                        $("#datestep2").html(Step2);
                        if (obj.Step2 != null) {
                            $("#li_2").show();
                        }
                        else {
                            $("#li_2").hide();
                        }
                    }
                   
                    //Step 3
                    if (obj.Step3 != null) {
                        var date3 = new Date(parseInt(obj.Step3.substr(6)));
                        var Step3 = GetFormattedDate(date3);
                        $("#datestep3").html(Step3);
                        if (obj.Step3 != null) {
                            $("#li_3").show();
                        }
                    }
                   
                    //Step 4
                    if (obj.Step4 != null) {
                        var date4 = new Date(parseInt(obj.Step4.substr(6)));
                        var Step4 = GetFormattedDate(date4);
                        $("#spghichuphatsinh").html(obj.GhiChuPhatSinh)
                        $("#datestep4").html(Step4);
                        if (obj.Step4 != null) {
                            $("#li_4").show();
                        }
                    }
                    
                    //Step 5
                    if (obj.Step5 != null) {
                        var date5 = new Date(parseInt(obj.Step5.substr(6)));
                        var Step5 = GetFormattedDate(date5);
                        $("#datestep5").html(Step5);
                        if (obj.Step5 != null) {
                            $("#li_5").show();
                        }
                    }
                   

                    //
                    if (obj.StarRate != null) {
                        $(".starvote_box").hide();
                        $(".starvoted_box").show();
                        $("#noidungdanhgia").html(obj.RateDescription);

                        for (i = 1; i <= obj.StarRate; i++) {
                            $("#i_tg" + i).addClass("staractive");
                        }
                    }
                    else {
                        $(".starvote_box").show();
                        $(".starvoted_box").hide();
                    }
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
            return hour+":"+minus +" "+day + "-" + month + "-" + year;
        }
        document.title = "Lịch sử bảo hành";
    </script>
</asp:Content>
