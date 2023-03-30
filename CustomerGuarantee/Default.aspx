<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="CustomerGuarantee._Default" %>

<%@ Register Src="~/UserControlLogin.ascx" TagPrefix="uc1" TagName="UserControlLogin" %>


<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <script src="js/jquery.min.js"></script>
    <div id="g_id_onload" data-client_id="1075276967005-esjhug2dih7v7cn8j2ugh9iarnvamuo0.apps.googleusercontent.com" data-context="signin" data-ux_mode="popup" data-login_uri="http://localhost:62201/" data-auto_prompt="false" data-callback="handleCredentialResponse">
    </div> 
    <link href="Content/Site.css" rel="stylesheet"  />
    <input id="randomCode" runat="server" style="display: none;" />
    <input id="emailcus" runat="server" style="display: none;" />   
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
Công Ty TNHH Vi Tính Nguyên Kim. ĐC: 245B Trần Quang Khải, Phường Tân Định, Quận 1, TP. HCM - (Lầu 1 : Phòng bảo hành)
SĐT: 028 22 246 246 - line: 873
                    </div>
                    <!-- multistep form -->
                    <form id="msform" >
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
                                        <input runat="server" type="number" name="PhoneCustomer" value="" id="PhoneCustomer" class="form-control" />
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
                               <div class="form-field required">
                                   <div style="color:red">
                                       Quý khách vui lòng bảo mật thông tin tài khoản và mã đơn bảo hành của mình. 
Không cung cấp thông tin này cho người khác để tránh rủi ro cho quý khách. Xin cảm ơn!
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
                                        <input runat="server" type="text" name="ProductName" value="" id="ProductName" class="form-control" />
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
                                        <input type="date" name="ProductNgayMua" value="" id="ProductNgayMua" class="form-control" />
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
                                <div class="form-field field-button last">
                                    <div class="form-input">
                                        <div style="text-align: right; margin-bottom: 10px;">
                                            <a onclick="togglethutuc()" style="color: #0026ff; cursor: pointer;">Những điều kiện và thủ tục cần thiết của sản phẩm khi gửi bảo hành ( click để xem).
                                            </a>
                                        </div>
                                        <div class="row">
                                            <div class="col-sm-1" style="position: relative; top: -2px; left: 19px;">
                                                <input id="xndl" type="checkbox" style="transform: scale(1.2);" />
                                            </div>
                                            <div class="col-sm-11" style="">
                                                <span style="color: red">XN Dữ liệu:Tôi chắc chắn sản phẩm đã được backup dữ liệu trước khi gửi bảo hành.</span>
                                            </div>
                                        </div>
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
                                        <div class="form-input" style="position:relative;">
                                            <input  onkeyup="keyup()" runat="server" type="text" name="CarName" value="" id="CarName" class="form-control" required />
                                            <ul class="tooglediachi" style="display:none;">
                                            </ul>
                                        </div>
                                        
                                    </div>
                                    <div class="form-field required">
                                        <div class="form-label">
                                            <label for="company">Thời gian dự kiến gửi</label>
                                        </div>
                                        <div class="form-input">
                                            <input type="date" name="NgayGui" value="" id="NgayGui" class="form-control" required />
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
                                            <div class="col-sm-8">
                                                <input required runat="server" type="text" name="security_code" value="" id="security_codes" class="form-control" minlength="4" maxlength="4" rows="3" onkeypress="return INPUT.is_num(event)" />
                                            </div>
                                            <div class="col-sm-4 capcha_box">
                                                <img src="Images/capcha_background.png" />
                                                <div class="capcha_image">
                                                    <asp:Image ID="Image1" runat="server" Style="vertical-align: middle;" ImageUrl="/ImageValidator.aspx?code=0" />
                                                    <a onclick="reload()" style="cursor:pointer"> 
                                                        <img src="Images/icon/refresh_icon.gif" />
                                                    </a>
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
                                <input onclick="datbaohanh()" id="btnGui" runat="server" class="next action-button text-center" value="Gửi" />
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
        <div class="modal fade" id="modalthutuc" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document" style="width: 900px">
                <div class="modal-content">

                    <div class="modal-body">
                        <div>
                            
<html xmlns:v="urn:schemas-microsoft-com:vml"
xmlns:o="urn:schemas-microsoft-com:office:office"
xmlns:w="urn:schemas-microsoft-com:office:word"
xmlns:m="http://schemas.microsoft.com/office/2004/12/omml"
xmlns="http://www.w3.org/TR/REC-html40">

<head>
<meta http-equiv=Content-Type content="text/html; charset=windows-1252">
<meta name=ProgId content=Word.Document>
<meta name=Generator content="Microsoft Word 15">
<meta name=Originator content="Microsoft Word 15">
<link rel=File-List
href="CÁC%20&#272;I&#7872;U%20KI&#7878;N%20&#272;&#7862;C%20BI&#7878;T%20C&#7910;A%20M&#7896;T%20S&#7888;%20S&#7842;N%20PH&#7848;M%20KHI%20G&#7916;I%20B&#7842;O%20HÀNH%20(1)_files/filelist.xml">
<!--[if gte mso 9]><xml>
 <o:DocumentProperties>
  <o:Author>Nguyen Thanh Liem</o:Author>
  <o:Template>Normal</o:Template>
  <o:LastAuthor>Le Thanh Nghiep</o:LastAuthor>
  <o:Revision>2</o:Revision>
  <o:TotalTime>7</o:TotalTime>
  <o:LastPrinted>2023-02-22T03:01:00Z</o:LastPrinted>
  <o:Created>2023-03-22T10:04:00Z</o:Created>
  <o:LastSaved>2023-03-22T10:04:00Z</o:LastSaved>
  <o:Pages>1</o:Pages>
  <o:Words>176</o:Words>
  <o:Characters>1007</o:Characters>
  <o:Lines>8</o:Lines>
  <o:Paragraphs>2</o:Paragraphs>
  <o:CharactersWithSpaces>1181</o:CharactersWithSpaces>
  <o:Version>16.00</o:Version>
 </o:DocumentProperties>
 <o:OfficeDocumentSettings>
  <o:RelyOnVML/>
  <o:AllowPNG/>
 </o:OfficeDocumentSettings>
</xml><![endif]-->
<link rel=themeData
href="CÁC%20&#272;I&#7872;U%20KI&#7878;N%20&#272;&#7862;C%20BI&#7878;T%20C&#7910;A%20M&#7896;T%20S&#7888;%20S&#7842;N%20PH&#7848;M%20KHI%20G&#7916;I%20B&#7842;O%20HÀNH%20(1)_files/themedata.thmx">
<link rel=colorSchemeMapping
href="CÁC%20&#272;I&#7872;U%20KI&#7878;N%20&#272;&#7862;C%20BI&#7878;T%20C&#7910;A%20M&#7896;T%20S&#7888;%20S&#7842;N%20PH&#7848;M%20KHI%20G&#7916;I%20B&#7842;O%20HÀNH%20(1)_files/colorschememapping.xml">
<!--[if gte mso 9]><xml>
 <w:WordDocument>
  <w:SpellingState>Clean</w:SpellingState>
  <w:GrammarState>Clean</w:GrammarState>
  <w:TrackMoves>false</w:TrackMoves>
  <w:TrackFormatting/>
  <w:PunctuationKerning/>
  <w:ValidateAgainstSchemas/>
  <w:SaveIfXMLInvalid>false</w:SaveIfXMLInvalid>
  <w:IgnoreMixedContent>false</w:IgnoreMixedContent>
  <w:AlwaysShowPlaceholderText>false</w:AlwaysShowPlaceholderText>
  <w:DoNotPromoteQF/>
  <w:LidThemeOther>EN-US</w:LidThemeOther>
  <w:LidThemeAsian>X-NONE</w:LidThemeAsian>
  <w:LidThemeComplexScript>X-NONE</w:LidThemeComplexScript>
  <w:Compatibility>
   <w:BreakWrappedTables/>
   <w:SnapToGridInCell/>
   <w:WrapTextWithPunct/>
   <w:UseAsianBreakRules/>
   <w:DontGrowAutofit/>
   <w:SplitPgBreakAndParaMark/>
   <w:EnableOpenTypeKerning/>
   <w:DontFlipMirrorIndents/>
   <w:OverrideTableStyleHps/>
  </w:Compatibility>
  <m:mathPr>
   <m:mathFont m:val="Cambria Math"/>
   <m:brkBin m:val="before"/>
   <m:brkBinSub m:val="&#45;-"/>
   <m:smallFrac m:val="off"/>
   <m:dispDef/>
   <m:lMargin m:val="0"/>
   <m:rMargin m:val="0"/>
   <m:defJc m:val="centerGroup"/>
   <m:wrapIndent m:val="1440"/>
   <m:intLim m:val="subSup"/>
   <m:naryLim m:val="undOvr"/>
  </m:mathPr></w:WordDocument>
