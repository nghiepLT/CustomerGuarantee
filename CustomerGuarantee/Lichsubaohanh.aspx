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
                                            <td style="width:15%;">Tên khách hàng	
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
                               <span> Dịch vụ bảo hành của quý khách đã được tạo với mã Bảo hành là: BH-12345</span>
                            </li>
                            <li id="li_2" style="display:none">
                                <span>Trường hợp bảo hành của quý khách đã được tiếp nhận.</span>
                            </li>
                            <li id="li_3" style="display:none;">
                               <span>Trường hợp bảo hành của quý khách đang được hãng xử lí 
                                (Dự kiến 3-5 ngày làm việc)</span>
                            </li>
                            <li id="li_4" style="display:none;">
                               <span>Trường phát sinh (Nếu có)</span>
                            </li>
                            <li id="li_5" style="display:none;">
                                <span>Trường hợp bảo hành của quý khách đã hoàn tất</span>
                            </li>
                        </ul>
                    </div>
                    <div class="thongtinkhachgui_title" style="margin-top:30px">
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
                         <tr style="display:none;">
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
                        htmlContents += "<td>";
                        if (obj[i].NgayGui != null) {
                            htmlContents += obj[i].NgayGui;
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
                        if (obj[i].Status == 3) {
                            htmlContents += "<td>";
                            htmlContents += "<strong><a class=\" text-success\" >Đã hoàn tất </a></strong>";
                            htmlContents += "<div>Ngày trả: ";
                            var date = new Date(parseInt(obj[i].UserNgayGui.substr(6)));
                            htmlContents += GetFormattedDate(date)
                            htmlContents += "</div>";
                            htmlContents += "</td>";
                        }
                        htmlContents += "<td>";
                        htmlContents += "<a class=\"btn btn-xs btn-primary text-default\" onclick=\"xemchitiet(" + obj[i].CustomerCaseID + ")\" >Xem chi tiết</a>";
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
                    $("#txtUserNgayGui").html("<strong>" + getdate + "</strong>");
                    if (obj.UserGuiType == 1) {
                        $("#txtUserGuiType").html("Gửi chành xe");
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
            var hour = todayTime.getHours();
            var minus = todayTime.getMinutes();
            var seconds = todayTime.getSeconds();
            return month + "/" + day + "/" + year;
        }
        document.title = "Lịch sử bảo hành";
    </script>
</asp:Content>
