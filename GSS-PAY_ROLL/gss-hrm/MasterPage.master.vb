Imports System.Data
Imports System.IO
Imports System.Data.SqlClient
Imports DevExpress.Web
Partial Class MasterPage
    Inherits System.Web.UI.MasterPage
    Dim strConnectionStrings As String = ConfigurationManager.ConnectionStrings("HRM_GSS").ConnectionString
    Dim db As New ConDb

    Private Sub MasterPage_Load(sender As Object, e As EventArgs) Handles Me.Load

        If Not IsPostBack Then

            load_menu()

        End If

    End Sub

    Protected Sub load_menu()

        Menubar.Groups.Clear()

        Dim sql As String = <sql>
                                    select node_id, name_menuTH, name_menuEN, menu_order
                                    from tb_hrm_menu 
                                    where menu_flg != 1
                            </sql>.Value
        Dim Dt As DataTable = db.GetDataTable(sql)
        Dim rang As Integer = 0

        If Dt.Rows.Count > 0 Then

            For i = 0 To Dt.Rows.Count - 1

                Dim sqladd_sub As String = <sql>
                                                select subparent_id, name_menuTH, name_menuEN, menu_url, menu_icon, menu_order
                                                from tb_hrm_submenu 
                                                where subparent_id = '<%= Dt.Rows(i).Item("node_id") %>' and menu_flg != 1
                                           </sql>.Value
                Dim DT_sub As DataTable = db.GetDataTable(sqladd_sub)

                If DT_sub.Rows.Count > 0 Then

                    Menubar.Groups.Add(Dt.Rows(i).Item("name_menuTH"))

                    For r = 0 To DT_sub.Rows.Count - 1

                        Menubar.Groups(rang).Items.Add(DT_sub.Rows(r).Item("name_menuTH"), IIf(IsDBNull(DT_sub.Rows(r).Item("menu_url")), "404page.aspx", DT_sub.Rows(r).Item("menu_url")), Checkimg_menu(IIf(IsDBNull(DT_sub.Rows(r).Item("menu_icon")), "", DT_sub.Rows(r).Item("menu_icon"))))

                    Next

                    rang += 1

                End If

            Next

        End If

    End Sub

    Private Function Checkimg_menu(ByVal url As String) As String

        Dim img_url As String
        If url <> "" Then

            If File.Exists(Server.MapPath(url)) Then

                img_url = url

            Else

                img_url = "~/Content/Images/icon/document.png"

            End If

        Else

            img_url = "~/Content/Images/icon/document.png"

        End If

        Return img_url

    End Function

End Class