</xml><![endif]--><!--[if gte mso 9]><xml>
 <w:LatentStyles DefLockedState="false" DefUnhideWhenUsed="false"
  DefSemiHidden="false" DefQFormat="false" DefPriority="99"
  LatentStyleCount="371">
  <w:LsdException Locked="false" Priority="0" QFormat="true" Name="Normal"/>
  <w:LsdException Locked="false" Priority="9" QFormat="true" Name="heading 1"/>
  <w:LsdException Locked="false" Priority="9" SemiHidden="true"
   UnhideWhenUsed="true" QFormat="true" Name="heading 2"/>
  <w:LsdException Locked="false" Priority="9" SemiHidden="true"
   UnhideWhenUsed="true" QFormat="true" Name="heading 3"/>
  <w:LsdException Locked="false" Priority="9" SemiHidden="true"
   UnhideWhenUsed="true" QFormat="true" Name="heading 4"/>
  <w:LsdException Locked="false" Priority="9" SemiHidden="true"
   UnhideWhenUsed="true" QFormat="true" Name="heading 5"/>
  <w:LsdException Locked="false" Priority="9" SemiHidden="true"
   UnhideWhenUsed="true" QFormat="true" Name="heading 6"/>
  <w:LsdException Locked="false" Priority="9" SemiHidden="true"
   UnhideWhenUsed="true" QFormat="true" Name="heading 7"/>
  <w:LsdException Locked="false" Priority="9" SemiHidden="true"
   UnhideWhenUsed="true" QFormat="true" Name="heading 8"/>
  <w:LsdException Locked="false" Priority="9" SemiHidden="true"
   UnhideWhenUsed="true" QFormat="true" Name="heading 9"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="index 1"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="index 2"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="index 3"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="index 4"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="index 5"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="index 6"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="index 7"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="index 8"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="index 9"/>
  <w:LsdException Locked="false" Priority="39" SemiHidden="true"
   UnhideWhenUsed="true" Name="toc 1"/>
  <w:LsdException Locked="false" Priority="39" SemiHidden="true"
   UnhideWhenUsed="true" Name="toc 2"/>
  <w:LsdException Locked="false" Priority="39" SemiHidden="true"
   UnhideWhenUsed="true" Name="toc 3"/>
  <w:LsdException Locked="false" Priority="39" SemiHidden="true"
   UnhideWhenUsed="true" Name="toc 4"/>
  <w:LsdException Locked="false" Priority="39" SemiHidden="true"
   UnhideWhenUsed="true" Name="toc 5"/>
  <w:LsdException Locked="false" Priority="39" SemiHidden="true"
   UnhideWhenUsed="true" Name="toc 6"/>
  <w:LsdException Locked="false" Priority="39" SemiHidden="true"
   UnhideWhenUsed="true" Name="toc 7"/>
  <w:LsdException Locked="false" Priority="39" SemiHidden="true"
   UnhideWhenUsed="true" Name="toc 8"/>
  <w:LsdException Locked="false" Priority="39" SemiHidden="true"
   UnhideWhenUsed="true" Name="toc 9"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Normal Indent"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="footnote text"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="annotation text"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="header"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="footer"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="index heading"/>
  <w:LsdException Locked="false" Priority="35" SemiHidden="true"
   UnhideWhenUsed="true" QFormat="true" Name="caption"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="table of figures"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="envelope address"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="envelope return"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="footnote reference"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="annotation reference"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="line number"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="page number"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="endnote reference"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="endnote text"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="table of authorities"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="macro"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="toa heading"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="List"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="List Bullet"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="List Number"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="List 2"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="List 3"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="List 4"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="List 5"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="List Bullet 2"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="List Bullet 3"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="List Bullet 4"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="List Bullet 5"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="List Number 2"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="List Number 3"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="List Number 4"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="List Number 5"/>
  <w:LsdException Locked="false" Priority="10" QFormat="true" Name="Title"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Closing"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Signature"/>
  <w:LsdException Locked="false" Priority="1" SemiHidden="true"
   UnhideWhenUsed="true" Name="Default Paragraph Font"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Body Text"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Body Text Indent"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="List Continue"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="List Continue 2"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="List Continue 3"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="List Continue 4"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="List Continue 5"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Message Header"/>
  <w:LsdException Locked="false" Priority="11" QFormat="true" Name="Subtitle"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Salutation"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Date"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Body Text First Indent"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Body Text First Indent 2"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Note Heading"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Body Text 2"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Body Text 3"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Body Text Indent 2"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Body Text Indent 3"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Block Text"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Hyperlink"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="FollowedHyperlink"/>
  <w:LsdException Locked="false" Priority="22" QFormat="true" Name="Strong"/>
  <w:LsdException Locked="false" Priority="20" QFormat="true" Name="Emphasis"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Document Map"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Plain Text"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="E-mail Signature"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="HTML Top of Form"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="HTML Bottom of Form"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Normal (Web)"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="HTML Acronym"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="HTML Address"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="HTML Cite"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="HTML Code"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="HTML Definition"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="HTML Keyboard"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="HTML Preformatted"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="HTML Sample"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="HTML Typewriter"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="HTML Variable"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Normal Table"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="annotation subject"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="No List"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Outline List 1"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Outline List 2"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Outline List 3"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table Simple 1"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table Simple 2"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table Simple 3"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table Classic 1"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table Classic 2"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table Classic 3"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table Classic 4"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table Colorful 1"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table Colorful 2"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table Colorful 3"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table Columns 1"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table Columns 2"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table Columns 3"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table Columns 4"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table Columns 5"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table Grid 1"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table Grid 2"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table Grid 3"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table Grid 4"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table Grid 5"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table Grid 6"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table Grid 7"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table Grid 8"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table List 1"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table List 2"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table List 3"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table List 4"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table List 5"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table List 6"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table List 7"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table List 8"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table 3D effects 1"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table 3D effects 2"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table 3D effects 3"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table Contemporary"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table Elegant"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table Professional"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table Subtle 1"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table Subtle 2"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table Web 1"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table Web 2"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table Web 3"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Balloon Text"/>
  <w:LsdException Locked="false" Priority="39" Name="Table Grid"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table Theme"/>
  <w:LsdException Locked="false" SemiHidden="true" Name="Placeholder Text"/>
  <w:LsdException Locked="false" Priority="1" QFormat="true" Name="No Spacing"/>
  <w:LsdException Locked="false" Priority="60" Name="Light Shading"/>
  <w:LsdException Locked="false" Priority="61" Name="Light List"/>
  <w:LsdException Locked="false" Priority="62" Name="Light Grid"/>
  <w:LsdException Locked="false" Priority="63" Name="Medium Shading 1"/>
  <w:LsdException Locked="false" Priority="64" Name="Medium Shading 2"/>
  <w:LsdException Locked="false" Priority="65" Name="Medium List 1"/>
  <w:LsdException Locked="false" Priority="66" Name="Medium List 2"/>
  <w:LsdException Locked="false" Priority="67" Name="Medium Grid 1"/>
  <w:LsdException Locked="false" Priority="68" Name="Medium Grid 2"/>
  <w:LsdException Locked="false" Priority="69" Name="Medium Grid 3"/>
  <w:LsdException Locked="false" Priority="70" Name="Dark List"/>
  <w:LsdException Locked="false" Priority="71" Name="Colorful Shading"/>
  <w:LsdException Locked="false" Priority="72" Name="Colorful List"/>
  <w:LsdException Locked="false" Priority="73" Name="Colorful Grid"/>
  <w:LsdException Locked="false" Priority="60" Name="Light Shading Accent 1"/>
  <w:LsdException Locked="false" Priority="61" Name="Light List Accent 1"/>
  <w:LsdException Locked="false" Priority="62" Name="Light Grid Accent 1"/>
  <w:LsdException Locked="false" Priority="63" Name="Medium Shading 1 Accent 1"/>
  <w:LsdException Locked="false" Priority="64" Name="Medium Shading 2 Accent 1"/>
  <w:LsdException Locked="false" Priority="65" Name="Medium List 1 Accent 1"/>
  <w:LsdException Locked="false" SemiHidden="true" Name="Revision"/>
  <w:LsdException Locked="false" Priority="34" QFormat="true"
   Name="List Paragraph"/>
  <w:LsdException Locked="false" Priority="29" QFormat="true" Name="Quote"/>
  <w:LsdException Locked="false" Priority="30" QFormat="true"
   Name="Intense Quote"/>
  <w:LsdException Locked="false" Priority="66" Name="Medium List 2 Accent 1"/>
  <w:LsdException Locked="false" Priority="67" Name="Medium Grid 1 Accent 1"/>
  <w:LsdException Locked="false" Priority="68" Name="Medium Grid 2 Accent 1"/>
  <w:LsdException Locked="false" Priority="69" Name="Medium Grid 3 Accent 1"/>
  <w:LsdException Locked="false" Priority="70" Name="Dark List Accent 1"/>
  <w:LsdException Locked="false" Priority="71" Name="Colorful Shading Accent 1"/>
  <w:LsdException Locked="false" Priority="72" Name="Colorful List Accent 1"/>
  <w:LsdException Locked="false" Priority="73" Name="Colorful Grid Accent 1"/>
  <w:LsdException Locked="false" Priority="60" Name="Light Shading Accent 2"/>
  <w:LsdException Locked="false" Priority="61" Name="Light List Accent 2"/>
  <w:LsdException Locked="false" Priority="62" Name="Light Grid Accent 2"/>
  <w:LsdException Locked="false" Priority="63" Name="Medium Shading 1 Accent 2"/>
  <w:LsdException Locked="false" Priority="64" Name="Medium Shading 2 Accent 2"/>
  <w:LsdException Locked="false" Priority="65" Name="Medium List 1 Accent 2"/>
  <w:LsdException Locked="false" Priority="66" Name="Medium List 2 Accent 2"/>
  <w:LsdException Locked="false" Priority="67" Name="Medium Grid 1 Accent 2"/>
  <w:LsdException Locked="false" Priority="68" Name="Medium Grid 2 Accent 2"/>
  <w:LsdException Locked="false" Priority="69" Name="Medium Grid 3 Accent 2"/>
  <w:LsdException Locked="false" Priority="70" Name="Dark List Accent 2"/>
  <w:LsdException Locked="false" Priority="71" Name="Colorful Shading Accent 2"/>
  <w:LsdException Locked="false" Priority="72" Name="Colorful List Accent 2"/>
  <w:LsdException Locked="false" Priority="73" Name="Colorful Grid Accent 2"/>
  <w:LsdException Locked="false" Priority="60" Name="Light Shading Accent 3"/>
  <w:LsdException Locked="false" Priority="61" Name="Light List Accent 3"/>
  <w:LsdException Locked="false" Priority="62" Name="Light Grid Accent 3"/>
  <w:LsdException Locked="false" Priority="63" Name="Medium Shading 1 Accent 3"/>
  <w:LsdException Locked="false" Priority="64" Name="Medium Shading 2 Accent 3"/>
  <w:LsdException Locked="false" Priority="65" Name="Medium List 1 Accent 3"/>
  <w:LsdException Locked="false" Priority="66" Name="Medium List 2 Accent 3"/>
  <w:LsdException Locked="false" Priority="67" Name="Medium Grid 1 Accent 3"/>
  <w:LsdException Locked="false" Priority="68" Name="Medium Grid 2 Accent 3"/>
  <w:LsdException Locked="false" Priority="69" Name="Medium Grid 3 Accent 3"/>
  <w:LsdException Locked="false" Priority="70" Name="Dark List Accent 3"/>
  <w:LsdException Locked="false" Priority="71" Name="Colorful Shading Accent 3"/>
  <w:LsdException Locked="false" Priority="72" Name="Colorful List Accent 3"/>
  <w:LsdException Locked="false" Priority="73" Name="Colorful Grid Accent 3"/>
  <w:LsdException Locked="false" Priority="60" Name="Light Shading Accent 4"/>
  <w:LsdException Locked="false" Priority="61" Name="Light List Accent 4"/>
  <w:LsdException Locked="false" Priority="62" Name="Light Grid Accent 4"/>
  <w:LsdException Locked="false" Priority="63" Name="Medium Shading 1 Accent 4"/>
  <w:LsdException Locked="false" Priority="64" Name="Medium Shading 2 Accent 4"/>
  <w:LsdException Locked="false" Priority="65" Name="Medium List 1 Accent 4"/>
  <w:LsdException Locked="false" Priority="66" Name="Medium List 2 Accent 4"/>
  <w:LsdException Locked="false" Priority="67" Name="Medium Grid 1 Accent 4"/>
  <w:LsdException Locked="false" Priority="68" Name="Medium Grid 2 Accent 4"/>
  <w:LsdException Locked="false" Priority="69" Name="Medium Grid 3 Accent 4"/>
  <w:LsdException Locked="false" Priority="70" Name="Dark List Accent 4"/>
  <w:LsdException Locked="false" Priority="71" Name="Colorful Shading Accent 4"/>
  <w:LsdException Locked="false" Priority="72" Name="Colorful List Accent 4"/>
  <w:LsdException Locked="false" Priority="73" Name="Colorful Grid Accent 4"/>
  <w:LsdException Locked="false" Priority="60" Name="Light Shading Accent 5"/>
  <w:LsdException Locked="false" Priority="61" Name="Light List Accent 5"/>
  <w:LsdException Locked="false" Priority="62" Name="Light Grid Accent 5"/>
  <w:LsdException Locked="false" Priority="63" Name="Medium Shading 1 Accent 5"/>
  <w:LsdException Locked="false" Priority="64" Name="Medium Shading 2 Accent 5"/>
  <w:LsdException Locked="false" Priority="65" Name="Medium List 1 Accent 5"/>
  <w:LsdException Locked="false" Priority="66" Name="Medium List 2 Accent 5"/>
  <w:LsdException Locked="false" Priority="67" Name="Medium Grid 1 Accent 5"/>
  <w:LsdException Locked="false" Priority="68" Name="Medium Grid 2 Accent 5"/>
  <w:LsdException Locked="false" Priority="69" Name="Medium Grid 3 Accent 5"/>
  <w:LsdException Locked="false" Priority="70" Name="Dark List Accent 5"/>
  <w:LsdException Locked="false" Priority="71" Name="Colorful Shading Accent 5"/>
  <w:LsdException Locked="false" Priority="72" Name="Colorful List Accent 5"/>
  <w:LsdException Locked="false" Priority="73" Name="Colorful Grid Accent 5"/>
  <w:LsdException Locked="false" Priority="60" Name="Light Shading Accent 6"/>
  <w:LsdException Locked="false" Priority="61" Name="Light List Accent 6"/>
  <w:LsdException Locked="false" Priority="62" Name="Light Grid Accent 6"/>
  <w:LsdException Locked="false" Priority="63" Name="Medium Shading 1 Accent 6"/>
  <w:LsdException Locked="false" Priority="64" Name="Medium Shading 2 Accent 6"/>
  <w:LsdException Locked="false" Priority="65" Name="Medium List 1 Accent 6"/>
  <w:LsdException Locked="false" Priority="66" Name="Medium List 2 Accent 6"/>
  <w:LsdException Locked="false" Priority="67" Name="Medium Grid 1 Accent 6"/>
  <w:LsdException Locked="false" Priority="68" Name="Medium Grid 2 Accent 6"/>
  <w:LsdException Locked="false" Priority="69" Name="Medium Grid 3 Accent 6"/>
  <w:LsdException Locked="false" Priority="70" Name="Dark List Accent 6"/>
  <w:LsdException Locked="false" Priority="71" Name="Colorful Shading Accent 6"/>
  <w:LsdException Locked="false" Priority="72" Name="Colorful List Accent 6"/>
  <w:LsdException Locked="false" Priority="73" Name="Colorful Grid Accent 6"/>
  <w:LsdException Locked="false" Priority="19" QFormat="true"
   Name="Subtle Emphasis"/>
  <w:LsdException Locked="false" Priority="21" QFormat="true"
   Name="Intense Emphasis"/>
  <w:LsdException Locked="false" Priority="31" QFormat="true"
   Name="Subtle Reference"/>
  <w:LsdException Locked="false" Priority="32" QFormat="true"
   Name="Intense Reference"/>
  <w:LsdException Locked="false" Priority="33" QFormat="true" Name="Book Title"/>
  <w:LsdException Locked="false" Priority="37" SemiHidden="true"
   UnhideWhenUsed="true" Name="Bibliography"/>
  <w:LsdException Locked="false" Priority="39" SemiHidden="true"
   UnhideWhenUsed="true" QFormat="true" Name="TOC Heading"/>
  <w:LsdException Locked="false" Priority="41" Name="Plain Table 1"/>
  <w:LsdException Locked="false" Priority="42" Name="Plain Table 2"/>
  <w:LsdException Locked="false" Priority="43" Name="Plain Table 3"/>
  <w:LsdException Locked="false" Priority="44" Name="Plain Table 4"/>
  <w:LsdException Locked="false" Priority="45" Name="Plain Table 5"/>
  <w:LsdException Locked="false" Priority="40" Name="Grid Table Light"/>
  <w:LsdException Locked="false" Priority="46" Name="Grid Table 1 Light"/>
  <w:LsdException Locked="false" Priority="47" Name="Grid Table 2"/>
  <w:LsdException Locked="false" Priority="48" Name="Grid Table 3"/>
  <w:LsdException Locked="false" Priority="49" Name="Grid Table 4"/>
  <w:LsdException Locked="false" Priority="50" Name="Grid Table 5 Dark"/>
  <w:LsdException Locked="false" Priority="51" Name="Grid Table 6 Colorful"/>
  <w:LsdException Locked="false" Priority="52" Name="Grid Table 7 Colorful"/>
  <w:LsdException Locked="false" Priority="46"
   Name="Grid Table 1 Light Accent 1"/>
  <w:LsdException Locked="false" Priority="47" Name="Grid Table 2 Accent 1"/>
  <w:LsdException Locked="false" Priority="48" Name="Grid Table 3 Accent 1"/>
  <w:LsdException Locked="false" Priority="49" Name="Grid Table 4 Accent 1"/>
  <w:LsdException Locked="false" Priority="50" Name="Grid Table 5 Dark Accent 1"/>
  <w:LsdException Locked="false" Priority="51"
   Name="Grid Table 6 Colorful Accent 1"/>
  <w:LsdException Locked="false" Priority="52"
   Name="Grid Table 7 Colorful Accent 1"/>
  <w:LsdException Locked="false" Priority="46"
   Name="Grid Table 1 Light Accent 2"/>
  <w:LsdException Locked="false" Priority="47" Name="Grid Table 2 Accent 2"/>
  <w:LsdException Locked="false" Priority="48" Name="Grid Table 3 Accent 2"/>
  <w:LsdException Locked="false" Priority="49" Name="Grid Table 4 Accent 2"/>
  <w:LsdException Locked="false" Priority="50" Name="Grid Table 5 Dark Accent 2"/>
  <w:LsdException Locked="false" Priority="51"
   Name="Grid Table 6 Colorful Accent 2"/>
  <w:LsdException Locked="false" Priority="52"
   Name="Grid Table 7 Colorful Accent 2"/>
  <w:LsdException Locked="false" Priority="46"
   Name="Grid Table 1 Light Accent 3"/>
  <w:LsdException Locked="false" Priority="47" Name="Grid Table 2 Accent 3"/>
  <w:LsdException Locked="false" Priority="48" Name="Grid Table 3 Accent 3"/>
  <w:LsdException Locked="false" Priority="49" Name="Grid Table 4 Accent 3"/>
  <w:LsdException Locked="false" Priority="50" Name="Grid Table 5 Dark Accent 3"/>
  <w:LsdException Locked="false" Priority="51"
   Name="Grid Table 6 Colorful Accent 3"/>
  <w:LsdException Locked="false" Priority="52"
   Name="Grid Table 7 Colorful Accent 3"/>
  <w:LsdException Locked="false" Priority="46"
   Name="Grid Table 1 Light Accent 4"/>
  <w:LsdException Locked="false" Priority="47" Name="Grid Table 2 Accent 4"/>
  <w:LsdException Locked="false" Priority="48" Name="Grid Table 3 Accent 4"/>
  <w:LsdException Locked="false" Priority="49" Name="Grid Table 4 Accent 4"/>
  <w:LsdException Locked="false" Priority="50" Name="Grid Table 5 Dark Accent 4"/>
  <w:LsdException Locked="false" Priority="51"
   Name="Grid Table 6 Colorful Accent 4"/>
  <w:LsdException Locked="false" Priority="52"
   Name="Grid Table 7 Colorful Accent 4"/>
  <w:LsdException Locked="false" Priority="46"
   Name="Grid Table 1 Light Accent 5"/>
  <w:LsdException Locked="false" Priority="47" Name="Grid Table 2 Accent 5"/>
  <w:LsdException Locked="false" Priority="48" Name="Grid Table 3 Accent 5"/>
  <w:LsdException Locked="false" Priority="49" Name="Grid Table 4 Accent 5"/>
  <w:LsdException Locked="false" Priority="50" Name="Grid Table 5 Dark Accent 5"/>
  <w:LsdException Locked="false" Priority="51"
   Name="Grid Table 6 Colorful Accent 5"/>
  <w:LsdException Locked="false" Priority="52"
   Name="Grid Table 7 Colorful Accent 5"/>
  <w:LsdException Locked="false" Priority="46"
   Name="Grid Table 1 Light Accent 6"/>
  <w:LsdException Locked="false" Priority="47" Name="Grid Table 2 Accent 6"/>
  <w:LsdException Locked="false" Priority="48" Name="Grid Table 3 Accent 6"/>
  <w:LsdException Locked="false" Priority="49" Name="Grid Table 4 Accent 6"/>
  <w:LsdException Locked="false" Priority="50" Name="Grid Table 5 Dark Accent 6"/>
  <w:LsdException Locked="false" Priority="51"
   Name="Grid Table 6 Colorful Accent 6"/>
  <w:LsdException Locked="false" Priority="52"
   Name="Grid Table 7 Colorful Accent 6"/>
  <w:LsdException Locked="false" Priority="46" Name="List Table 1 Light"/>
  <w:LsdException Locked="false" Priority="47" Name="List Table 2"/>
  <w:LsdException Locked="false" Priority="48" Name="List Table 3"/>
  <w:LsdException Locked="false" Priority="49" Name="List Table 4"/>
  <w:LsdException Locked="false" Priority="50" Name="List Table 5 Dark"/>
  <w:LsdException Locked="false" Priority="51" Name="List Table 6 Colorful"/>
  <w:LsdException Locked="false" Priority="52" Name="List Table 7 Colorful"/>
  <w:LsdException Locked="false" Priority="46"
   Name="List Table 1 Light Accent 1"/>
  <w:LsdException Locked="false" Priority="47" Name="List Table 2 Accent 1"/>
  <w:LsdException Locked="false" Priority="48" Name="List Table 3 Accent 1"/>
  <w:LsdException Locked="false" Priority="49" Name="List Table 4 Accent 1"/>
  <w:LsdException Locked="false" Priority="50" Name="List Table 5 Dark Accent 1"/>
  <w:LsdException Locked="false" Priority="51"
   Name="List Table 6 Colorful Accent 1"/>
  <w:LsdException Locked="false" Priority="52"
   Name="List Table 7 Colorful Accent 1"/>
  <w:LsdException Locked="false" Priority="46"
   Name="List Table 1 Light Accent 2"/>
  <w:LsdException Locked="false" Priority="47" Name="List Table 2 Accent 2"/>
  <w:LsdException Locked="false" Priority="48" Name="List Table 3 Accent 2"/>
  <w:LsdException Locked="false" Priority="49" Name="List Table 4 Accent 2"/>
  <w:LsdException Locked="false" Priority="50" Name="List Table 5 Dark Accent 2"/>
  <w:LsdException Locked="false" Priority="51"
   Name="List Table 6 Colorful Accent 2"/>
  <w:LsdException Locked="false" Priority="52"
   Name="List Table 7 Colorful Accent 2"/>
  <w:LsdException Locked="false" Priority="46"
   Name="List Table 1 Light Accent 3"/>
  <w:LsdException Locked="false" Priority="47" Name="List Table 2 Accent 3"/>
  <w:LsdException Locked="false" Priority="48" Name="List Table 3 Accent 3"/>
  <w:LsdException Locked="false" Priority="49" Name="List Table 4 Accent 3"/>
  <w:LsdException Locked="false" Priority="50" Name="List Table 5 Dark Accent 3"/>
  <w:LsdException Locked="false" Priority="51"
   Name="List Table 6 Colorful Accent 3"/>
  <w:LsdException Locked="false" Priority="52"
   Name="List Table 7 Colorful Accent 3"/>
  <w:LsdException Locked="false" Priority="46"
   Name="List Table 1 Light Accent 4"/>
  <w:LsdException Locked="false" Priority="47" Name="List Table 2 Accent 4"/>
  <w:LsdException Locked="false" Priority="48" Name="List Table 3 Accent 4"/>
  <w:LsdException Locked="false" Priority="49" Name="List Table 4 Accent 4"/>
  <w:LsdException Locked="false" Priority="50" Name="List Table 5 Dark Accent 4"/>
  <w:LsdException Locked="false" Priority="51"
   Name="List Table 6 Colorful Accent 4"/>
  <w:LsdException Locked="false" Priority="52"
   Name="List Table 7 Colorful Accent 4"/>
  <w:LsdException Locked="false" Priority="46"
   Name="List Table 1 Light Accent 5"/>
  <w:LsdException Locked="false" Priority="47" Name="List Table 2 Accent 5"/>
  <w:LsdException Locked="false" Priority="48" Name="List Table 3 Accent 5"/>
  <w:LsdException Locked="false" Priority="49" Name="List Table 4 Accent 5"/>
  <w:LsdException Locked="false" Priority="50" Name="List Table 5 Dark Accent 5"/>
  <w:LsdException Locked="false" Priority="51"
   Name="List Table 6 Colorful Accent 5"/>
  <w:LsdException Locked="false" Priority="52"
   Name="List Table 7 Colorful Accent 5"/>
  <w:LsdException Locked="false" Priority="46"
   Name="List Table 1 Light Accent 6"/>
  <w:LsdException Locked="false" Priority="47" Name="List Table 2 Accent 6"/>
  <w:LsdException Locked="false" Priority="48" Name="List Table 3 Accent 6"/>
  <w:LsdException Locked="false" Priority="49" Name="List Table 4 Accent 6"/>
  <w:LsdException Locked="false" Priority="50" Name="List Table 5 Dark Accent 6"/>
  <w:LsdException Locked="false" Priority="51"
   Name="List Table 6 Colorful Accent 6"/>
  <w:LsdException Locked="false" Priority="52"
   Name="List Table 7 Colorful Accent 6"/>
 </w:LatentStyles>
