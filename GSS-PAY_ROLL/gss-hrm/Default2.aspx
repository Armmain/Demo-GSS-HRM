<%@ Page Title="" Language="VB" MasterPageFile="~/Master/MasterPage.master" AutoEventWireup="false" CodeFile="Default2.aspx.vb" Inherits="Default2" %>

<%@ Register Assembly="DevExpress.Web.v16.1, Version=16.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div style="margin: 10px auto;">
        <dx:ASPxButton ID="bShow" ClientInstanceName="bShow" runat="server" Text="เพิ่มข้อมูล" AllowFocus="false" AutoPostBack="false" Theme="Moderno">
        </dx:ASPxButton>
        &nbsp;
        <dx:ASPxButton ID="bDelete" ClientInstanceName="bDelete" runat="server" Text="ลบข้อมูล" AllowFocus="false" AutoPostBack="false" Theme="Moderno">
        </dx:ASPxButton>
    </div>
    <section id="Company_form">
        <dx:ASPxCallbackPanel ID="CallBack_Company_form" ClientInstanceName="CallBack_Company_form" runat="server" Width="100%">

            <PanelCollection>
                <dx:PanelContent>
                    <dx:ASPxFormLayout ID="CompanyFormLayout" ClientInstanceName="CompanyFormLayout" runat="server" Width="100%">
                        <SettingsAdaptivity AdaptivityMode="SingleColumnWindowLimit" SwitchToSingleColumnAtWindowInnerWidth="800" />
                        <Items>
                            <dx:LayoutGroup Caption="MASTER COMPANY" AlignItemCaptions="true" Name="master_company_add" GroupBoxDecoration="HeadingLine" SettingsItemCaptions-HorizontalAlign="Right" ColCount="2" Width="100%">
                                <GroupBoxStyle>
                                    <Caption Font-Bold="true" Font-Size="16" />
                                </GroupBoxStyle>
                                <Items>
                                    <%--1.รหัสบริษัท--%>
                                    <dx:LayoutItem Caption="รหัสบริษัท :" Name="company_id">
                                        <CaptionSettings Location="Left" HorizontalAlign="Right" VerticalAlign="Top"></CaptionSettings>
                                        <CaptionStyle CssClass="caption" />
                                        <LayoutItemNestedControlCollection>
                                            <dx:LayoutItemNestedControlContainer>
                                                <dx:ASPxTextBox ID="company_id" ClientInstanceName="company_id" runat="server" Theme="Moderno">
                                                    <ValidationSettings Display="Dynamic">
                                                    </ValidationSettings>
                                                </dx:ASPxTextBox>
                                                <%------------------------------------ส่วน Error---------------------------------------%>
                                                <div id="error_company_id" style="width: 100%; padding-left: 2px; display: none; margin-top: 3px;">
                                                    <dx:ASPxLabel CssClass="ptext" Height="10" Font-Size="9" ID="lberror_name" ClientInstanceName="lberror_name" runat="server" Text="กรุณากรอก CODE บริษัท !!!" ForeColor="Red" Font-Bold="true"></dx:ASPxLabel>
                                                </div>
                                            </dx:LayoutItemNestedControlContainer>
                                        </LayoutItemNestedControlCollection>
                                    </dx:LayoutItem>
                                    <%--2.ชื่อบริษัท--%>
                                    <dx:LayoutItem Caption="ชื่อบริษัท :" Name="company_name">
                                        <CaptionSettings Location="Left" HorizontalAlign="Right" VerticalAlign="Top"></CaptionSettings>
                                        <CaptionStyle CssClass="caption" />
                                        <LayoutItemNestedControlCollection>
                                            <dx:LayoutItemNestedControlContainer>
                                                <dx:ASPxTextBox ID="company_name" ClientInstanceName="company_name" runat="server" Theme="Moderno">
                                                    <ValidationSettings Display="Dynamic">
                                                    </ValidationSettings>
                                                </dx:ASPxTextBox>
                                                <%------------------------------------ส่วน Error---------------------------------------%>
                                                <div id="error_company_name" style="width: 100%; padding-left: 2px; display: none; margin-top: 3px;">
                                                    <dx:ASPxLabel CssClass="ptext" Height="10" Font-Size="9" ID="ASPxLabel1" ClientInstanceName="lberror_name" runat="server" Text="กรุณากรอก CODE บริษัท !!!" ForeColor="Red" Font-Bold="true"></dx:ASPxLabel>
                                                </div>
                                            </dx:LayoutItemNestedControlContainer>
                                        </LayoutItemNestedControlCollection>
                                    </dx:LayoutItem>
                                    <%--3.ที่อยู่บริษัท--%>
                                    <dx:LayoutItem Caption="ที่อยู่บริษัท :" Name="company_address">
                                        <CaptionSettings Location="Left" HorizontalAlign="Right" VerticalAlign="Top"></CaptionSettings>
                                        <CaptionStyle CssClass="caption" />
                                        <LayoutItemNestedControlCollection>
                                            <dx:LayoutItemNestedControlContainer>
                                                <dx:ASPxTextBox ID="company_address" ClientInstanceName="company_address" runat="server" Theme="Moderno">
                                                    <ValidationSettings Display="Dynamic">
                                                    </ValidationSettings>
                                                </dx:ASPxTextBox>
                                                <%------------------------------------ส่วน Error---------------------------------------%>
                                                <div id="error_company_address" style="width: 100%; padding-left: 2px; display: none; margin-top: 3px;">
                                                    <dx:ASPxLabel CssClass="ptext" Height="10" Font-Size="9" ID="ASPxLabel2" ClientInstanceName="lberror_name" runat="server" Text="กรุณากรอก CODE บริษัท !!!" ForeColor="Red" Font-Bold="true"></dx:ASPxLabel>
                                                </div>
                                            </dx:LayoutItemNestedControlContainer>
                                        </LayoutItemNestedControlCollection>
                                    </dx:LayoutItem>
                                    <%--4.รหัสประจำตัวผู้เสียภาษี--%>
                                    <dx:LayoutItem Caption="รหัสประจำตัวผู้เสียภาษี :" Name="company_tax_id">
                                        <CaptionSettings Location="Left" HorizontalAlign="Right" VerticalAlign="Top"></CaptionSettings>
                                        <CaptionStyle CssClass="caption" />
                                        <LayoutItemNestedControlCollection>
                                            <dx:LayoutItemNestedControlContainer>
                                                <dx:ASPxTextBox ID="company_tax_id" ClientInstanceName="company_tax_id" runat="server" Theme="Moderno">
                                                    <ValidationSettings Display="Dynamic">
                                                    </ValidationSettings>
                                                </dx:ASPxTextBox>
                                                <%------------------------------------ส่วน Error---------------------------------------%>
                                                <div id="error_company_tax_id" style="width: 100%; padding-left: 2px; display: none; margin-top: 3px;">
                                                    <dx:ASPxLabel CssClass="ptext" Height="10" Font-Size="9" ID="ASPxLabel3" ClientInstanceName="lberror_name" runat="server" Text="กรุณากรอก CODE บริษัท !!!" ForeColor="Red" Font-Bold="true"></dx:ASPxLabel>
                                                </div>
                                            </dx:LayoutItemNestedControlContainer>
                                        </LayoutItemNestedControlCollection>
                                    </dx:LayoutItem>
                                    <%--5.สำนักงานใหญ่/สาขา--%>
                                    <dx:LayoutItem Caption="สำนักงานใหญ่/สาขา :" Name="company_type" RequiredMarkDisplayMode="Hidden">
                                        <CaptionSettings Location="Left" HorizontalAlign="Right" VerticalAlign="Top"></CaptionSettings>
                                        <CaptionStyle CssClass="caption" />
                                        <LayoutItemNestedControlCollection>
                                            <dx:LayoutItemNestedControlContainer>
                                                <dx:ASPxRadioButtonList ID="company_type" ClientInstanceName="company_type" runat="server" RepeatDirection="Horizontal" Theme="Moderno" Width="100%" Border-BorderStyle="None" FocusedStyle-Border-BorderStyle="None" EnableFocusedStyle="false" Font-Size="14px">
                                                    <Items>
                                                        <dx:ListEditItem Selected="true" Text="สำนักงานใหญ่" Value="0" />
                                                        <dx:ListEditItem Text="สาขา" Value="1" />
                                                    </Items>
                                                    <ValidationSettings Display="Dynamic" />
                                                    <%--<ClientSideEvents SelectedIndexChanged="function(s,e){
                                                    branch_text();
                                                    
                                                }" />--%>
                                                </dx:ASPxRadioButtonList>
                                                <div id="Tbranch_n" style="display: none;">
                                                    <dx:ASPxTextBox ID="branch" ClientInstanceName="branch" runat="server" NullText="ระบุชื่อสาขาของท่าน" Width="100%" Theme="Moderno">
                                                        <ValidationSettings Display="Dynamic" />
                                                    </dx:ASPxTextBox>
                                                </div>
                                                <%------------------------------------ส่วน Error---------------------------------------%>
                                                <div id="errorbranch_office" style="width: 100%; padding-left: 2px; display: none; margin-top: 3px;">
                                                    <dx:ASPxLabel CssClass="ptext" Height="10" Font-Size="9" ID="ASPxLabel5" ClientInstanceName="lberror_name" runat="server" Text="กรุณากรอกชื่อสำนักงานใหญ่/สาขา !!!" ForeColor="Red" Font-Bold="true"></dx:ASPxLabel>
                                                </div>
                                            </dx:LayoutItemNestedControlContainer>
                                        </LayoutItemNestedControlCollection>
                                    </dx:LayoutItem>
                                    <%--6.เบอร์โทรศัพท์บริษัท--%>
                                    <dx:LayoutItem Caption="เบอร์โทรศัพท์บริษัท :" Name="company_telephone">
                                        <CaptionSettings Location="Left" HorizontalAlign="Right" VerticalAlign="Top"></CaptionSettings>
                                        <CaptionStyle CssClass="caption" />
                                        <LayoutItemNestedControlCollection>
                                            <dx:LayoutItemNestedControlContainer>
                                                <dx:ASPxTextBox ID="company_telephone" ClientInstanceName="company_telephone" runat="server" Theme="Moderno">
                                                    <ValidationSettings Display="Dynamic">
                                                    </ValidationSettings>
                                                </dx:ASPxTextBox>
                                                <%------------------------------------ส่วน Error---------------------------------------%>
                                                <div id="error_company_telephone" style="width: 100%; padding-left: 2px; display: none; margin-top: 3px;">
                                                    <dx:ASPxLabel CssClass="ptext" Height="10" Font-Size="9" ID="ASPxLabel4" ClientInstanceName="lberror_name" runat="server" Text="กรุณากรอก CODE บริษัท !!!" ForeColor="Red" Font-Bold="true"></dx:ASPxLabel>
                                                </div>
                                            </dx:LayoutItemNestedControlContainer>
                                        </LayoutItemNestedControlCollection>
                                    </dx:LayoutItem>
                                    <%--7.อีเมลบริษัท--%>
                                    <dx:LayoutItem Caption="อีเมลบริษัท :" Name="company_email">
                                        <CaptionSettings Location="Left" HorizontalAlign="Right" VerticalAlign="Top"></CaptionSettings>
                                        <CaptionStyle CssClass="caption" />
                                        <LayoutItemNestedControlCollection>
                                            <dx:LayoutItemNestedControlContainer>
                                                <dx:ASPxTextBox ID="company_email" ClientInstanceName="company_email" runat="server" Theme="Moderno">
                                                    <ValidationSettings Display="Dynamic">
                                                    </ValidationSettings>
                                                </dx:ASPxTextBox>
                                                <%------------------------------------ส่วน Error---------------------------------------%>
                                                <div id="error_company_email" style="width: 100%; padding-left: 2px; display: none; margin-top: 3px;">
                                                    <dx:ASPxLabel CssClass="ptext" Height="10" Font-Size="9" ID="ASPxLabel6" ClientInstanceName="lberror_name" runat="server" Text="กรุณากรอก CODE บริษัท !!!" ForeColor="Red" Font-Bold="true"></dx:ASPxLabel>
                                                </div>
                                            </dx:LayoutItemNestedControlContainer>
                                        </LayoutItemNestedControlCollection>
                                    </dx:LayoutItem>
                                    <%--8.โลโก้บริษัท--%>
                                    <dx:LayoutItem Caption="โลโก้บริษัท :" Name="company_logo">
                                        <CaptionSettings Location="Left" HorizontalAlign="Right" VerticalAlign="Top"></CaptionSettings>
                                        <CaptionStyle CssClass="caption" />
                                        <LayoutItemNestedControlCollection>
                                            <dx:LayoutItemNestedControlContainer>
                                                <dx:ASPxTextBox ID="company_logo" ClientInstanceName="company_logo" runat="server" Theme="Moderno">
                                                    <ValidationSettings Display="Dynamic">
                                                    </ValidationSettings>
                                                </dx:ASPxTextBox>
                                                <%------------------------------------ส่วน Error---------------------------------------%>
                                                <div id="error_company_logo" style="width: 100%; padding-left: 2px; display: none; margin-top: 3px;">
                                                    <dx:ASPxLabel CssClass="ptext" Height="10" Font-Size="9" ID="ASPxLabel7" ClientInstanceName="lberror_name" runat="server" Text="กรุณากรอก CODE บริษัท !!!" ForeColor="Red" Font-Bold="true"></dx:ASPxLabel>
                                                </div>
                                            </dx:LayoutItemNestedControlContainer>
                                        </LayoutItemNestedControlCollection>
                                    </dx:LayoutItem>
                                    <%--9.หมายเหตุ--%>
                                    <dx:LayoutItem Caption="หมายเหตุ :" Name="company_remark">
                                        <CaptionSettings Location="Left" HorizontalAlign="Right" VerticalAlign="Top"></CaptionSettings>
                                        <CaptionStyle CssClass="caption" />
                                        <LayoutItemNestedControlCollection>
                                            <dx:LayoutItemNestedControlContainer>
                                                <dx:ASPxTextBox ID="company_remark" ClientInstanceName="company_remark" runat="server" Theme="Moderno">
                                                    <ValidationSettings Display="Dynamic">
                                                    </ValidationSettings>
                                                </dx:ASPxTextBox>
                                                <%------------------------------------ส่วน Error---------------------------------------%>
                                                <%--<div id="error_company_remark" style="width: 100%; padding-left: 2px; display: none; margin-top: 3px;">
                                                    <dx:ASPxLabel CssClass="ptext" Height="10" Font-Size="9" ID="ASPxLabel8" ClientInstanceName="lberror_name" runat="server" Text="กรุณากรอก CODE บริษัท !!!" ForeColor="Red" Font-Bold="true"></dx:ASPxLabel>
                                                </div>--%>
                                            </dx:LayoutItemNestedControlContainer>
                                        </LayoutItemNestedControlCollection>
                                    </dx:LayoutItem>
                                    <%--10.วันที่บันทึก--%>
                                    <dx:LayoutItem Caption="วันที่บันทึก :" Name="create_date">
                                        <CaptionSettings Location="Left" HorizontalAlign="Right" VerticalAlign="Top"></CaptionSettings>
                                        <CaptionStyle CssClass="caption" />
                                        <LayoutItemNestedControlCollection>
                                            <dx:LayoutItemNestedControlContainer>
                                                <dx:ASPxCalendar ID="create_date" ClientInstanceName="create_date" runat="server" Theme="Moderno"></dx:ASPxCalendar>
                                                <%------------------------------------ส่วน Error---------------------------------------%>
                                                <div id="error_create_date" style="width: 100%; padding-left: 2px; display: none; margin-top: 3px;">
                                                    <dx:ASPxLabel CssClass="ptext" Height="10" Font-Size="9" ID="ASPxLabel8" ClientInstanceName="lberror_name" runat="server" Text="กรุณากรอก CODE บริษัท !!!" ForeColor="Red" Font-Bold="true"></dx:ASPxLabel>
                                                </div>
                                            </dx:LayoutItemNestedControlContainer>
                                        </LayoutItemNestedControlCollection>
                                    </dx:LayoutItem>



                                </Items>
                            </dx:LayoutGroup>
                        </Items>
                    </dx:ASPxFormLayout>
                </dx:PanelContent>
            </PanelCollection>
        </dx:ASPxCallbackPanel>
    </section>
</asp:Content>

