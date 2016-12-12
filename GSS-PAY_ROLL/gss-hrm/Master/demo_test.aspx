<%@ Page Title="" Language="VB" MasterPageFile="~/Master/MasterPage.master" AutoEventWireup="false" CodeFile="demo_test.aspx.vb" Inherits="Master_demo_test" %>

<%@ Register Assembly="DevExpress.Web.v16.1, Version=16.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

     <script type="text/javascript">

        function checktext() {
            if (txtname.GetText() == "") {

                txtname.Focus();
                $('#<%=txtname.ClientID%>').addClass("Errortext");
                $('#errorname').css("display", "block");
                //-
                $('#<%=txtlasname.ClientID%>').removeClass("Errortext");
                $('#errorlasname').css("display", "none");

            } else if (txtlasname.GetText() == "") {

                txtlasname.Focus();
                $('#<%=txtlasname.ClientID%>').addClass("Errortext");
                $('#errorlasname').css("display", "block");
                //-
                $('#<%=txtname.ClientID%>').removeClass("Errortext");
                $('#errorname').css("display", "none");

            } else {

                $('#<%=txtname.ClientID%>').removeClass("Errortext");
                $('#errorname').css("display", "none");
                $('#<%=txtlasname.ClientID%>').removeClass("Errortext");
                $('#errorlasname').css("display", "none");

            }
        }

    </script>

    <dx:ASPxFormLayout ID="ASPxFormLayout1" runat="server" Theme="Moderno" Width="100%">
        <SettingsAdaptivity AdaptivityMode="SingleColumnWindowLimit" SwitchToSingleColumnAtWindowInnerWidth="800" />
        <SettingsItemCaptions HorizontalAlign="Right" VerticalAlign="Top" />
        <Items>
            <dx:LayoutGroup ColCount="2" GroupBoxDecoration="HeadingLine" Caption="text system">
                <GroupBoxStyle>
                    <Caption Font-Bold="true" Font-Size="16" />
                </GroupBoxStyle>
                <Items>

                    <dx:LayoutItem Caption="ชื่อ :" Name="name" CaptionStyle-CssClass="Captionitem-resporn">
                        <LayoutItemNestedControlCollection>
                            <dx:LayoutItemNestedControlContainer>

                                <dx:ASPxTextBox ID="txtname" ClientInstanceName="txtname" runat="server" Width="100%" Theme="Moderno" CssClass="txtradius"></dx:ASPxTextBox>
                                <%------------------------------------ส่วน Error---------------------------------------%>
                                <div id="errorname" style="width: 100%; padding-left: 2px; display: none; margin-top: 3px;">
                                    <dx:ASPxLabel CssClass="ptext" Height="10" Font-Size="9" ID="lberror_name" ClientInstanceName="lberror_name" runat="server" Text="กรุณากรอก ชื่อ !!!" ForeColor="Red" Font-Bold="true"></dx:ASPxLabel>
                                </div>

                            </dx:LayoutItemNestedControlContainer>
                        </LayoutItemNestedControlCollection>
                    </dx:LayoutItem>

                    <dx:LayoutItem Caption="นามสกุล :" Name="name" CaptionStyle-CssClass="Captionitem-resporn">
                        <LayoutItemNestedControlCollection>
                            <dx:LayoutItemNestedControlContainer>

                                <dx:ASPxTextBox ID="txtlasname" ClientInstanceName="txtlasname" runat="server" Width="100%" Theme="Moderno" CssClass="txtradius"></dx:ASPxTextBox>
                                <%------------------------------------ส่วน Error---------------------------------------%>
                                <div id="errorlasname" style="width: 100%; padding-left: 2px; display: none; margin-top: 3px;">
                                    <dx:ASPxLabel CssClass="ptext" Height="10" Font-Size="9" ID="lberror_lasname" ClientInstanceName="lberror_lasname" runat="server" Text="กรุณากรอก นามสกุล !!!" ForeColor="Red" Font-Bold="true"></dx:ASPxLabel>
                                </div>

                            </dx:LayoutItemNestedControlContainer>
                        </LayoutItemNestedControlCollection>
                    </dx:LayoutItem>

                    <dx:LayoutItem ShowCaption="False" HorizontalAlign="Right" Width="100%">
                        <LayoutItemNestedControlCollection>
                            <dx:LayoutItemNestedControlContainer>

                                <dx:ASPxButton ID="bSubmit" runat="server" Text="Submit" Width="100" Theme="Moderno" AutoPostBack="false" AllowFocus="false">
                                    <ClientSideEvents Click="function(s, e){
                                            checktext();
                                        }" />
                                </dx:ASPxButton>
                                
                                 &nbsp;

                                 <dx:ASPxButton ID="ASPxButton1" runat="server" Text="Submit" Width="100" Theme="Moderno" AutoPostBack="false" AllowFocus="false">
                                </dx:ASPxButton>

                            </dx:LayoutItemNestedControlContainer>
                        </LayoutItemNestedControlCollection>
                    </dx:LayoutItem>

                </Items>
            </dx:LayoutGroup>
        </Items>
    </dx:ASPxFormLayout>
</asp:Content>