</xml><![endif]-->
<style>
<!--
 /* Font Definitions */
 @font-face
	{font-family:Wingdings;
	panose-1:5 0 0 0 0 0 0 0 0 0;
	mso-font-charset:2;
	mso-generic-font-family:auto;
	mso-font-pitch:variable;
	mso-font-signature:0 268435456 0 0 -2147483648 0;}
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;
	mso-font-charset:1;
	mso-generic-font-family:roman;
	mso-font-pitch:variable;
	mso-font-signature:0 0 0 0 0 0;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;
	mso-font-charset:0;
	mso-generic-font-family:swiss;
	mso-font-pitch:variable;
	mso-font-signature:-469750017 -1040178053 9 0 511 0;}
 /* Style Definitions */
 p.MsoNormal, li.MsoNormal, div.MsoNormal
	{mso-style-unhide:no;
	mso-style-qformat:yes;
	mso-style-parent:"";
	margin-top:0in;
	margin-right:0in;
	margin-bottom:8.0pt;
	margin-left:0in;
	line-height:107%;
	mso-pagination:widow-orphan;
	font-size:11.0pt;
	font-family:"Calibri",sans-;
	mso-ascii-font-family:Calibri;
	mso-ascii-theme-font:minor-latin;
	mso-fareast-font-family:Calibri;
	mso-fareast-theme-font:minor-latin;
	mso-hansi-font-family:Calibri;
	mso-hansi-theme-font:minor-latin;
	mso-bidi-font-family:"";
	mso-bidi-theme-font:minor-bidi;}
