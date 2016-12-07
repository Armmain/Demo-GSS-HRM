<%@ Page Title="" Language="VB" MasterPageFile="~/Master/MasterPage.master" AutoEventWireup="false" CodeFile="master_add_company.aspx.vb" Inherits="Master_master_add_company" %>

<%@ Register Assembly="DevExpress.Web.v16.1, Version=16.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <style type="text/css">
        .dxeRadioButtonList {
            box-shadow: none;
        }
    </style>
    <script type="text/javascript">
        function onFileUploadComplete(s, e) {
            if (e.callbackData) {
                var fileData = e.callbackData.split('|');
                var fileName = fileData[0],
                    fileUrl = fileData[1],
                    fileSize = fileData[2];
                ShowImage.SetImageUrl(fileUrl);
            }
        }
        //กรอกสาขา
        function branch_text() {
            if (branch_office.GetValue() == "0") {
                $("#Tbranch_n").slideUp("slow");
                branch_n.SetVisible(false);
                
            } 
            else if (branch_office.GetValue() == "1") {
                branch_n.SetVisible(true);
                $("#Tbranch_n").slideDown("slow");
                branch_n.Focus();
            }
        }
        function validateEmail(email_1) {
            var re = /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
            return re.test(email_1);  
        }
        //ตรวจสอบค่าว่าง
        function checktext() {
            //code_com 1
            if (code_com.GetText() == "") {
                code_com.Focus();
                $('#<%=code_com.ClientID%>').addClass("Errortext");
                $('#errorcode_com').css("display", "block");
                //-
                $('#<%=name_com_th.ClientID%>').removeClass("Errortext");
                $('#errorname_com_th').css("display", "none");
                //-
                $('#<%=name_com_en.ClientID%>').removeClass("Errortext");
                $('#errorname_com_en').css("display", "none");
                //-
                $('#<%=name_com.ClientID%>').removeClass("Errortext");
                $('#errorname_com').css("display", "none");
                //-
                $('#<%=tax_id.ClientID%>').removeClass("Errortext");
                $('#errortax_id').css("display", "none");
                //-
                $('#<%=branch_office.ClientID%>').removeClass("Errortext");
                $('#errorbranch_office').css("display", "none");
                //-
                $('#<%=address_num.ClientID%>').removeClass("Errortext");
                $('#erroraddress_num').css("display", "none");
                //-
                $('#<%=address_dis.ClientID%>').removeClass("Errortext");
                $('#erroraddress_dis').css("display", "none");
                //-
                $('#<%=address_can.ClientID%>').removeClass("Errortext");
                $('#erroraddress_can').css("display", "none");
                //-
                $('#<%=address_cou.ClientID%>').removeClass("Errortext");
                $('#erroraddress_cou').css("display", "none");
                //-
                $('#<%=zip_code.ClientID%>').removeClass("Errortext");
                $('#errorzip_code').css("display", "none");
                //-
                $('#<%=tel_home.ClientID%>').removeClass("Errortext");
                $('#errortel_home').css("display", "none");
                //-
                $('#<%=tel_phone.ClientID%>').removeClass("Errortext");
                $('#errortel_phone').css("display", "none");
                //-
                $('#<%=email_1.ClientID%>').removeClass("Errortext");
                $('#erroremail_1').css("display", "none");
                //-
                $('#<%=email_1.ClientID%>').removeClass("Errortext");
                $('#erroremail_1_fomat').css("display", "none");
                //-
                $('#<%=type.ClientID%>').removeClass("Errortext");
                $('#errortype').css("display", "none");
                //-
                $('#<%=busi_type.ClientID%>').removeClass("Errortext");
                $('#errorbusi_type').css("display", "none");
            }//name_com_th 2
            else if (name_com_th.GetText() == "") {
                name_com_th.Focus();
                $('#<%=name_com_th.ClientID%>').addClass("Errortext");
                $('#errorname_com_th').css("display", "block");
                //-
                $('#<%=code_com.ClientID%>').removeClass("Errortext");
                $('#errorcode_com').css("display", "none");
                //-
                $('#<%=name_com_en.ClientID%>').removeClass("Errortext");
                $('#errorname_com_en').css("display", "none");
                //-
                $('#<%=name_com.ClientID%>').removeClass("Errortext");
                $('#errorname_com').css("display", "none");
                //-
                $('#<%=tax_id.ClientID%>').removeClass("Errortext");
                $('#errortax_id').css("display", "none");
                //-
                $('#<%=branch_office.ClientID%>').removeClass("Errortext");
                $('#errorbranch_office').css("display", "none");
                //-
                $('#<%=address_num.ClientID%>').removeClass("Errortext");
                $('#erroraddress_num').css("display", "none");
                //-
                $('#<%=address_dis.ClientID%>').removeClass("Errortext");
                $('#erroraddress_dis').css("display", "none");
                //-
                $('#<%=address_can.ClientID%>').removeClass("Errortext");
                $('#erroraddress_can').css("display", "none");
                //-
                $('#<%=address_cou.ClientID%>').removeClass("Errortext");
                $('#erroraddress_cou').css("display", "none");
                //-
                $('#<%=zip_code.ClientID%>').removeClass("Errortext");
                $('#errorzip_code').css("display", "none");
                //-
                $('#<%=tel_home.ClientID%>').removeClass("Errortext");
                $('#errortel_home').css("display", "none");
                //-
                $('#<%=tel_phone.ClientID%>').removeClass("Errortext");
                $('#errortel_phone').css("display", "none");
                //-
                $('#<%=email_1.ClientID%>').removeClass("Errortext");
                $('#erroremail_1').css("display", "none");
                //-
                $('#<%=email_1.ClientID%>').removeClass("Errortext");
                $('#erroremail_1_fomat').css("display", "none");
                //-
                $('#<%=type.ClientID%>').removeClass("Errortext");
                $('#errortype').css("display", "none");
                //-
                $('#<%=busi_type.ClientID%>').removeClass("Errortext");
                $('#errorbusi_type').css("display", "none");
            }//name_com_en 3
            else if (name_com_en.GetText() == "") {
                name_com_en.Focus();
                $('#<%=name_com_en.ClientID%>').addClass("Errortext");
                $('#errorname_com_en').css("display", "block");
                //-
                $('#<%=code_com.ClientID%>').removeClass("Errortext");
                $('#errorcode_com').css("display", "none");
                //-
                $('#<%=name_com_th.ClientID%>').removeClass("Errortext");
                $('#errorname_com_th').css("display", "none");
                //-
                $('#<%=name_com.ClientID%>').removeClass("Errortext");
                $('#errorname_com').css("display", "none");
                //-
                $('#<%=tax_id.ClientID%>').removeClass("Errortext");
                $('#errortax_id').css("display", "none");
                //-
                $('#<%=branch_office.ClientID%>').removeClass("Errortext");
                $('#errorbranch_office').css("display", "none");
                //-
                $('#<%=address_num.ClientID%>').removeClass("Errortext");
                $('#erroraddress_num').css("display", "none");
                //-
                $('#<%=address_dis.ClientID%>').removeClass("Errortext");
                $('#erroraddress_dis').css("display", "none");
                //-
                $('#<%=address_can.ClientID%>').removeClass("Errortext");
                $('#erroraddress_can').css("display", "none");
                //-
                $('#<%=address_cou.ClientID%>').removeClass("Errortext");
                $('#erroraddress_cou').css("display", "none");
                //-
                $('#<%=zip_code.ClientID%>').removeClass("Errortext");
                $('#errorzip_code').css("display", "none");
                //-
                $('#<%=tel_home.ClientID%>').removeClass("Errortext");
                $('#errortel_home').css("display", "none");
                //-
                $('#<%=tel_phone.ClientID%>').removeClass("Errortext");
                $('#errortel_phone').css("display", "none");
                //-
                $('#<%=email_1.ClientID%>').removeClass("Errortext");
                $('#erroremail_1').css("display", "none");
                //-
                $('#<%=email_1.ClientID%>').removeClass("Errortext");
                $('#erroremail_1_fomat').css("display", "none");
                //-
                $('#<%=type.ClientID%>').removeClass("Errortext");
                $('#errortype').css("display", "none");
                //-
                $('#<%=busi_type.ClientID%>').removeClass("Errortext");
                $('#errorbusi_type').css("display", "none");
            }//name_com 4
            else if (name_com.GetText() == "") {
                name_com.Focus();
                $('#<%=name_com.ClientID%>').addClass("Errortext");
                $('#errorname_com').css("display", "block");
                //-
                $('#<%=code_com.ClientID%>').removeClass("Errortext");
                $('#errorcode_com').css("display", "none");
                //-
                $('#<%=name_com_th.ClientID%>').removeClass("Errortext");
                $('#errorname_com_th').css("display", "none");
                //-
                $('#<%=name_com_en.ClientID%>').removeClass("Errortext");
                $('#errorname_com_en').css("display", "none");
                //-
                $('#<%=tax_id.ClientID%>').removeClass("Errortext");
                $('#errortax_id').css("display", "none");
                //-
                $('#<%=branch_office.ClientID%>').removeClass("Errortext");
                $('#errorbranch_office').css("display", "none");
                //-
                $('#<%=address_num.ClientID%>').removeClass("Errortext");
                $('#erroraddress_num').css("display", "none");
                //-
                $('#<%=address_dis.ClientID%>').removeClass("Errortext");
                $('#erroraddress_dis').css("display", "none");
                //-
                $('#<%=address_can.ClientID%>').removeClass("Errortext");
                $('#erroraddress_can').css("display", "none");
                //-
                $('#<%=address_cou.ClientID%>').removeClass("Errortext");
                $('#erroraddress_cou').css("display", "none");
                //-
                $('#<%=zip_code.ClientID%>').removeClass("Errortext");
                $('#errorzip_code').css("display", "none");
                //-
                $('#<%=tel_home.ClientID%>').removeClass("Errortext");
                $('#errortel_home').css("display", "none");
                //-
                $('#<%=tel_phone.ClientID%>').removeClass("Errortext");
                $('#errortel_phone').css("display", "none");
                //-
                $('#<%=email_1.ClientID%>').removeClass("Errortext");
                $('#erroremail_1').css("display", "none");
                //-
                $('#<%=email_1.ClientID%>').removeClass("Errortext");
                $('#erroremail_1_fomat').css("display", "none");
                //-
                $('#<%=type.ClientID%>').removeClass("Errortext");
                $('#errortype').css("display", "none");
                //-
                $('#<%=busi_type.ClientID%>').removeClass("Errortext");
                $('#errorbusi_type').css("display", "none");
            }//tax_id 5
            else if (tax_id.GetText() == "") {
                tax_id.Focus();
                $('#<%=tax_id.ClientID%>').addClass("Errortext");
                $('#errortax_id').css("display", "block");
                //-
                $('#<%=code_com.ClientID%>').removeClass("Errortext");
                $('#errorcode_com').css("display", "none");
                //-
                $('#<%=name_com_th.ClientID%>').removeClass("Errortext");
                $('#errorname_com_th').css("display", "none");
                //-
                $('#<%=name_com_en.ClientID%>').removeClass("Errortext");
                $('#errorname_com_en').css("display", "none");
                //-
                $('#<%=name_com.ClientID%>').removeClass("Errortext");
                $('#errorname_com').css("display", "none");
                //-
                $('#<%=branch_office.ClientID%>').removeClass("Errortext");
                $('#errorbranch_office').css("display", "none");
                //-
                $('#<%=address_num.ClientID%>').removeClass("Errortext");
                $('#erroraddress_num').css("display", "none");
                //-
                $('#<%=address_dis.ClientID%>').removeClass("Errortext");
                $('#erroraddress_dis').css("display", "none");
                //-
                $('#<%=address_can.ClientID%>').removeClass("Errortext");
                $('#erroraddress_can').css("display", "none");
                //-
                $('#<%=address_cou.ClientID%>').removeClass("Errortext");
                $('#erroraddress_cou').css("display", "none");
                //-
                $('#<%=zip_code.ClientID%>').removeClass("Errortext");
                $('#errorzip_code').css("display", "none");
                //-
                $('#<%=tel_home.ClientID%>').removeClass("Errortext");
                $('#errortel_home').css("display", "none");
                //-
                $('#<%=tel_phone.ClientID%>').removeClass("Errortext");
                $('#errortel_phone').css("display", "none");
                //-
                $('#<%=email_1.ClientID%>').removeClass("Errortext");
                $('#erroremail_1').css("display", "none");
                //-
                $('#<%=email_1.ClientID%>').removeClass("Errortext");
                $('#erroremail_1_fomat').css("display", "none");
                //-
                $('#<%=type.ClientID%>').removeClass("Errortext");
                $('#errortype').css("display", "none");
                //-
                $('#<%=busi_type.ClientID%>').removeClass("Errortext");
                $('#errorbusi_type').css("display", "none");
            }//branch_office 6
            else if (branch_office.GetValue() == null) {
                branch_office.Focus();
                $('#<%=branch_office.ClientID%>').addClass("Errortext");
                $('#errorbranch_office').css("display", "block");
                //-
                $('#<%=code_com.ClientID%>').removeClass("Errortext");
                $('#errorcode_com').css("display", "none");
                //-
                $('#<%=name_com_th.ClientID%>').removeClass("Errortext");
                $('#errorname_com_th').css("display", "none");
                //-
                $('#<%=name_com_en.ClientID%>').removeClass("Errortext");
                $('#errorname_com_en').css("display", "none");
                //-
                $('#<%=name_com.ClientID%>').removeClass("Errortext");
                $('#errorname_com').css("display", "none");
                //-
                $('#<%=tax_id.ClientID%>').removeClass("Errortext");
                $('#errortax_id').css("display", "none");
                //-
                $('#<%=address_num.ClientID%>').removeClass("Errortext");
                $('#erroraddress_num').css("display", "none");
                //-
                $('#<%=address_dis.ClientID%>').removeClass("Errortext");
                $('#erroraddress_dis').css("display", "none");
                //-
                $('#<%=address_can.ClientID%>').removeClass("Errortext");
                $('#erroraddress_can').css("display", "none");
                //-
                $('#<%=address_cou.ClientID%>').removeClass("Errortext");
                $('#erroraddress_cou').css("display", "none");
                //-
                $('#<%=zip_code.ClientID%>').removeClass("Errortext");
                $('#errorzip_code').css("display", "none");
                //-
                $('#<%=tel_home.ClientID%>').removeClass("Errortext");
                $('#errortel_home').css("display", "none");
                //-
                $('#<%=tel_phone.ClientID%>').removeClass("Errortext");
                $('#errortel_phone').css("display", "none");
                //-
                $('#<%=email_1.ClientID%>').removeClass("Errortext");
                $('#erroremail_1').css("display", "none");
                //-
                $('#<%=email_1.ClientID%>').removeClass("Errortext");
                $('#erroremail_1_fomat').css("display", "none");
                //-
                $('#<%=type.ClientID%>').removeClass("Errortext");
                $('#errortype').css("display", "none");
                //-
                $('#<%=busi_type.ClientID%>').removeClass("Errortext");
                $('#errorbusi_type').css("display", "none");
            }//address_num 7
            else if (address_num.GetText() == "") {
                address_num.Focus();
                $('#<%=address_num.ClientID%>').addClass("Errortext");
                $('#erroraddress_num').css("display", "block");
                //-
                $('#<%=code_com.ClientID%>').removeClass("Errortext");
                $('#errorcode_com').css("display", "none");
                //-
                $('#<%=name_com_th.ClientID%>').removeClass("Errortext");
                $('#errorname_com_th').css("display", "none");
                //-
                $('#<%=name_com_en.ClientID%>').removeClass("Errortext");
                $('#errorname_com_en').css("display", "none");
                //-
                $('#<%=name_com.ClientID%>').removeClass("Errortext");
                $('#errorname_com').css("display", "none");
                //-
                $('#<%=tax_id.ClientID%>').removeClass("Errortext");
                $('#errortax_id').css("display", "none");
                //-
                $('#<%=branch_office.ClientID%>').removeClass("Errortext");
                $('#errorbranch_office').css("display", "none");
                //-
                $('#<%=address_dis.ClientID%>').removeClass("Errortext");
                $('#erroraddress_dis').css("display", "none");
                //-
                $('#<%=address_can.ClientID%>').removeClass("Errortext");
                $('#erroraddress_can').css("display", "none");
                //-
                $('#<%=address_cou.ClientID%>').removeClass("Errortext");
                $('#erroraddress_cou').css("display", "none");
                //-
                $('#<%=zip_code.ClientID%>').removeClass("Errortext");
                $('#errorzip_code').css("display", "none");
                //-
                $('#<%=tel_home.ClientID%>').removeClass("Errortext");
                $('#errortel_home').css("display", "none");
                //-
                $('#<%=tel_phone.ClientID%>').removeClass("Errortext");
                $('#errortel_phone').css("display", "none");
                //-
                $('#<%=email_1.ClientID%>').removeClass("Errortext");
                $('#erroremail_1').css("display", "none");
                //-
                $('#<%=email_1.ClientID%>').removeClass("Errortext");
                $('#erroremail_1_fomat').css("display", "none");
                //-
                $('#<%=type.ClientID%>').removeClass("Errortext");
                $('#errortype').css("display", "none");
                //-
                $('#<%=busi_type.ClientID%>').removeClass("Errortext");
                $('#errorbusi_type').css("display", "none");
            }//address_dis 8
            else if (address_dis.GetText() == "") {
                address_dis.Focus();
                $('#<%=address_dis.ClientID%>').addClass("Errortext");
                $('#erroraddress_dis').css("display", "block");
                //-
                $('#<%=code_com.ClientID%>').removeClass("Errortext");
                $('#errorcode_com').css("display", "none");
                //-
                $('#<%=name_com_th.ClientID%>').removeClass("Errortext");
                $('#errorname_com_th').css("display", "none");
                //-
                $('#<%=name_com_en.ClientID%>').removeClass("Errortext");
                $('#errorname_com_en').css("display", "none");
                //-
                $('#<%=name_com.ClientID%>').removeClass("Errortext");
                $('#errorname_com').css("display", "none");
                //-
                $('#<%=tax_id.ClientID%>').removeClass("Errortext");
                $('#errortax_id').css("display", "none");
                //-
                $('#<%=branch_office.ClientID%>').removeClass("Errortext");
                $('#errorbranch_office').css("display", "none");
                //-
                $('#<%=address_num.ClientID%>').removeClass("Errortext");
                $('#erroraddress_num').css("display", "none");
                //-
                $('#<%=address_can.ClientID%>').removeClass("Errortext");
                $('#erroraddress_can').css("display", "none");
                //-
                $('#<%=address_cou.ClientID%>').removeClass("Errortext");
                $('#erroraddress_cou').css("display", "none");
                //-
                $('#<%=zip_code.ClientID%>').removeClass("Errortext");
                $('#errorzip_code').css("display", "none");
                //-
                $('#<%=tel_home.ClientID%>').removeClass("Errortext");
                $('#errortel_home').css("display", "none");
                //-
                $('#<%=tel_phone.ClientID%>').removeClass("Errortext");
                $('#errortel_phone').css("display", "none");
                //-
                $('#<%=email_1.ClientID%>').removeClass("Errortext");
                $('#erroremail_1').css("display", "none");
                //-
                $('#<%=email_1.ClientID%>').removeClass("Errortext");
                $('#erroremail_1_fomat').css("display", "none");
                //-
                $('#<%=type.ClientID%>').removeClass("Errortext");
                $('#errortype').css("display", "none");
                //-
                $('#<%=busi_type.ClientID%>').removeClass("Errortext");
                $('#errorbusi_type').css("display", "none");
            }//address_can 9
            else if (address_can.GetText() == "") {
                address_can.Focus();
                $('#<%=address_can.ClientID%>').addClass("Errortext");
                $('#erroraddress_can').css("display", "block");
                //-
                $('#<%=code_com.ClientID%>').removeClass("Errortext");
                $('#errorcode_com').css("display", "none");
                //-
                $('#<%=name_com_th.ClientID%>').removeClass("Errortext");
                $('#errorname_com_th').css("display", "none");
                //-
                $('#<%=name_com_en.ClientID%>').removeClass("Errortext");
                $('#errorname_com_en').css("display", "none");
                //-
                $('#<%=name_com.ClientID%>').removeClass("Errortext");
                $('#errorname_com').css("display", "none");
                //-
                $('#<%=tax_id.ClientID%>').removeClass("Errortext");
                $('#errortax_id').css("display", "none");
                //-
                $('#<%=branch_office.ClientID%>').removeClass("Errortext");
                $('#errorbranch_office').css("display", "none");
                //-
                $('#<%=address_num.ClientID%>').removeClass("Errortext");
                $('#erroraddress_num').css("display", "none");
                //-
                $('#<%=address_dis.ClientID%>').removeClass("Errortext");
                $('#erroraddress_dis').css("display", "none");
                //-
                $('#<%=address_cou.ClientID%>').removeClass("Errortext");
                $('#erroraddress_cou').css("display", "none");
                //-
                $('#<%=zip_code.ClientID%>').removeClass("Errortext");
                $('#errorzip_code').css("display", "none");
                //-
                $('#<%=tel_home.ClientID%>').removeClass("Errortext");
                $('#errortel_home').css("display", "none");
                //-
                $('#<%=tel_phone.ClientID%>').removeClass("Errortext");
                $('#errortel_phone').css("display", "none");
                //-
                $('#<%=email_1.ClientID%>').removeClass("Errortext");
                $('#erroremail_1').css("display", "none");
                //-
                $('#<%=email_1.ClientID%>').removeClass("Errortext");
                $('#erroremail_1_fomat').css("display", "none");
                //-
                $('#<%=type.ClientID%>').removeClass("Errortext");
                $('#errortype').css("display", "none");
                //-
                $('#<%=busi_type.ClientID%>').removeClass("Errortext");
                $('#errorbusi_type').css("display", "none");
            }//address_cou 10
            else if (address_cou.GetText() == "") {
                address_cou.Focus();
                $('#<%=address_cou.ClientID%>').addClass("Errortext");
                $('#erroraddress_cou').css("display", "block");
                //-
                $('#<%=code_com.ClientID%>').removeClass("Errortext");
                $('#errorcode_com').css("display", "none");
                //-
                $('#<%=name_com_th.ClientID%>').removeClass("Errortext");
                $('#errorname_com_th').css("display", "none");
                //-
                $('#<%=name_com_en.ClientID%>').removeClass("Errortext");
                $('#errorname_com_en').css("display", "none");
                //-
                $('#<%=name_com.ClientID%>').removeClass("Errortext");
                $('#errorname_com').css("display", "none");
                //-
                $('#<%=tax_id.ClientID%>').removeClass("Errortext");
                $('#errortax_id').css("display", "none");
                //-
                $('#<%=branch_office.ClientID%>').removeClass("Errortext");
                $('#errorbranch_office').css("display", "none");
                //-
                $('#<%=address_num.ClientID%>').removeClass("Errortext");
                $('#erroraddress_num').css("display", "none");
                //-
                $('#<%=address_dis.ClientID%>').removeClass("Errortext");
                $('#erroraddress_dis').css("display", "none");
                //-
                $('#<%=address_can.ClientID%>').removeClass("Errortext");
                $('#erroraddress_can').css("display", "none");
                //-
                $('#<%=zip_code.ClientID%>').removeClass("Errortext");
                $('#errorzip_code').css("display", "none");
                //-
                $('#<%=tel_home.ClientID%>').removeClass("Errortext");
                $('#errortel_home').css("display", "none");
                //-
                $('#<%=tel_phone.ClientID%>').removeClass("Errortext");
                $('#errortel_phone').css("display", "none");
                //-
                $('#<%=email_1.ClientID%>').removeClass("Errortext");
                $('#erroremail_1').css("display", "none");
                //-
                $('#<%=email_1.ClientID%>').removeClass("Errortext");
                $('#erroremail_1_fomat').css("display", "none");
                //-
                $('#<%=type.ClientID%>').removeClass("Errortext");
                $('#errortype').css("display", "none");
                //-
                $('#<%=busi_type.ClientID%>').removeClass("Errortext");
                $('#errorbusi_type').css("display", "none");
            }//zip_code 11
            else if (zip_code.GetText() == "") {
                zip_code.Focus();
                $('#<%=zip_code.ClientID%>').addClass("Errortext");
                $('#errorzip_code').css("display", "block");
                //-
                $('#<%=code_com.ClientID%>').removeClass("Errortext");
                $('#errorcode_com').css("display", "none");
                //-
                $('#<%=name_com_th.ClientID%>').removeClass("Errortext");
                $('#errorname_com_th').css("display", "none");
                //-
                $('#<%=name_com_en.ClientID%>').removeClass("Errortext");
                $('#errorname_com_en').css("display", "none");
                //-
                $('#<%=name_com.ClientID%>').removeClass("Errortext");
                $('#errorname_com').css("display", "none");
                //-
                $('#<%=tax_id.ClientID%>').removeClass("Errortext");
                $('#errortax_id').css("display", "none");
                //-
                $('#<%=branch_office.ClientID%>').removeClass("Errortext");
                $('#errorbranch_office').css("display", "none");
                //-
                $('#<%=address_num.ClientID%>').removeClass("Errortext");
                $('#erroraddress_num').css("display", "none");
                //-
                $('#<%=address_dis.ClientID%>').removeClass("Errortext");
                $('#erroraddress_dis').css("display", "none");
                //-
                $('#<%=address_can.ClientID%>').removeClass("Errortext");
                $('#erroraddress_can').css("display", "none");
                //-
                $('#<%=address_cou.ClientID%>').removeClass("Errortext");
                $('#erroraddress_cou').css("display", "none");
                //-
                $('#<%=tel_home.ClientID%>').removeClass("Errortext");
                $('#errortel_home').css("display", "none");
                //-
                $('#<%=tel_phone.ClientID%>').removeClass("Errortext");
                $('#errortel_phone').css("display", "none");
                //-
                $('#<%=email_1.ClientID%>').removeClass("Errortext");
                $('#erroremail_1').css("display", "none");
                //-
                $('#<%=email_1.ClientID%>').removeClass("Errortext");
                $('#erroremail_1_fomat').css("display", "none");
                //-
                $('#<%=type.ClientID%>').removeClass("Errortext");
                $('#errortype').css("display", "none");
                //-
                $('#<%=busi_type.ClientID%>').removeClass("Errortext");
                $('#errorbusi_type').css("display", "none");
            }//tel_home 12
            else if (tel_home.GetText() == "") {
                tel_home.Focus();
                $('#<%=tel_home.ClientID%>').addClass("Errortext");
                $('#errortel_home').css("display", "block");
                //-
                $('#<%=code_com.ClientID%>').removeClass("Errortext");
                $('#errorcode_com').css("display", "none");
                //-
                $('#<%=name_com_en.ClientID%>').removeClass("Errortext");
                $('#errorname_com_en').css("display", "none");
                //-
                $('#<%=name_com.ClientID%>').removeClass("Errortext");
                $('#errorname_com').css("display", "none");
                //-
                $('#<%=tax_id.ClientID%>').removeClass("Errortext");
                $('#errortax_id').css("display", "none");
                //-
                $('#<%=branch_office.ClientID%>').removeClass("Errortext");
                $('#errorbranch_office').css("display", "none");
                //-
                $('#<%=address_num.ClientID%>').removeClass("Errortext");
                $('#erroraddress_num').css("display", "none");
                //-
                $('#<%=address_dis.ClientID%>').removeClass("Errortext");
                $('#erroraddress_dis').css("display", "none");
                //-
                $('#<%=address_can.ClientID%>').removeClass("Errortext");
                $('#erroraddress_can').css("display", "none");
                //-
                $('#<%=address_cou.ClientID%>').removeClass("Errortext");
                $('#erroraddress_cou').css("display", "none");
                //-
                $('#<%=zip_code.ClientID%>').removeClass("Errortext");
                $('#errorzip_code').css("display", "none");
                //-
                $('#<%=tel_phone.ClientID%>').removeClass("Errortext");
                $('#errortel_phone').css("display", "none");
                //-
                $('#<%=email_1.ClientID%>').removeClass("Errortext");
                $('#erroremail_1').css("display", "none");
                //-
                $('#<%=email_1.ClientID%>').removeClass("Errortext");
                $('#erroremail_1_fomat').css("display", "none");
                //-
                $('#<%=type.ClientID%>').removeClass("Errortext");
                $('#errortype').css("display", "none");
                //-
                $('#<%=busi_type.ClientID%>').removeClass("Errortext");
                $('#errorbusi_type').css("display", "none");
            }//tel_phone 13
            else if (tel_phone.GetText() == "") {
                tel_phone.Focus();
                $('#<%=tel_phone.ClientID%>').addClass("Errortext");
                $('#errortel_phone').css("display", "block");
                //-
                $('#<%=code_com.ClientID%>').removeClass("Errortext");
                $('#errorcode_com').css("display", "none");
                //-
                $('#<%=name_com_th.ClientID%>').removeClass("Errortext");
                $('#errorname_com_th').css("display", "none");
                //-
                $('#<%=name_com.ClientID%>').removeClass("Errortext");
                $('#errorname_com').css("display", "none");
                //-
                $('#<%=tax_id.ClientID%>').removeClass("Errortext");
                $('#errortax_id').css("display", "none");
                //-
                $('#<%=branch_office.ClientID%>').removeClass("Errortext");
                $('#errorbranch_office').css("display", "none");
                //-
                $('#<%=address_num.ClientID%>').removeClass("Errortext");
                $('#erroraddress_num').css("display", "none");
                //-
                $('#<%=address_dis.ClientID%>').removeClass("Errortext");
                $('#erroraddress_dis').css("display", "none");
                //-
                $('#<%=address_can.ClientID%>').removeClass("Errortext");
                $('#erroraddress_can').css("display", "none");
                //-
                $('#<%=address_cou.ClientID%>').removeClass("Errortext");
                $('#erroraddress_cou').css("display", "none");
                //-
                $('#<%=zip_code.ClientID%>').removeClass("Errortext");
                $('#errorzip_code').css("display", "none");
                //-
                $('#<%=tel_home.ClientID%>').removeClass("Errortext");
                $('#errortel_home').css("display", "none");
                //-
                $('#<%=email_1.ClientID%>').removeClass("Errortext");
                $('#erroremail_1').css("display", "none");
                //-
                $('#<%=email_1.ClientID%>').removeClass("Errortext");
                $('#erroremail_1_fomat').css("display", "none");
                //-
                $('#<%=type.ClientID%>').removeClass("Errortext");
                $('#errortype').css("display", "none");
                //-
                $('#<%=busi_type.ClientID%>').removeClass("Errortext");
                $('#errorbusi_type').css("display", "none");
            }//email_1 15
            else if (email_1.GetText() == "") {
                email_1.Focus();
                $('#<%=email_1.ClientID%>').addClass("Errortext");
                $('#erroremail_1').css("display", "block");
                $('#<%=email_1.ClientID%>').removeClass("Errortext");
                $('#erroremail_1_fomat').css("display", "none");
                //-
                $('#<%=code_com.ClientID%>').removeClass("Errortext");
                $('#errorcode_com').css("display", "none");
                //-
                $('#<%=name_com_th.ClientID%>').removeClass("Errortext");
                $('#errorname_com_th').css("display", "none");
                //-
                $('#<%=name_com_en.ClientID%>').removeClass("Errortext");
                $('#errorname_com_en').css("display", "none");
                //-
                $('#<%=name_com.ClientID%>').removeClass("Errortext");
                $('#errorname_com').css("display", "none");
                //-
                $('#<%=tax_id.ClientID%>').removeClass("Errortext");
                $('#errortax_id').css("display", "none");
                //-
                $('#<%=branch_office.ClientID%>').removeClass("Errortext");
                $('#errorbranch_office').css("display", "none");
                //-
                $('#<%=address_num.ClientID%>').removeClass("Errortext");
                $('#erroraddress_num').css("display", "none");
                //-
                $('#<%=address_dis.ClientID%>').removeClass("Errortext");
                $('#erroraddress_dis').css("display", "none");
                //-
                $('#<%=address_can.ClientID%>').removeClass("Errortext");
                $('#erroraddress_can').css("display", "none");
                //-
                $('#<%=address_cou.ClientID%>').removeClass("Errortext");
                $('#erroraddress_cou').css("display", "none");
                //-
                $('#<%=zip_code.ClientID%>').removeClass("Errortext");
                $('#errorzip_code').css("display", "none");
                //-
                $('#<%=tel_home.ClientID%>').removeClass("Errortext");
                $('#errortel_home').css("display", "none");
                //-
                $('#<%=tel_phone.ClientID%>').removeClass("Errortext");
                $('#errortel_phone').css("display", "none");
                //-
                $('#<%=type.ClientID%>').removeClass("Errortext");
                $('#errortype').css("display", "none");
                //-
                $('#<%=busi_type.ClientID%>').removeClass("Errortext");
                $('#errorbusi_type').css("display", "none");
            }//validateEmail email_1
            else if (!validateEmail(email_1.GetText())) {
                email_1.Focus();
                $('#<%=email_1.ClientID%>').addClass("Errortext");
                $('#erroremail_1_fomat').css("display", "block");
                //-
                $('#<%=email_1.ClientID%>').removeClass("Errortext");
                $('#erroremail_1').css("display", "none");
                return false;
            }//type 18
            else if (type.GetValue() == null) {
                type.Focus();
                $('#<%=type.ClientID%>').addClass("Errortext");
                $('#errortype').css("display", "block");
                //-
                $('#<%=code_com.ClientID%>').removeClass("Errortext");
                $('#errorcode_com').css("display", "none");
                //-
                $('#<%=name_com_th.ClientID%>').removeClass("Errortext");
                $('#errorname_com_th').css("display", "none");
                //-
                $('#<%=name_com_en.ClientID%>').removeClass("Errortext");
                $('#errorname_com_en').css("display", "none");
                //-
                $('#<%=name_com.ClientID%>').removeClass("Errortext");
                $('#errorname_com').css("display", "none");
                //-
                $('#<%=tax_id.ClientID%>').removeClass("Errortext");
                $('#errortax_id').css("display", "none");
                //-
                $('#<%=branch_office.ClientID%>').removeClass("Errortext");
                $('#errorbranch_office').css("display", "none");
                //-
                $('#<%=address_num.ClientID%>').removeClass("Errortext");
                $('#erroraddress_num').css("display", "none");
                //-
                $('#<%=address_dis.ClientID%>').removeClass("Errortext");
                $('#erroraddress_dis').css("display", "none");
                //-
                $('#<%=address_can.ClientID%>').removeClass("Errortext");
                $('#erroraddress_can').css("display", "none");
                //-
                $('#<%=address_cou.ClientID%>').removeClass("Errortext");
                $('#erroraddress_cou').css("display", "none");
                //-
                $('#<%=zip_code.ClientID%>').removeClass("Errortext");
                $('#errorzip_code').css("display", "none");
                //-
                $('#<%=tel_home.ClientID%>').removeClass("Errortext");
                $('#errortel_home').css("display", "none");
                //-
                $('#<%=tel_phone.ClientID%>').removeClass("Errortext");
                $('#errortel_phone').css("display", "none");
                //-
                $('#<%=email_1.ClientID%>').removeClass("Errortext");
                $('#erroremail_1').css("display", "none");
                //-
                $('#<%=email_1.ClientID%>').removeClass("Errortext");
                $('#erroremail_1_fomat').css("display", "none");
                //-
                $('#<%=busi_type.ClientID%>').removeClass("Errortext");
                $('#errorbusi_type').css("display", "none");
            }//busi_type 17
            else if (busi_type.GetValue() == null) {
                busi_type.Focus();
                $('#<%=busi_type.ClientID%>').addClass("Errortext");
                $('#errorbusi_type').css("display", "block");
                //-
                $('#<%=code_com.ClientID%>').removeClass("Errortext");
                $('#errorcode_com').css("display", "none");
                //-
                $('#<%=name_com_th.ClientID%>').removeClass("Errortext");
                $('#errorname_com_th').css("display", "none");
                //-
                $('#<%=name_com_en.ClientID%>').removeClass("Errortext");
                $('#errorname_com_en').css("display", "none");
                //-
                $('#<%=name_com.ClientID%>').removeClass("Errortext");
                $('#errorname_com').css("display", "none");
                //-
                $('#<%=tax_id.ClientID%>').removeClass("Errortext");
                $('#errortax_id').css("display", "none");
                //-
                $('#<%=branch_office.ClientID%>').removeClass("Errortext");
                $('#errorbranch_office').css("display", "none");
                //-
                $('#<%=address_num.ClientID%>').removeClass("Errortext");
                $('#erroraddress_num').css("display", "none");
                //-
                $('#<%=address_dis.ClientID%>').removeClass("Errortext");
                $('#erroraddress_dis').css("display", "none");
                //-
                $('#<%=address_can.ClientID%>').removeClass("Errortext");
                $('#erroraddress_can').css("display", "none");
                //-
                $('#<%=address_cou.ClientID%>').removeClass("Errortext");
                $('#erroraddress_cou').css("display", "none");
                //-
                $('#<%=zip_code.ClientID%>').removeClass("Errortext");
                $('#errorzip_code').css("display", "none");
                //-
                $('#<%=tel_home.ClientID%>').removeClass("Errortext");
                $('#errortel_home').css("display", "none");
                //-
                $('#<%=tel_phone.ClientID%>').removeClass("Errortext");
                $('#errortel_phone').css("display", "none");
                //-
                $('#<%=email_1.ClientID%>').removeClass("Errortext");
                $('#erroremail_1').css("display", "none");
                //-
                $('#<%=email_1.ClientID%>').removeClass("Errortext");
                $('#erroremail_1_fomat').css("display", "none");
                //-
                $('#<%=type.ClientID%>').removeClass("Errortext");
                $('#errortype').css("display", "none");
            } else {
                $('#<%=code_com.ClientID%>').removeClass("Errortext");
                $('#errorcode_com').css("display", "none");
                //-
                $('#<%=name_com_th.ClientID%>').removeClass("Errortext");
                $('#errorname_com_th').css("display", "none");
                //-
                $('#<%=name_com_en.ClientID%>').removeClass("Errortext");
                $('#errorname_com_en').css("display", "none");
                //-
                $('#<%=name_com.ClientID%>').removeClass("Errortext");
                $('#errorname_com').css("display", "none");
                //-
                $('#<%=tax_id.ClientID%>').removeClass("Errortext");
                $('#errortax_id').css("display", "none");
                //-
                $('#<%=branch_office.ClientID%>').removeClass("Errortext");
                $('#errorbranch_office').css("display", "none");
                //-
                $('#<%=address_num.ClientID%>').removeClass("Errortext");
                $('#erroraddress_num').css("display", "none");
                //-
                $('#<%=address_dis.ClientID%>').removeClass("Errortext");
                $('#erroraddress_dis').css("display", "none");
                //-
                $('#<%=address_can.ClientID%>').removeClass("Errortext");
                $('#erroraddress_can').css("display", "none");
                //-
                $('#<%=address_cou.ClientID%>').removeClass("Errortext");
                $('#erroraddress_cou').css("display", "none");
                //-
                $('#<%=zip_code.ClientID%>').removeClass("Errortext");
                $('#errorzip_code').css("display", "none");
                //-
                $('#<%=tel_home.ClientID%>').removeClass("Errortext");
                $('#errortel_home').css("display", "none");
                //-
                $('#<%=tel_phone.ClientID%>').removeClass("Errortext");
                $('#errortel_phone').css("display", "none");
                //-
                $('#<%=email_1.ClientID%>').removeClass("Errortext");
                $('#erroremail_1').css("display", "none");
                //-
                $('#<%=email_1.ClientID%>').removeClass("Errortext");
                $('#erroremail_1_fomat').css("display", "none");
                //-
                $('#<%=type.ClientID%>').removeClass("Errortext");
                $('#errortype').css("display", "none");
                //-
                $('#<%=busi_type.ClientID%>').removeClass("Errortext");
                $('#errorbusi_type').css("display", "none");
                                
                callback_add_com.PerformCallback('save');
            }
}
    </script>

    <dx:ASPxCallbackPanel ID="callback_add_com" ClientInstanceName="callback_add_com" runat="server" Width="100%" Theme="Moderno">
        <PanelCollection>
            <dx:PanelContent>
                <dx:ASPxFormLayout ID="master_add" ClientInstanceName="master_add" runat="server" RequiredMarkDisplayMode="Auto" Styles-LayoutGroupBox-Caption-CssClass="layoutGroupBoxCaption"
                    AlignItemCaptionsInAllGroups="true" Width="100%" SettingsItemCaptions-VerticalAlign="NoSet" Paddings-PaddingBottom="20px" Styles-LayoutItem-CaptionCell-Paddings-PaddingTop="5px" Styles-LayoutItem-Paddings-PaddingTop="2px">
                    <SettingsAdaptivity AdaptivityMode="SingleColumnWindowLimit" SwitchToSingleColumnAtWindowInnerWidth="800" />
                    <Items>
                        <dx:LayoutGroup Caption="MASTER COMPANY" AlignItemCaptions="true" Name="master_company_add" GroupBoxDecoration="HeadingLine" SettingsItemCaptions-HorizontalAlign="Right" ColCount="2" Width="100%">
                            <GroupBoxStyle>
                                <Caption Font-Bold="true" Font-Size="16" />
                            </GroupBoxStyle>
                            <Items>
                                <dx:LayoutItem Caption="Logo :" Name="logo" RequiredMarkDisplayMode="Hidden" CaptionSettings-VerticalAlign="Top">
                                    <LayoutItemNestedControlCollection>
                                        <dx:LayoutItemNestedControlContainer>
                                            <dx:ASPxUploadControl ID="Upload_logo" ClientInstanceName="Upload_logo" runat="server" UploadMode="Auto" ShowUploadButton="True" Theme="Moderno" Width="100%">
                                                <AdvancedModeSettings EnableMultiSelect="True" EnableFileList="True" EnableDragAndDrop="True" />
                                                <ValidationSettings MaxFileSize="4194304" AllowedFileExtensions=".jpg,.jpeg,.gif,.png">
                                                </ValidationSettings>
                                                <ClientSideEvents FileUploadComplete="onFileUploadComplete" />
                                            </dx:ASPxUploadControl>
                                        </dx:LayoutItemNestedControlContainer>
                                    </LayoutItemNestedControlCollection>
                                </dx:LayoutItem>

                                <dx:LayoutItem Caption="" Name="Show_logo" RequiredMarkDisplayMode="Hidden">
                                    <LayoutItemNestedControlCollection>
                                        <dx:LayoutItemNestedControlContainer>
                                            <div style="text-align: right; padding-right: 100px;">
                                                <dx:ASPxImage ID="ShowImage" ClientInstanceName="ShowImage" runat="server" ShowLoadingImage="true" Width="100px" Border-BorderColor="#808080"></dx:ASPxImage>
                                            </div>
                                        </dx:LayoutItemNestedControlContainer>
                                    </LayoutItemNestedControlCollection>
                                </dx:LayoutItem>

                                <dx:LayoutItem Caption="CODE บริษัท :" Name="code_company">
                                    <LayoutItemNestedControlCollection>
                                        <dx:LayoutItemNestedControlContainer>
                                            <dx:ASPxTextBox ID="code_com" ClientInstanceName="code_com" runat="server" NullText="" Width="100%" Theme="Moderno">
                                                <ValidationSettings Display="Dynamic">
                                                </ValidationSettings>
                                            </dx:ASPxTextBox>
                                            <%------------------------------------ส่วน Error---------------------------------------%>
                                            <div id="errorcode_com" style="width: 100%; padding-left: 2px; display: none; margin-top: 3px;">
                                                <dx:ASPxLabel CssClass="ptext" Height="10" Font-Size="9" ID="lberror_name" ClientInstanceName="lberror_name" runat="server" Text="กรุณากรอก CODE บริษัท !!!" ForeColor="Red" Font-Bold="true"></dx:ASPxLabel>
                                            </div>
                                        </dx:LayoutItemNestedControlContainer>
                                    </LayoutItemNestedControlCollection>
                                </dx:LayoutItem>

                                <dx:LayoutItem Caption="ชื่อบริษัท (ภาษาไทย) :" Name="name_company_th" RequiredMarkDisplayMode="Hidden">
                                    <LayoutItemNestedControlCollection>
                                        <dx:LayoutItemNestedControlContainer>
                                            <dx:ASPxTextBox ID="name_com_th" ClientInstanceName="name_com_th" runat="server" Width="100%" Theme="Moderno">
                                                <ValidationSettings Display="Dynamic" />
                                            </dx:ASPxTextBox>
                                            <%------------------------------------ส่วน Error---------------------------------------%>
                                            <div id="errorname_com_th" style="width: 100%; padding-left: 2px; display: none; margin-top: 3px;">
                                                <dx:ASPxLabel CssClass="ptext" Height="10" Font-Size="9" ID="ASPxLabel1" ClientInstanceName="lberror_name" runat="server" Text="กรุณากรอกชื่อบริษัท (ภาษาไทย) !!!" ForeColor="Red" Font-Bold="true"></dx:ASPxLabel>
                                            </div>
                                        </dx:LayoutItemNestedControlContainer>
                                    </LayoutItemNestedControlCollection>
                                </dx:LayoutItem>

                                <dx:LayoutItem Caption="ชื่อบริษัท (ภาษาอังกฤษ) :" Name="name_company_en">
                                    <LayoutItemNestedControlCollection>
                                        <dx:LayoutItemNestedControlContainer>
                                            <dx:ASPxTextBox ID="name_com_en" ClientInstanceName="name_com_en" runat="server" Width="100%" Theme="Moderno">
                                                <ValidationSettings Display="Dynamic" />
                                            </dx:ASPxTextBox>
                                            <%------------------------------------ส่วน Error---------------------------------------%>
                                            <div id="errorname_com_en" style="width: 100%; padding-left: 2px; display: none; margin-top: 3px;">
                                                <dx:ASPxLabel CssClass="ptext" Height="10" Font-Size="9" ID="ASPxLabel2" ClientInstanceName="lberror_name" runat="server" Text="กรุณากรอกชื่อบริษัท (ภาษาอังกฤษ) !!!" ForeColor="Red" Font-Bold="true"></dx:ASPxLabel>
                                            </div>
                                        </dx:LayoutItemNestedControlContainer>
                                    </LayoutItemNestedControlCollection>
                                </dx:LayoutItem>

                                <dx:LayoutItem Caption="ชื่อประกอบการ :" Name="name_company">
                                    <LayoutItemNestedControlCollection>
                                        <dx:LayoutItemNestedControlContainer>
                                            <dx:ASPxTextBox ID="name_com" ClientInstanceName="name_com" runat="server" Width="100%" Theme="Moderno">
                                                <ValidationSettings Display="Dynamic"/>
                                            </dx:ASPxTextBox>
                                            <%------------------------------------ส่วน Error---------------------------------------%>
                                            <div id="errorname_com" style="width: 100%; padding-left: 2px; display: none; margin-top: 3px;">
                                                <dx:ASPxLabel CssClass="ptext" Height="10" Font-Size="9" ID="ASPxLabel3" ClientInstanceName="lberror_name" runat="server" Text="กรุณากรอกชื่อประกอบการ !!!" ForeColor="Red" Font-Bold="true"></dx:ASPxLabel>
                                            </div>
                                        </dx:LayoutItemNestedControlContainer>
                                    </LayoutItemNestedControlCollection>
                                </dx:LayoutItem>

                                <dx:LayoutItem Caption="ID./TAX ID. :" Name="id_or_taxid">
                                    <LayoutItemNestedControlCollection>
                                        <dx:LayoutItemNestedControlContainer>
                                            <dx:ASPxTextBox ID="tax_id" ClientInstanceName="tax_id" runat="server" Width="100%" Theme="Moderno">
                                                <ValidationSettings Display="Dynamic"/>
                                            </dx:ASPxTextBox>
                                            <%------------------------------------ส่วน Error---------------------------------------%>
                                            <div id="errortax_id" style="width: 100%; padding-left: 2px; display: none; margin-top: 3px;">
                                                <dx:ASPxLabel CssClass="ptext" Height="10" Font-Size="9" ID="ASPxLabel4" ClientInstanceName="lberror_name" runat="server" Text="กรุณากรอก ID./TAX ID. !!!" ForeColor="Red" Font-Bold="true"></dx:ASPxLabel>
                                            </div>
                                        </dx:LayoutItemNestedControlContainer>
                                    </LayoutItemNestedControlCollection>
                                </dx:LayoutItem>

                                <dx:LayoutItem Caption="สำนักงานใหญ่/สาขา :" Name="office_or_branch" RequiredMarkDisplayMode="Hidden">
                                    <LayoutItemNestedControlCollection>
                                        <dx:LayoutItemNestedControlContainer>
                                            <dx:ASPxRadioButtonList ID="branch_office" ClientInstanceName="branch_office" runat="server" RepeatDirection="Horizontal" Theme="Moderno" Width="100%" Border-BorderStyle="None" FocusedStyle-Border-BorderStyle="None" EnableFocusedStyle="false" Font-Size="14px">
                                                <Items>
                                                    <dx:ListEditItem Selected="true" Text="สำนักงานใหญ่" Value="0"/>
                                                    <dx:ListEditItem Text="สาขา" Value="1"/>
                                                </Items>
                                                <ClientSideEvents SelectedIndexChanged="function(s,e){
                                                    branch_text();
                                                }" />
                                            </dx:ASPxRadioButtonList>
                                            <div id="Tbranch_n" style="display:none;">
                                            <dx:ASPxTextBox  ID="branch_n" ClientInstanceName="branch_n" runat="server" NullText="ระบุชื่อสาขาของท่าน" Width="100%" Theme="Moderno">
                                            </dx:ASPxTextBox>
                                            </div>
                                            <%------------------------------------ส่วน Error---------------------------------------%>
                                            <div id="errorbranch_office" style="width: 100%; padding-left: 2px; display: none; margin-top: 3px;">
                                                <dx:ASPxLabel CssClass="ptext" Height="10" Font-Size="9" ID="ASPxLabel5" ClientInstanceName="lberror_name" runat="server" Text="กรุณากรอกชื่อสำนักงานใหญ่/สาขา !!!" ForeColor="Red" Font-Bold="true"></dx:ASPxLabel>
                                            </div>
                                        </dx:LayoutItemNestedControlContainer>
                                    </LayoutItemNestedControlCollection>
                                </dx:LayoutItem>

                                <dx:LayoutItem Caption="ที่อยู่เลขที่ :" Name="address_number">
                                    <LayoutItemNestedControlCollection>
                                        <dx:LayoutItemNestedControlContainer>
                                            <dx:ASPxTextBox ID="address_num" ClientInstanceName="address_num" runat="server" Width="100%" Theme="Moderno">
                                                <ValidationSettings Display="Dynamic"/>
                                            </dx:ASPxTextBox>
                                            <%------------------------------------ส่วน Error---------------------------------------%>
                                            <div id="erroraddress_num" style="width: 100%; padding-left: 2px; display: none; margin-top: 3px;">
                                                <dx:ASPxLabel CssClass="ptext" Height="10" Font-Size="9" ID="ASPxLabel6" ClientInstanceName="lberror_name" runat="server" Text="กรุณากรอกที่อยู่เลขที่ !!!" ForeColor="Red" Font-Bold="true"></dx:ASPxLabel>
                                            </div>
                                        </dx:LayoutItemNestedControlContainer>
                                    </LayoutItemNestedControlCollection>
                                </dx:LayoutItem>

                                <dx:LayoutItem Caption="ตำบล/แขวง :" Name="address_district">
                                    <LayoutItemNestedControlCollection>
                                        <dx:LayoutItemNestedControlContainer>
                                            <dx:ASPxTextBox ID="address_dis" ClientInstanceName="address_dis" runat="server" Width="100%" Theme="Moderno">
                                                <ValidationSettings Display="Dynamic"/>
                                            </dx:ASPxTextBox>
                                            <%------------------------------------ส่วน Error---------------------------------------%>
                                            <div id="erroraddress_dis" style="width: 100%; padding-left: 2px; display: none; margin-top: 3px;">
                                                <dx:ASPxLabel CssClass="ptext" Height="10" Font-Size="9" ID="ASPxLabel7" ClientInstanceName="lberror_name" runat="server" Text="กรุณากรอกตำบล/แขวง !!!" ForeColor="Red" Font-Bold="true"></dx:ASPxLabel>
                                            </div>
                                        </dx:LayoutItemNestedControlContainer>
                                    </LayoutItemNestedControlCollection>
                                </dx:LayoutItem>

                                <dx:LayoutItem Caption="อำเภอ/เขต :" Name="address_canton">
                                    <LayoutItemNestedControlCollection>
                                        <dx:LayoutItemNestedControlContainer>
                                            <dx:ASPxTextBox ID="address_can" ClientInstanceName="address_can" runat="server" Width="100%" Theme="Moderno">
                                                <ValidationSettings Display="Dynamic"/>
                                            </dx:ASPxTextBox>
                                            <%------------------------------------ส่วน Error---------------------------------------%>
                                            <div id="erroraddress_can" style="width: 100%; padding-left: 2px; display: none; margin-top: 3px;">
                                                <dx:ASPxLabel CssClass="ptext" Height="10" Font-Size="9" ID="ASPxLabel8" ClientInstanceName="lberror_name" runat="server" Text="กรุณากรอกอำเภอ/เขต !!!" ForeColor="Red" Font-Bold="true"></dx:ASPxLabel>
                                            </div>
                                        </dx:LayoutItemNestedControlContainer>
                                    </LayoutItemNestedControlCollection>
                                </dx:LayoutItem>

                                <dx:LayoutItem Caption="จังหวัด :" Name="address_county">
                                    <LayoutItemNestedControlCollection>
                                        <dx:LayoutItemNestedControlContainer>
                                            <dx:ASPxTextBox ID="address_cou" ClientInstanceName="address_cou" runat="server" Width="100%" Theme="Moderno">
                                                <ValidationSettings Display="Dynamic"/>
                                            </dx:ASPxTextBox>
                                            <%------------------------------------ส่วน Error---------------------------------------%>
                                            <div id="erroraddress_cou" style="width: 100%; padding-left: 2px; display: none; margin-top: 3px;">
                                                <dx:ASPxLabel CssClass="ptext" Height="10" Font-Size="9" ID="ASPxLabel9" ClientInstanceName="lberror_name" runat="server" Text="กรุณากรอกจังหวัด !!!" ForeColor="Red" Font-Bold="true"></dx:ASPxLabel>
                                            </div>
                                        </dx:LayoutItemNestedControlContainer>
                                    </LayoutItemNestedControlCollection>
                                </dx:LayoutItem>

                                <dx:LayoutItem Caption="รหัสไปรษณีย์ :" Name="address_zip_code">
                                    <LayoutItemNestedControlCollection>
                                        <dx:LayoutItemNestedControlContainer>
                                            <dx:ASPxTextBox ID="zip_code" ClientInstanceName="zip_code" runat="server" Width="100%" Theme="Moderno">
                                                <MaskSettings Mask="00000" IncludeLiterals="None" />
                                                <ValidationSettings Display="Dynamic" ErrorDisplayMode="None" ErrorFrameStyle-Border-BorderStyle="None"/>
                                            </dx:ASPxTextBox>
                                            <%------------------------------------ส่วน Error---------------------------------------%>
                                            <div id="errorzip_code" style="width: 100%; padding-left: 2px; display: none; margin-top: 3px;">
                                                <dx:ASPxLabel CssClass="ptext" Height="10" Font-Size="9" ID="ASPxLabel10" ClientInstanceName="lberror_name" runat="server" Text="กรุณากรอกรหัสไปรษณีย์ !!!" ForeColor="Red" Font-Bold="true"></dx:ASPxLabel>
                                            </div>
                                        </dx:LayoutItemNestedControlContainer>
                                    </LayoutItemNestedControlCollection>
                                </dx:LayoutItem>

                                <dx:LayoutItem Caption="โทรศัพท์บ้าน :" Name="home_phone">
                                    <LayoutItemNestedControlCollection>
                                        <dx:LayoutItemNestedControlContainer>
                                            <dx:ASPxTextBox ID="tel_home" ClientInstanceName="tel_home" runat="server" Width="100%" Theme="Moderno">
                                                <MaskSettings Mask="0-0000-0000" IncludeLiterals="None" />
                                                <ValidationSettings Display="Dynamic" ErrorDisplayMode="None" ErrorFrameStyle-Border-BorderStyle="None"/>
                                            </dx:ASPxTextBox>
                                            <%------------------------------------ส่วน Error---------------------------------------%>
                                            <div id="errortel_home" style="width: 100%; padding-left: 2px; display: none; margin-top: 3px;">
                                                <dx:ASPxLabel CssClass="ptext" Height="10" Font-Size="9" ID="ASPxLabel11" ClientInstanceName="lberror_name" runat="server" Text="กรุณากรอกโทรศัพท์บ้าน !!!" ForeColor="Red" Font-Bold="true"></dx:ASPxLabel>
                                            </div>
                                        </dx:LayoutItemNestedControlContainer>
                                    </LayoutItemNestedControlCollection>
                                </dx:LayoutItem>

                                <dx:LayoutItem Caption="โทรศัพท์เคลื่อนที่ :" Name="cell_phone">
                                    <LayoutItemNestedControlCollection>
                                        <dx:LayoutItemNestedControlContainer>
                                            <dx:ASPxTextBox ID="tel_phone" ClientInstanceName="tel_phone" runat="server" Width="100%" Theme="Moderno">
                                                <MaskSettings Mask="00-0000-0000" IncludeLiterals="None" />
                                                <ValidationSettings Display="Dynamic" ErrorDisplayMode="None" ErrorFrameStyle-Border-BorderStyle="None"/>
                                            </dx:ASPxTextBox>
                                            <%------------------------------------ส่วน Error---------------------------------------%>
                                            <div id="errortel_phone" style="width: 100%; padding-left: 2px; display: none; margin-top: 3px;">
                                                <dx:ASPxLabel CssClass="ptext" Height="10" Font-Size="9" ID="ASPxLabel12" ClientInstanceName="lberror_name" runat="server" Text="กรุณากรอกโทรศัพท์เคลื่อนที่ !!!" ForeColor="Red" Font-Bold="true"></dx:ASPxLabel>
                                            </div>
                                        </dx:LayoutItemNestedControlContainer>
                                    </LayoutItemNestedControlCollection>
                                </dx:LayoutItem>

                                <dx:LayoutItem Caption="โทรศัพท์สาร :" Name="phone_message">
                                    <LayoutItemNestedControlCollection>
                                        <dx:LayoutItemNestedControlContainer>
                                            <dx:ASPxTextBox ID="tel_message" ClientInstanceName="tel_message" runat="server" Width="100%" Theme="Moderno">
                                                <MaskSettings Mask="0-0000-0000" IncludeLiterals="None"/>
                                                <ValidationSettings Display="Dynamic" ErrorDisplayMode="None" ErrorFrameStyle-Border-BorderStyle="None"/>
                                            </dx:ASPxTextBox>
                                        </dx:LayoutItemNestedControlContainer>
                                    </LayoutItemNestedControlCollection>
                                </dx:LayoutItem>

                                <dx:LayoutItem Caption="E-mail :" Name="email_main">
                                    <LayoutItemNestedControlCollection>
                                        <dx:LayoutItemNestedControlContainer>
                                            <dx:ASPxTextBox ID="email_1" ClientInstanceName="email_1" NullText="example1@email.com" runat="server" Width="100%" Theme="Moderno">
                                                <ValidationSettings Display="Dynamic" />
                                            </dx:ASPxTextBox>
                                            <%------------------------------------ส่วน Error---------------------------------------%>
                                            <div id="erroremail_1" style="width: 100%; padding-left: 2px; display: none; margin-top: 3px;">
                                                <dx:ASPxLabel CssClass="ptext" Height="10" Font-Size="9" ID="ASPxLabel14" ClientInstanceName="lberror_name" runat="server" Text="กรุณากรอก E-mail !!!" ForeColor="Red" Font-Bold="true"></dx:ASPxLabel>
                                            </div>
                                            <div id="erroremail_1_fomat" style="width: 100%; padding-left: 2px; display: none; margin-top: 3px;">
                                                <dx:ASPxLabel CssClass="ptext" Height="10" Font-Size="9" ID="ASPxLabel13" ClientInstanceName="lberror_name" runat="server" Text="กรุณากรอก E-mail ให้ถูกต้อง!!!" ForeColor="Red" Font-Bold="true"></dx:ASPxLabel>
                                            </div>
                                        </dx:LayoutItemNestedControlContainer>
                                    </LayoutItemNestedControlCollection>
                                </dx:LayoutItem>

                                <dx:LayoutItem Caption="E-mail (สำรอง) :" Name="email_reserve">
                                    <LayoutItemNestedControlCollection>
                                        <dx:LayoutItemNestedControlContainer>
                                            <dx:ASPxTextBox ID="email_2" ClientInstanceName="email_2" NullText="example2@email.com" runat="server" Width="100%" Theme="Moderno">
                                                <ValidationSettings Display="Dynamic" />
                                            </dx:ASPxTextBox>
                                            <%------------------------------------ส่วน Error---------------------------------------%>
                                            <div id="erroremail_2_fomat" style="width: 100%; padding-left: 2px; display: none; margin-top: 3px;">
                                                <dx:ASPxLabel CssClass="ptext" Height="10" Font-Size="9" ID="ASPxLabel18" ClientInstanceName="lberror_name" runat="server" Text="กรุณากรอก E-mail ให้ถูกต้อง!!!" ForeColor="Red" Font-Bold="true"></dx:ASPxLabel>
                                            </div>
                                        </dx:LayoutItemNestedControlContainer>
                                    </LayoutItemNestedControlCollection>
                                </dx:LayoutItem>

                                <dx:LayoutItem Caption="ประเภท :" Name="type_individual_corporation" RequiredMarkDisplayMode="Hidden">
                                    <LayoutItemNestedControlCollection>
                                        <dx:LayoutItemNestedControlContainer>
                                            <dx:ASPxRadioButtonList ID="type" ClientInstanceName="type" runat="server" RepeatDirection="Horizontal" Theme="Moderno" Width="100%" Border-BorderStyle="None" FocusedStyle-Border-BorderStyle="None" EnableFocusedStyle="false">
                                                <Items>
                                                    <dx:ListEditItem Selected="true" Text="นิติบุคคล" Value="0" />
                                                    <dx:ListEditItem Text="บุคคลธรรมดา" Value="1" />
                                                </Items>
                                                <ClientSideEvents SelectedIndexChanged="function(s,e){
                                                    busi_type.PerformCallback();
                                                    }" />
                                            </dx:ASPxRadioButtonList>
                                            <%------------------------------------ส่วน Error---------------------------------------%>
                                            <div id="errortype" style="width: 100%; padding-left: 2px; display: none; margin-top: 3px;">
                                                <dx:ASPxLabel CssClass="ptext" Height="10" Font-Size="9" ID="ASPxLabel17" ClientInstanceName="lberror_name" runat="server" Text="กรุณาเลือกประเภท !!!" ForeColor="Red" Font-Bold="true"></dx:ASPxLabel>
                                            </div>
                                        </dx:LayoutItemNestedControlContainer>
                                    </LayoutItemNestedControlCollection>
                                </dx:LayoutItem>

                                <dx:LayoutItem Caption="ประเภทกิจการ :" Name="business_type">
                                    <LayoutItemNestedControlCollection>
                                        <dx:LayoutItemNestedControlContainer>
                                            <dx:ASPxComboBox ID="busi_type" TextField="business_type" ValueField="business_id" ClientInstanceName="busi_type" runat="server" ValueType="System.String" NullText="--เลือกประเภทกิจการ--" Width="100%" Theme="Moderno">
                                                <ValidationSettings Display="Dynamic" />
                                            </dx:ASPxComboBox>
                                            <%------------------------------------ส่วน Error---------------------------------------%>
                                            <div id="errorbusi_type" style="width: 100%; padding-left: 2px; display: none; margin-top: 3px;">
                                                <dx:ASPxLabel CssClass="ptext" Height="10" Font-Size="9" ID="ASPxLabel16" ClientInstanceName="lberror_name" runat="server" Text="กรุณาเลือกประเภทกิจการ !!!" ForeColor="Red" Font-Bold="true"></dx:ASPxLabel>
                                            </div>
                                        </dx:LayoutItemNestedControlContainer>
                                    </LayoutItemNestedControlCollection>
                                </dx:LayoutItem>
                                
                                <dx:LayoutItem Caption="Web site :" Name="web_site">
                                    <LayoutItemNestedControlCollection>
                                        <dx:LayoutItemNestedControlContainer>
                                            <dx:ASPxTextBox ID="web" ClientInstanceName="web" runat="server" Width="100%" Theme="Moderno">
                                                <ValidationSettings Display="Dynamic" />
                                            </dx:ASPxTextBox>
                                        </dx:LayoutItemNestedControlContainer>
                                    </LayoutItemNestedControlCollection>
                                </dx:LayoutItem>

                                <dx:LayoutItem Caption="Facebook page :" Name="facebook_page">
                                    <LayoutItemNestedControlCollection>
                                        <dx:LayoutItemNestedControlContainer>
                                            <dx:ASPxTextBox ID="fb_page" ClientInstanceName="fb_page" runat="server" Width="100%" Theme="Moderno">
                                                <ValidationSettings Display="Dynamic" />
                                            </dx:ASPxTextBox>
                                        </dx:LayoutItemNestedControlContainer>
                                    </LayoutItemNestedControlCollection>
                                </dx:LayoutItem>

                                <dx:LayoutItem Caption="หมายเหตุ :" Name="memo_note" Width="100%">
                                    <LayoutItemNestedControlCollection>
                                        <dx:LayoutItemNestedControlContainer>
                                            <dx:ASPxMemo ID="note" ClientInstanceName="note" runat="server" NullText="  หากมีรายละเอียดอื่น ๆ โปรดระบุ" Rows="6" Theme="Moderno">
                                                <ValidationSettings Display="Dynamic" />
                                            </dx:ASPxMemo>
                                        </dx:LayoutItemNestedControlContainer>
                                    </LayoutItemNestedControlCollection>
                                </dx:LayoutItem>
                            </Items>
                        </dx:LayoutGroup>
                        <%--ปุ่ม--%>
                        <dx:LayoutItem ShowCaption="False" HorizontalAlign="Right" Width="100%">
                            <LayoutItemNestedControlCollection>
                                <dx:LayoutItemNestedControlContainer>
                                    <dx:ASPxButton ID="bSubmit" runat="server" Text="บันทึก" Width="100" Theme="Moderno" AutoPostBack="false" AllowFocus="false">
                                        <ClientSideEvents Click="function(s, e){
                                            checktext();
                                        }" />
                                    </dx:ASPxButton>
                                    &nbsp;
                                 <dx:ASPxButton ID="bCancel" runat="server" Text="ยกเลิก" Width="100" Theme="Moderno" AutoPostBack="false" AllowFocus="false">
                                 </dx:ASPxButton>
                                </dx:LayoutItemNestedControlContainer>
                            </LayoutItemNestedControlCollection>
                        </dx:LayoutItem>
                    </Items>
                </dx:ASPxFormLayout>
            </dx:PanelContent>
        </PanelCollection>
    </dx:ASPxCallbackPanel>
</asp:Content>
