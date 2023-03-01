<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Yeucaukhachgui.aspx.cs" Inherits="CustomerGuarantee.Yeucaukhachgui" %>

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
                        <span class="item-list">Yêu cầu báo giá</span>
                    </li>
                </ul>
            </div>
        </div>
    </div>
    <div class="wrapper">
        <div class="col-md-12">

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
    <div class="modal fade danhgiamodal" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true" >
        <div class="modal-dialog" role="document" style="width:400px;">
            <div class="modal-content">

                <div class="modal-body">
                    <div>
                        Cập nhật trạng thái
                    </div>
                    <ul>
                        <li> 
                            <input type="radio" name="radChange" id="rad1" />
                            <span>Chưa nhận</span>
                        </li>
                        <li>
                            <input type="radio" name="radChange" id="rad2"  />
                            <span>Đã nhận</span>
                        </li>
                        <li>
                            <input type="radio" name="radChange" id="rad3" />
                            <span>Đang xử lý</span>
                        </li>
                        <li>
                            <input type="radio" name="radChange" id="rad4" />
                            <span>Đã xử lý xong</span>
                        </li>
                    </ul>
                    <div>
                        <textarea id="GhiChuXuLy" placeholder="Ghi chú" style="width: 100%" rows="3"></textarea>
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
                            htmlContents += "<a class=\"btn btn-xs btn-primary\" onclick=\"tgStatus("+obj[i].CustomerCaseID+")\" >Chưa nhận</a>";
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
                            htmlContents += "<a class=\"btn btn-xs btn-primary\" onclick=\"tgStatus(" + obj[i].CustomerCaseID + ")\" >Đã xử lý xong</a>";
                            htmlContents += "</td>";
                        }
                        htmlContents += "<td>";
                        htmlContents += "<a class=\"btn btn-xs btn-default\" onclick=\"xemchitiet("+obj[i].CustomerCaseID+")\" >Xem chi tiết</a>";
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
                },
                error: function (result) {
                    alert("Failed");
                }
            });
        }
    </script>

</asp:Content>