p.MsoHeader, li.MsoHeader, div.MsoHeader
	{mso-style-priority:99;
	mso-style-link:"Header Char";
	margin:0in;
	margin-bottom:.0001pt;
	mso-pagination:widow-orphan;
	tab-stops:center 3.25in right 6.5in;
	font-size:11.0pt;
	font-family:"Calibri",sans-;
	mso-ascii-font-family:Calibri;
	mso-ascii-theme-font:minor-latin;
	mso-fareast-font-family:Calibri;
	mso-fareast-theme-font:minor-latin;
	mso-hansi-font-family:Calibri;
	mso-hansi-theme-font:minor-latin;
	mso-bidi-font-family:"";
	mso-bidi-theme-font:minor-bidi;}
p.MsoFooter, li.MsoFooter, div.MsoFooter
	{mso-style-priority:99;
	mso-style-link:"Footer Char";
	margin:0in;
	margin-bottom:.0001pt;
	mso-pagination:widow-orphan;
	tab-stops:center 3.25in right 6.5in;
	font-size:11.0pt;
	font-family:"Calibri",sans-;
	mso-ascii-font-family:Calibri;
	mso-ascii-theme-font:minor-latin;
	mso-fareast-font-family:Calibri;
	mso-fareast-theme-font:minor-latin;
	mso-hansi-font-family:Calibri;
	mso-hansi-theme-font:minor-latin;
	mso-bidi-font-family:"";
	mso-bidi-theme-font:minor-bidi;}
