﻿<%@ Page Title="Yêu cầu khách gửi" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Yeucaukhachgui.aspx.cs" Inherits="CustomerGuarantee.Yeucaukhachgui" %>

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
                                            <td>Ngày đăng ký 
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

                           <td class="backstrip">
                              <strong>Mã bảo hành</strong>
                           </td>
                           <td class="backstrip">
                               <strong  id="txtCodeGenerate"></strong>
                           </td>
                       </tr>
                        <tr>

                           <td class="tdstrip">
                              <strong>Tên khách hàng</strong>
                           </td>
                          <td class="tdstrip">
                               <span  id="txtCustomerName"></span>
                           </td>
                       </tr>
                       <tr>
                             <td class="tdstrip">
                               <strong>Địa chỉ</strong>
                           </td>
                            <td class="tdstrip">
                               <span  id="txtAddress"></span>
                           </td>
                       </tr>
                        <tr>
                             <td class="tdstrip">
                             <strong>Người liên hệ</strong>
                           </td>
                            <td class="tdstrip">
                               <strong style="color:blue"  id="txtNguoiLienHe"></strong>
                           </td>
                       </tr>
                        <tr>
                            <td class="tdstrip">
                             <strong>SĐT</strong>
                           </td>
                            <td class="tdstrip">
                               <span  id="txtPhoneCustomer"></span>
                           </td>
                       </tr>
                        <tr>
                            <td class="tdstrip">
                            <strong>Email</strong>
                           </td>
                             <td class="tdstrip">
                               <span  id="txtEmail"></span>
                           </td>
                       </tr>
                       <tr>
                           <td>
                               <strong>Sản phẩm gửi BH</strong>
                           </td>
                           <td>
                               <span id="txtProductName"></span>
                           </td>
                       </tr>
                       <tr>
                           <td>
                               <strong>Số Seri</strong>
                           </td>
                           <td>
                               <span style="font-style:italic;" id="txtProductSeri"></span>
                           </td>
                       </tr>
                         <tr>
                           <td>
                               <strong>Ngày mua</strong>
                           </td>
                           <td>
                               <span id="txtProductNgayMua"></span>
                           </td>
                       </tr>
                       <tr>
                           <td>
                               <strong>Tình trạng lỗi	</strong>
                           </td>
                           <td>
                               <strong style="color: red" id="ProductTinhTrangLoi"></strong>
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
                        <tr >
                             <td class="tdstrip">
                            <strong>Hình thức gửi</strong>	
                           </td>
                            <td class="tdstrip">
                               <span style="font-weight:bold;color:red"  id="txtHinhThucGui"></span>
                           </td>
                       </tr>
                        <tr class="typegiaonhantra">
                           <td class="tdstrip"><strong>Nhân viên nhận hàng</strong>
                           </td>
                           <td class="tdstrip">
                               <span id="TenGiaoNhan"></span>
                           </td>
                       </tr>
                        <tr class="typegiaonhantra">
                           <td class="tdstrip"><strong>Số điện thoại</strong>
                           </td>
                           <td class="tdstrip">
                               <span id="SoDienThoaiGiaoNhan"></span>
                           </td>
                       </tr>
                        <tr class="typenhaxegui">
                           <td class="tdstrip">
                            <strong>Tên nhà xe</strong>	
                           </td>
                           <td class="tdstrip">
                               <span  id="txtCarName"></span>
                           </td>
                       </tr>
                        <tr class="typenhaxegui">
                           <td class="tdstrip">
                           <strong>Địa chỉ nhà xe</strong>	
                           </td>
                           <td class="tdstrip">
                               <span  id="txtCarAddress"></span>
                           </td>
                       </tr>
                       <tr class="typenhaxegui">
                           <td class="tdstrip">
                           <strong>Số điện thoại nhà Xe</strong>	
                           </td>
                           <td class="tdstrip">
                               <span  id="txtCarPhoneNumber"></span>
                           </td>
                       </tr>
                        <tr class="typenhaxegui">
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
                    <%--   <tr>
                           <td><strong>Thông tin nhận từ(chành xe hoặc khách hàng)</strong>
                           </td>
                           <td>
                               <span id="txtInforFromCustomer"></span>
                           </td>
                       </tr>--%>
                       
                       <tr class="type1">
                           <td><strong>Ghi chú</strong>
                           </td>
                           <td>
                               <span id="txtDescription"></span>
                           </td>
                       </tr>
                       <tr>
                            <td><strong>Thực nhận</strong>
                           </td>
                           <td>
                               <span id="txtThucNhan"></span>
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
                               <strong style="color:red"  id="txtUserGuiType"></strong>
                           </td>
                        </tr>
                         <tr class="trtxtUserTenNhaXe typenhaxetra">
                            <td>
                             <strong>Tên nhà xe</strong>
                            </td>
                            <td>
                               <span  id="txtUserTenNhaXe"></span>
                           </td>
                        </tr>
                         <tr class="trUserAddress typenhaxetra">
                            <td>
                             <strong>Địa chỉ nhà xe</strong>
                            </td>
                            <td>
                               <span  id="txtUserAddress"></span>
                           </td>
                        </tr>
                         <tr class="trUserAddress typenhaxetra">
                            <td>
                             <strong>Số điện thoại</strong>
                            </td>
                            <td>
                               <span  id="txtUSerSoDTNhaXe"></span>
                           </td>
                        </tr>
                        <tr class="trUserAddress">
                            <td>
                                <strong>Thông tin xử lý:</strong>
                            </td>
                            <td>
                                <span id="txtXuLy"></span>
                            </td>
                        </tr>
                    </table>
                      <hr />
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
                        //if (obj[i].NgayGui != null && obj[i].NgayGui!='') {
                        //    var splitDate = obj[i].NgayGui.split('-');
                        //    var newDate = splitDate[2] + '/' + splitDate[1] + '/' + splitDate[0];
                        //    htmlContents += newDate;
                        //}
                        var dateString = obj[i].DateCreate.substr(6);
                        var currentTime = new Date(parseInt(dateString));
                        var month = currentTime.getMonth() + 1;
                        var day = currentTime.getDate();
                        var year = currentTime.getFullYear();
                        var date = day + "/" + month + "/" + year;
                        htmlContents += date;

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
                    CustomerCaseID = obj.CustomerCaseID;
                    $("#txtCodeGenerate").html(obj.CodeGenerate);
                    $("#txtCustomerName").html(obj.CustomerName);
                    $("#txtAddress").html(obj.Address);
                    $("#txtNguoiLienHe").html(obj.NguoiLienHe);
                    $("#txtPhoneCustomer").html(obj.PhoneCustomer);
                    $("#txtEmail").html(obj.Email);
                    $("#txtProductName").html(obj.ProductName);
                    $("#txtProductImage").html(obj.ProductImage);
                    $("#txtProductSeri").html(obj.ProductSeri);
                    $("#txtProductNgayMua").html(obj.ProductNgayMua);
                    $("#ProductTinhTrangLoi").html(obj.ProductTinhTrangLoi);
                    $("#ProductPhukien").html(obj.ProductPhukien);
                    $("#txtThucNhan").html(obj.ThucNhan);
                    if (obj.Status != 4) {
                        $("#danhgiasao_box").hide();
                    }

                    //Hình thức gửi
                    if (obj.HinhThucGui == 1) {
                        $("#txtHinhThucGui").html('Gửi trực tiếp đến công ty');
                        $(".typenhaxegui").hide();
                        $(".typegiaonhantra").hide();
                    }
                    if (obj.HinhThucGui == 2) {
                        $("#txtHinhThucGui").html('Giao nhận mang về');
                        $(".typenhaxegui").hide();
                        $(".typegiaonhantra").show();
                        $("#TenGiaoNhan").html(obj.TenGiaoNhan);
                        $("#SoDienThoaiGiaoNhan").html(obj.SoDienThoaiGiaoNhan);
                    }
                    if (obj.HinhThucGui == 3) {
                        $(".typenhaxegui").show();
                        $(".typegiaonhantra").hide();
                        $("#txtHinhThucGui").html('Chành xe/ chuyển phát');
                        $("#txtCarName").html(obj.CarName);
                        $("#txtCarAddress").html(obj.CarAddress);
                        $("#txtCarPhoneNumber").html(obj.CarPhoneNumber);
                        $("#txtNgayGui").html(obj.NgayGui);
                    }
                    $("#txtBillNumber").html(obj.BillNumber);
                    $("#txtDescription").html(obj.Description);
                    //Hinh thuc trả
                    if (obj.UserGuiType == 1) {
                        $(".typenhaxetra").show();
                     
                        $("#txtCarPhoneNumber").html(obj.CarPhoneNumber);
                       
                    }
                    if (obj.UserGuiType == 2 || obj.UserGuiType == 3) {
                        $(".typenhaxetra").hide();
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
                        $("#txtUserGuiType").html("Quý khách vui lòng mang giấy giới thiệu và Căn cước công dân đến <strong style=\"color:red\">Nguyên Kim</strong> để nhận hàng");
                    }

                    $("#txtUserTenNhaXe").html(obj.UserTenNhaXe);
                    $("#txtUserAddress").html(obj.UserAddress);
                    $("#txtUSerSoDTNhaXe").html(obj.USerSoDTNhaXe);
                    $("#txtXuLy").html(obj.GhiChuXuLy);

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