p.MsoListParagraph, li.MsoListParagraph, div.MsoListParagraph
	{mso-style-priority:34;
	mso-style-unhide:no;
	mso-style-qformat:yes;
	margin-top:0in;
	margin-right:0in;
	margin-bottom:8.0pt;
	margin-left:.5in;
	mso-add-space:auto;
	line-height:107%;
	mso-pagination:widow-orphan;
	font-size:11.0pt;
	font-family:"Calibri",sans-;
	mso-ascii-font-family:Calibri;
	mso-ascii-theme-font:minor-latin;
	mso-fareast-font-family:Calibri;
	mso-fareast-theme-font:minor-latin;
	mso-hansi-font-family:Calibri;
	mso-hansi-theme-font:minor-latin;
	mso-bidi-font-family:"";
	mso-bidi-theme-font:minor-bidi;}
p.MsoListParagraphCxSpFirst, li.MsoListParagraphCxSpFirst, div.MsoListParagraphCxSpFirst
	{mso-style-priority:34;
	mso-style-unhide:no;
	mso-style-qformat:yes;
	mso-style-type:export-only;
	margin-top:0in;
	margin-right:0in;
	margin-bottom:0in;
	margin-left:.5in;
	margin-bottom:.0001pt;
	mso-add-space:auto;
	line-height:107%;
	mso-pagination:widow-orphan;
	font-size:11.0pt;
	font-family:"Calibri",sans-;
	mso-ascii-font-family:Calibri;
	mso-ascii-theme-font:minor-latin;
	mso-fareast-font-family:Calibri;
	mso-fareast-theme-font:minor-latin;
	mso-hansi-font-family:Calibri;
	mso-hansi-theme-font:minor-latin;
	mso-bidi-font-family:"";
	mso-bidi-theme-font:minor-bidi;}
p.MsoListParagraphCxSpMiddle, li.MsoListParagraphCxSpMiddle, div.MsoListParagraphCxSpMiddle
	{mso-style-priority:34;
	mso-style-unhide:no;
	mso-style-qformat:yes;
	mso-style-type:export-only;
	margin-top:0in;
	margin-right:0in;
	margin-bottom:0in;
	margin-left:.5in;
	margin-bottom:.0001pt;
	mso-add-space:auto;
	line-height:107%;
	mso-pagination:widow-orphan;
	font-size:11.0pt;
	font-family:"Calibri",sans-;
	mso-ascii-font-family:Calibri;
	mso-ascii-theme-font:minor-latin;
	mso-fareast-font-family:Calibri;
	mso-fareast-theme-font:minor-latin;
	mso-hansi-font-family:Calibri;
	mso-hansi-theme-font:minor-latin;
	mso-bidi-font-family:"";
	mso-bidi-theme-font:minor-bidi;}
p.MsoListParagraphCxSpLast, li.MsoListParagraphCxSpLast, div.MsoListParagraphCxSpLast
	{mso-style-priority:34;
	mso-style-unhide:no;
	mso-style-qformat:yes;
	mso-style-type:export-only;
	margin-top:0in;
	margin-right:0in;
	margin-bottom:8.0pt;
	margin-left:.5in;
	mso-add-space:auto;
	line-height:107%;
	mso-pagination:widow-orphan;
	font-size:11.0pt;
	font-family:"Calibri",sans-;
	mso-ascii-font-family:Calibri;
	mso-ascii-theme-font:minor-latin;
	mso-fareast-font-family:Calibri;
	mso-fareast-theme-font:minor-latin;
	mso-hansi-font-family:Calibri;
	mso-hansi-theme-font:minor-latin;
	mso-bidi-font-family:"";
	mso-bidi-theme-font:minor-bidi;}
span.HeaderChar
	{mso-style-name:"Header Char";
	mso-style-priority:99;
	mso-style-unhide:no;
	mso-style-locked:yes;
	mso-style-link:Header;}
span.FooterChar
	{mso-style-name:"Footer Char";
	mso-style-priority:99;
	mso-style-unhide:no;
	mso-style-locked:yes;
	mso-style-link:Footer;}
span.GramE
	{mso-style-name:"";
	mso-gram-e:yes;}
.MsoChpDefault
	{mso-style-type:export-only;
	mso-default-props:yes;
	font-family:"Calibri",sans-;
	mso-ascii-font-family:Calibri;
	mso-ascii-theme-font:minor-latin;
	mso-fareast-font-family:Calibri;
	mso-fareast-theme-font:minor-latin;
	mso-hansi-font-family:Calibri;
	mso-hansi-theme-font:minor-latin;
	mso-bidi-font-family:"";
	mso-bidi-theme-font:minor-bidi;}
.MsoPapDefault
	{mso-style-type:export-only;
	margin-bottom:8.0pt;
	line-height:107%;}
 /* Page Definitions */
 @page
	{mso-footnote-separator:url("CÁC%20\0110I\1EC0U%20KI\1EC6N%20\0110\1EB6C%20BI\1EC6T%20C\1EE6A%20M\1ED8T%20S\1ED0%20S\1EA2N%20PH\1EA8M%20KHI%20G\1EECI%20B\1EA2O%20HÀNH%20\(1\)_files/header.htm") fs;
	mso-footnote-continuation-separator:url("CÁC%20\0110I\1EC0U%20KI\1EC6N%20\0110\1EB6C%20BI\1EC6T%20C\1EE6A%20M\1ED8T%20S\1ED0%20S\1EA2N%20PH\1EA8M%20KHI%20G\1EECI%20B\1EA2O%20HÀNH%20\(1\)_files/header.htm") fcs;
	mso-endnote-separator:url("CÁC%20\0110I\1EC0U%20KI\1EC6N%20\0110\1EB6C%20BI\1EC6T%20C\1EE6A%20M\1ED8T%20S\1ED0%20S\1EA2N%20PH\1EA8M%20KHI%20G\1EECI%20B\1EA2O%20HÀNH%20\(1\)_files/header.htm") es;
	mso-endnote-continuation-separator:url("CÁC%20\0110I\1EC0U%20KI\1EC6N%20\0110\1EB6C%20BI\1EC6T%20C\1EE6A%20M\1ED8T%20S\1ED0%20S\1EA2N%20PH\1EA8M%20KHI%20G\1EECI%20B\1EA2O%20HÀNH%20\(1\)_files/header.htm") ecs;}
@page WordSection1
	{size:841.9pt 595.3pt;
	mso-page-orientation:landscape;
	margin:1.0in 1.0in 1.0in 1.0in;
	mso-header-margin:.5in;
	mso-footer-margin:.5in;
	mso-footer:url("CÁC%20\0110I\1EC0U%20KI\1EC6N%20\0110\1EB6C%20BI\1EC6T%20C\1EE6A%20M\1ED8T%20S\1ED0%20S\1EA2N%20PH\1EA8M%20KHI%20G\1EECI%20B\1EA2O%20HÀNH%20\(1\)_files/header.htm") f1;
	mso-paper-source:0;}
div.WordSection1
	{page:WordSection1;}
 /* List Definitions */
 @list l0
	{mso-list-id:1481464554;
	mso-list-type:hybrid;
	mso-list-template-ids:-1685654308 134807567 134807577 134807579 134807567 134807577 134807579 134807567 134807577 134807579;}
@list l0:level1
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l0:level2
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l0:level3
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
@list l0:level4
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l0:level5
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l0:level6
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
@list l0:level7
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l0:level8
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l0:level9
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
ol
	{margin-bottom:0in;}
ul
	{margin-bottom:0in;}
-->
</style>
<!--[if gte mso 10]>
<style>
 /* Style Definitions */
 table.MsoNormalTable
	{mso-style-name:"Table Normal";
	mso-tstyle-rowband-size:0;
	mso-tstyle-colband-size:0;
	mso-style-noshow:yes;
	mso-style-priority:99;
	mso-style-parent:"";
	mso-padding-alt:0in 5.4pt 0in 5.4pt;
	mso-para-margin-top:0in;
	mso-para-margin-right:0in;
	mso-para-margin-bottom:8.0pt;
	mso-para-margin-left:0in;
	line-height:107%;
	mso-pagination:widow-orphan;
	font-size:11.0pt;
	font-family:"Calibri",sans-;
	mso-ascii-font-family:Calibri;
	mso-ascii-theme-font:minor-latin;
	mso-hansi-font-family:Calibri;
	mso-hansi-theme-font:minor-latin;
	mso-bidi-font-family:"";
	mso-bidi-theme-font:minor-bidi;}
</style>
<![endif]--><!--[if gte mso 9]><xml>
 <o:shapedefaults v:ext="edit" spidmax="1026"/>
</xml><![endif]--><!--[if gte mso 9]><xml>
 <o:shapelayout v:ext="edit">
  <o:idmap v:ext="edit" data="1"/>
 </o:shapelayout></xml><![endif]-->
</head>

<body lang=EN-US style='tab-interval:.5in'>

<div class=WordSection1>

<p class=MsoNormal align=center style='text-align:center'><b><span
style='font-size:20.0pt;line-height:107%;font-family:"",'>&#272;I&#7872;U
KI&#7878;N C&#7910;A M&#7896;T S&#7888; S&#7842;N PH&#7848;M KHI G&#7916;I B&#7842;O
HÀNH<o:p></o:p></span></b></p>

<p class=MsoNormal><span style='font-family:"",'><o:p>&nbsp;</o:p></span></p>

<p class=MsoNormal><b><span style='font-size:10.0pt;line-height:107%;
font-family:"",'>&#272;ÂY LÀ NH&#7918;NG &#272;I&#7872;U KI&#7878;N
THEO YÊU C&#7846;U C&#7910;A HÃNG <span class=GramE>NH&#7856;M<span
style='mso-spacerun:yes'>  </span>M&#7908;C</span> &#272;ÍCH PH&#7908;C V&#7908;
CHO CH&#7844;T L&#431;&#7906;NG D&#7882;CH V&#7908; B&#7842;O HÀNH &#272;&#431;&#7906;C
NHANH CHÓNG, CHÍNH XÁC VÀ<span style='mso-spacerun:yes'>  </span>HI&#7878;U QU&#7842;.<o:p></o:p></span></b></p>

<p class=MsoListParagraphCxSpFirst style='text-indent:-.25in;mso-list:l0 level1 lfo1'><![if !supportLists]><span
style='font-family:"",;mso-fareast-font-family:""'><span
style='mso-list:Ignore'>1.<span style='font:7.0pt ""'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]><b><span style='font-family:"",'>MÀN
HÌNH DELL</span></b><span style='font-family:"",'> </span><span
style='font-family:Wingdings;mso-ascii-font-family:"";
mso-hansi-font-family:"";mso-bidi-font-family:"";
mso-char-type:symbol;mso-symbol-font-family:Wingdings'><span style='mso-char-type:
symbol;mso-symbol-font-family:Wingdings'>è</span></span><span style='font-family:
"",'> CÓ &#272;&#7846;Y &#272;&#7910; CÙI, &#272;&#7870;, N&#7854;P
L&#431;NG ( N&#7870;U CÓ)<o:p></o:p></span></p>

<p class=MsoListParagraphCxSpMiddle><span style='font-family:"",'><o:p>&nbsp;</o:p></span></p>

<p class=MsoListParagraphCxSpMiddle style='text-indent:-.25in;mso-list:l0 level1 lfo1'><![if !supportLists]><span
style='font-family:"",;mso-fareast-font-family:""'><span
style='mso-list:Ignore'>2.<span style='font:7.0pt ""'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]><b><span style='font-family:"",'>T&#7844;T
C&#7842; S&#7842;N PH&#7848;M MÁY IN</span></b><span style='font-family:"",'>
</span><span style='font-family:Wingdings;mso-ascii-font-family:"";
mso-hansi-font-family:"";mso-bidi-font-family:"";
mso-char-type:symbol;mso-symbol-font-family:Wingdings'><span style='mso-char-type:
symbol;mso-symbol-font-family:Wingdings'>è</span></span><span style='font-family:
"",'> PH&#7842;I CÓ KÈM THEO M&#7920;C CHÍNH HÃNG. <o:p></o:p></span></p>

<p class=MsoListParagraphCxSpMiddle><span style='font-family:"",'><o:p>&nbsp;</o:p></span></p>

<p class=MsoListParagraphCxSpMiddle><b><span style='font-family:"",;
color:red'>TR&#431;&#7900;NG H&#7906;P M&#7920;C KHÔNG CHÍNH HÃNG, M&#7920;C
TÁI CH&#7870; HO&#7862;C KHÔNG &#272;ÚNG QUY CÁCH HÃNG CÓ TH&#7874; S&#7868; T&#7914;
CH&#7888;I B&#7842;O HÀNH MÁY.<o:p></o:p></span></b></p>

<p class=MsoListParagraphCxSpMiddle><span style='font-family:"",'><o:p>&nbsp;</o:p></span></p>

<p class=MsoListParagraphCxSpMiddle style='text-indent:-.25in;mso-list:l0 level1 lfo1'><![if !supportLists]><span
style='font-family:"",;mso-fareast-font-family:""'><span
style='mso-list:Ignore'>3.<span style='font:7.0pt ""'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]><b><span style='font-family:"",'>MÁY
IN EPSON</span></b><span style='font-family:"",'> </span><span
style='font-family:Wingdings;mso-ascii-font-family:"";
mso-hansi-font-family:"";mso-bidi-font-family:"";
mso-char-type:symbol;mso-symbol-font-family:Wingdings'><span style='mso-char-type:
symbol;mso-symbol-font-family:Wingdings'>è</span></span><span style='font-family:
"",'> M&#7920;C , RUBON PH&#7842;I LÀ CHÍNH HÃNG, M&#7920;C
CÒN TRÊN 30% , <span style='mso-spacerun:yes'> </span>HÓA &#272;&#416;N MUA
HÀNG S&#7842;N PH&#7848;M ( N&#7870;U CH&#431;A &#272;&#258;NG KÝ B&#7842;O
HÀNH ONLINE)<o:p></o:p></span></p>

<p class=MsoListParagraphCxSpMiddle><span style='font-family:"",'><o:p>&nbsp;</o:p></span></p>

<p class=MsoListParagraphCxSpMiddle style='text-indent:-.25in;mso-list:l0 level1 lfo1'><![if !supportLists]><span
style='font-family:"",;mso-fareast-font-family:""'><span
style='mso-list:Ignore'>4.<span style='font:7.0pt ""'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]><b><span style='font-family:"",'>MÁY
IN CANON </span></b><b><span style='font-family:Wingdings;mso-ascii-font-family:
"";mso-hansi-font-family:"";mso-bidi-font-family:
"";mso-char-type:symbol;mso-symbol-font-family:Wingdings'><span
style='mso-char-type:symbol;mso-symbol-font-family:Wingdings'>è</span></span></b><span
style='font-family:"",'><span style='mso-tab-count:1'>  </span>PH&#7842;I
G&#7916;I KÈM PHI&#7870;U B&#7842;O HÀNH GÓC C&#7910;A HÃNG<o:p></o:p></span></p>

<p class=MsoListParagraphCxSpMiddle><b><span style='font-family:"",'><o:p>&nbsp;</o:p></span></b></p>

<p class=MsoListParagraphCxSpMiddle style='text-indent:-.25in;mso-list:l0 level1 lfo1'><![if !supportLists]><span
style='font-family:"",;mso-fareast-font-family:""'><span
style='mso-list:Ignore'>5.<span style='font:7.0pt ""'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]><b><span style='font-family:"",'>M&#7920;C
HP</span></b><span style='font-family:"",'> </span><span
style='font-family:Wingdings;mso-ascii-font-family:"";
mso-hansi-font-family:"";mso-bidi-font-family:"";
mso-char-type:symbol;mso-symbol-font-family:Wingdings'><span style='mso-char-type:
symbol;mso-symbol-font-family:Wingdings'>è</span></span><span style='font-family:
"",'> B&#7842;N IN SUPPLY STATUS, B&#7842;N IN DEMO, B&#7842;N
IN CONFIGUTION, HÓA &#272;&#416;N, SERI MÁY, MODEL MÁY. <o:p></o:p></span></p>

<p class=MsoListParagraphCxSpMiddle><span style='font-family:"",'><o:p>&nbsp;</o:p></span></p>

<p class=MsoListParagraphCxSpMiddle style='text-indent:-.25in;mso-list:l0 level1 lfo1'><![if !supportLists]><span
style='font-family:"",;mso-fareast-font-family:""'><span
style='mso-list:Ignore'>6.<span style='font:7.0pt ""'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]><b><span style='font-family:"",'>&#272;&#7888;I
V&#7898;I M&#7920;C IN HP DESIGNJET</span></b><span style='font-family:"",'>
</span><span style='font-family:Wingdings;mso-ascii-font-family:"";
mso-hansi-font-family:"";mso-bidi-font-family:"";
mso-char-type:symbol;mso-symbol-font-family:Wingdings'><span style='mso-char-type:
symbol;mso-symbol-font-family:Wingdings'>è</span></span><span style='font-family:
"",'> PH&#7842;I CÓ THÊM SERVICES PLOT.<o:p></o:p></span></p>

<p class=MsoListParagraphCxSpMiddle><span style='font-family:"",'><o:p>&nbsp;</o:p></span></p>

<p class=MsoListParagraphCxSpMiddle style='text-indent:-.25in;mso-list:l0 level1 lfo1'><![if !supportLists]><span
style='font-family:"",;mso-fareast-font-family:""'><span
style='mso-list:Ignore'>7.<span style='font:7.0pt ""'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]><b><span style='font-family:"",'>BÀN
PHÍM, CHU&#7896;T C&#7910;A PC B&#7896;</span></b><span style='font-family:
"",'><span style='mso-spacerun:yes'>  </span></span><span
style='font-family:Wingdings;mso-ascii-font-family:"";
mso-hansi-font-family:"";mso-bidi-font-family:"";
mso-char-type:symbol;mso-symbol-font-family:Wingdings'><span style='mso-char-type:
symbol;mso-symbol-font-family:Wingdings'>è</span></span><span style='font-family:
"",'> PH&#7842;I CÓ HÌNH &#7842;NH SERI MÁY, MODEL MÁY.<o:p></o:p></span></p>

<p class=MsoListParagraphCxSpMiddle><span style='font-family:"",'><o:p>&nbsp;</o:p></span></p>

<p class=MsoListParagraphCxSpMiddle style='text-indent:-.25in;mso-list:l0 level1 lfo1'><![if !supportLists]><span
style='font-family:"",;mso-fareast-font-family:""'><span
style='mso-list:Ignore'>8.<span style='font:7.0pt ""'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]><b><span style='font-family:"",'>ADAPTER,
PH&#7908; KI&#7878;N, LINH KI&#7878;N THEO MÁY</span></b><span
style='font-family:"",'> </span><span style='font-family:
Wingdings;mso-ascii-font-family:"";mso-hansi-font-family:"";
mso-bidi-font-family:"";mso-char-type:symbol;mso-symbol-font-family:
Wingdings'><span style='mso-char-type:symbol;mso-symbol-font-family:Wingdings'>è</span></span><span
style='font-family:"",'> PH&#7842;I G&#7916;I KÈM<span
style='mso-spacerun:yes'>  </span>MÁY.<o:p></o:p></span></p>

<p class=MsoListParagraphCxSpMiddle><span style='font-family:"",'><o:p>&nbsp;</o:p></span></p>

<p class=MsoListParagraphCxSpMiddle style='text-indent:-.25in;mso-list:l0 level1 lfo1'><![if !supportLists]><span
style='font-family:"",;mso-fareast-font-family:""'><span
style='mso-list:Ignore'>9.<span style='font:7.0pt ""'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]><b><span style='font-family:"",'>CÁC
THI&#7870;T B&#7882; LINH KI&#7878;N SERVER</span></b><span style='font-family:
Wingdings;mso-ascii-font-family:"";mso-hansi-font-family:"";
mso-bidi-font-family:"";mso-char-type:symbol;mso-symbol-font-family:
Wingdings'><span style='mso-char-type:symbol;mso-symbol-font-family:Wingdings'>è</span></span><span
style='font-family:"",'> CÓ HÌNH &#7842;NH L&#7894;I, SESRI
MÁY, MODEL MÁY, LOG FILE.<o:p></o:p></span></p>

<p class=MsoListParagraphCxSpMiddle><span style='font-family:"",'><o:p>&nbsp;</o:p></span></p>

<p class=MsoListParagraphCxSpMiddle style='text-indent:-.25in;mso-list:l0 level1 lfo1'><![if !supportLists]><b><span
style='font-family:"",;mso-fareast-font-family:"";
color:red'><span style='mso-list:Ignore'>10.<span style='font:7.0pt ""'>&nbsp;&nbsp;
</span></span></span></b><![endif]><b><span style='font-family:"",;
color:red'>QUÝ KHÁCH HÀNG VUI LÒNG SAO CHÉP D&#7918; LI&#7878;U, SOFTWARE, C&#7844;U
HÌNH C&#7910;A S&#7842;N PH&#7848;M, THI&#7870;T B&#7882; TR&#431;&#7898;C KHI
G&#7916;I B&#7842;O HÀNH.<o:p></o:p></span></b></p>

<p class=MsoListParagraphCxSpLast style='text-align:justify'><b><span
style='font-family:"",;color:red'>CHÚNG TÔI KHÔNG CH&#7882;U
TRÁCH NHI&#7878;M V&#7872; D&#7918; LI&#7878;U C&#7910;A KHÁCH HÀNG </span></b><span
style='font-family:"",'>.<o:p></o:p></span></p>

</div>

</body>

</html>

                        </div>
                    </div>
                </div>
            </div>
        </div>
       
      </div>
        <script>

            function togglethutuc() {
                $("#modalthutuc").modal("toggle");
            }
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
            var CodeGenerate = "";
            var TenGiaoNhan = "";
            var SoDienThoaiGiaoNhan = "";

            var step = 1;
            function prevstep() {
                var target = $('#fiel1');
                var top = target.offset().top - 100;
                $('html,body').animate({ scrollTop: top }, 600);
                step -= 1;
                if (step == 0)
                    step = 1;
                toglestep();
            }
            function Checkvalidate() {

            }
            function nextstep() {

                var propcheck = $("#xndl").prop("checked");
               
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

                    if (propcheck == false) {
                        alert("Vui lòng xác nhận dữ liệu.");
                        $("#xndl").focus();
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
                    //Scroll
                   
                }
                if (step == 2) {
                    ProductName = $("#MainContent_ProductName").val();
                    ProductSeri = $("#MainContent_ProductSeri").val();
                    ProductNgayMua = $("#ProductNgayMua").val();
                    ProductTinhTrangLoi = $("#MainContent_ProductTinhTrangLoi").val();
                    ProductPhukien = $("#MainContent_ProductPhukien").val();
                    ProductImage = $("#Filess").val();
                }
                var target = $('#fiel1');
                var top = target.offset().top-100;
                $('html,body').animate({ scrollTop: top }, 600);

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
                $(".previous").css("opacity", 0);
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
                    TenGiaoNhan: TenGiaoNhan,
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


            function keyup() { 
               
                if ($("#MainContent_CarName").val() == '') {
                    $(".tooglediachi").hide();
                }
                else {
                    $(".tooglediachi").show();
                    $.ajax({
                        url: 'Default.aspx/GetinforChanhXe',
                        type: "POST",
                        dataType: "html",
                        contentType: "application/json; charset=utf-8",
                        data: "{email:'" + $("#MainContent_emailcus").val() + "', key:'" + $("#MainContent_CarName").val() + "'}",
                        success: function (result) {
                            var getdata = result.replace('{"d":"', '').replace('"}', '');

                            var split1 = getdata.split(',');
                            if (split1.length == 1)
                            {
                                $(".tooglediachi").hide();
                            }
                            $(".tooglediachi").html("");
                            for (i = 0; i < split1.length; i++) {
                                $(".tooglediachi").append("<li><a style=\"cursor:pointer\" onclick=\"togledata('"+split1[i]+"')\">" + split1[i] + "</a></li>");
                            }
                        },
                        error: function (result) {
                            alert("Failed");
                        }
                    });
                }
            }
            function togledata(data) {
                var getSplit = data.split('-');
                console.log(getSplit)
                $("#MainContent_CarName").val(getSplit[0].trim());
                $("#MainContent_CarAddress").val(getSplit[1].trim());
                $("#MainContent_CarPhoneNumber").val(getSplit[2].trim());
                $(".tooglediachi").hide();
            }
            $("#MainContent_CarName").focusout(function () {
                //$(".tooglediachi").hide();
            });
            var stt = 0;
            function reload() {
                if (stt < 3) {
                    stt += 1;
                    $("#MainContent_Image1").removeAttr("src");
                    $("#MainContent_Image1").attr("src", "/ImageValidator.aspx?code=" + stt);
                }
             
            }
        </script>
</asp:Content>
