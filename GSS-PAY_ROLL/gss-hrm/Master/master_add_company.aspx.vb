Imports System.IO
Imports System.Data
Imports System.Data.SqlClient
Imports DevExpress.Web
Partial Class Master_master_add_company
    Inherits System.Web.UI.Page
    Dim ConnectionStrings As String = ConfigurationManager.ConnectionStrings("HRM_GSS").ConnectionString
    Private Const UploadDirectory As String = "~/upload_Logo_IMG/"
    Dim db As New ConDb

    Private Sub company_logo_add_FileUploadComplete(sender As Object, e As FileUploadCompleteEventArgs) Handles company_logo_add.FileUploadComplete
        Dim resultExtension As String = Path.GetExtension(e.UploadedFile.FileName)
        Dim resultFileName As String = Path.ChangeExtension(Path.GetRandomFileName(), resultExtension)
        Dim resultFileUrl As String = UploadDirectory & resultFileName
        Dim resultFilePath As String = MapPath(resultFileUrl)
        e.UploadedFile.SaveAs(resultFilePath)

        Dim name As String = e.UploadedFile.FileName
        Dim url As String = ResolveClientUrl(resultFileUrl)
        Dim sizeInKilobytes As Long = e.UploadedFile.ContentLength / 1024
        Dim sizeText As String = sizeInKilobytes.ToString() & " KB"
        e.CallbackData = name & "|" & url & "|" & sizeText
    End Sub


    Private Sub callback_add_com_Callback(sender As Object, e As CallbackEventArgsBase) Handles callback_add_com.Callback
        If e.Parameter = "save" Then

            Dim sql_inser As String = <sql>
                                            INSERT INTO tb_hrm_master_company (company_code_com, company_name_com_th, company_name_com_en, company_name_com, company_tax_id, company_office, company_branch, company_address_num, company_address_dis, company_address_can, company_address_cou, company_zip_code, company_tel_home, company_tel_phone, company_tel_message, company_email_1, company_email_2, company_type, company_busi_type, company_web, company_fb_page, company_note, company_date)
                                            VALUES                            (@company_code_com, @company_name_com_th, @company_name_com_en, @company_name_com, @company_tax_id, @company_office, @company_branch, @company_address_num, @company_address_dis, @company_address_can, @company_address_cou, @company_zip_code, @company_tel_home, @company_tel_phone, @company_tel_message, @company_email_1, @company_email_2, @company_type, @company_busi_type, @company_web, @company_fb_page, @company_note, @company_date)
                                      </sql>.Value
            Dim connection As New SqlConnection(ConnectionStrings)
            Using cmd As New SqlCommand(sql_inser, connection)

                With cmd.Parameters
                    .Add(New SqlParameter("@company_code_com", code_com.Text))
                    .Add(New SqlParameter("@company_name_com_th", name_com_th.Text))
                    .Add(New SqlParameter("@company_name_com_en", name_com_en.Text))
                    .Add(New SqlParameter("@company_name_com", name_com.Text))
                    .Add(New SqlParameter("@company_tax_id", company_tax_id.Text))
                    .Add(New SqlParameter("@company_office", branch_office.Value))
                    .Add(New SqlParameter("@company_branch", IIf(branch_office.Value = 1, branch_n.Text, DBNull.Value)))
                    .Add(New SqlParameter("@company_address_num", address_num.Text))
                    .Add(New SqlParameter("@company_address_dis", address_dis.Text))
                    .Add(New SqlParameter("@company_address_can", address_can.Text))
                    .Add(New SqlParameter("@company_address_cou", address_cou.Text))
                    .Add(New SqlParameter("@company_zip_code", zip_code.Text))
                    .Add(New SqlParameter("@company_tel_home", tel_home.Text))
                    .Add(New SqlParameter("@company_tel_phone", tel_phone.Text))
                    .Add(New SqlParameter("@company_tel_message", tel_message.Text))
                    .Add(New SqlParameter("@company_email_1", email_1.Text))
                    .Add(New SqlParameter("@company_email_2", email_2.Text))
                    .Add(New SqlParameter("@company_type", type.Value))
                    .Add(New SqlParameter("@company_busi_type", busi_type.Text))
                    .Add(New SqlParameter("@company_web", web.Text))
                    .Add(New SqlParameter("@company_fb_page", fb_page.Text))
                    .Add(New SqlParameter("@company_note", company_remark.Text))
                    .Add(New SqlParameter("@company_date", Date.Now))
                End With
                connection.Open()
                cmd.ExecuteNonQuery()
                cmd.Parameters.Clear()
                connection.Close()
            End Using
            clearText()

        ElseIf e.Parameter = "edit" Then
            Dim sql_edit As String = <sql>
                                                UPDATE      tb_hrm_master_company 
                                                SET         company_code_com = @company_code_com, company_name_com_th = @company_name_com_th, company_name_com_en = @company_name_com_en, company_name_com = @company_name_com, company_tax_id = @company_tax_id, company_office = @company_office, company_branch = @company_branch, company_address_num = @company_address_num, company_address_dis = @company_address_dis, company_address_can = @company_address_can, company_address_cou = @company_address_cou, company_zip_code = @company_zip_code, company_tel_home = @company_tel_home, company_tel_phone = @company_tel_phone, company_tel_message = @company_tel_message, company_email_1 = @company_email_1, company_email_2 = @company_email_2, company_type = @company_type, company_busi_type = @company_busi_type, company_web = @company_web, company_fb_page = @company_fb_page, company_note = @company_note, company_date_update = @company_date_update
                                                WHERE       company_no = @id
                                         </sql>.Value
            Dim connection As New SqlConnection(ConnectionStrings)
            Using cmd As New SqlCommand(sql_edit, connection)
                With cmd.Parameters
                    .Add(New SqlParameter("@company_code_com", code_com.Text))
                    .Add(New SqlParameter("@company_name_com_th", name_com_th.Text))
                    .Add(New SqlParameter("@company_name_com_en", name_com_en.Text))
                    .Add(New SqlParameter("@company_name_com", name_com.Text))
                    .Add(New SqlParameter("@company_tax_id", company_tax_id.Text))
                    .Add(New SqlParameter("@company_office", branch_office.Value))
                    .Add(New SqlParameter("@company_branch", IIf(branch_office.Value = 1, branch_n.Text, DBNull.Value)))
                    .Add(New SqlParameter("@company_address_num", address_num.Text))
                    .Add(New SqlParameter("@company_address_dis", address_dis.Text))
                    .Add(New SqlParameter("@company_address_can", address_can.Text))
                    .Add(New SqlParameter("@company_address_cou", address_cou.Text))
                    .Add(New SqlParameter("@company_zip_code", zip_code.Text))
                    .Add(New SqlParameter("@company_tel_home", tel_home.Text))
                    .Add(New SqlParameter("@company_tel_phone", tel_phone.Text))
                    .Add(New SqlParameter("@company_tel_message", tel_message.Text))
                    .Add(New SqlParameter("@company_email_1", email_1.Text))
                    .Add(New SqlParameter("@company_email_2", email_2.Text))
                    .Add(New SqlParameter("@company_type", type.Value))
                    .Add(New SqlParameter("@company_busi_type", busi_type.Text))
                    .Add(New SqlParameter("@company_web", web.Text))
                    .Add(New SqlParameter("@company_fb_page", fb_page.Text))
                    .Add(New SqlParameter("@company_note", company_remark.Text))
                    .Add(New SqlParameter("@company_date_update", Date.Now))
                    .Add(New SqlParameter("@id", txtkey.Text))
                End With
                connection.Open()
                cmd.ExecuteNonQuery()
                cmd.Parameters.Clear()
                connection.Close()
            End Using

            clearText()

        End If
    End Sub
    Sub clearText()
        code_com.Text = ""
        name_com_th.Text = ""
        name_com_en.Text = ""
        name_com.Text = ""
        company_tax_id.Text = ""
        branch_office.Value = 0
        branch_n.Text = ""
        address_num.Text = ""
        address_dis.Text = ""
        address_can.Text = ""
        address_cou.Text = ""
        zip_code.Text = ""
        tel_home.Text = ""
        tel_phone.Text = ""
        tel_message.Text = ""
        email_1.Text = ""
        email_2.Text = ""
        busi_type.Text = ""
        type.Value = 0
        web.Text = ""
        fb_page.Text = ""
        company_remark.Text = ""
    End Sub

    Private Sub Master_master_add_company_Load(sender As Object, e As EventArgs) Handles Me.Load

        If Not IsPostBack Then

            load_business_type()

        End If
        loadGrid()
    End Sub

    Private Sub loadGrid()
        Dim sql_select As String = <sql>
                                       SELECT   CONVERT(varchar(10), company_no) as company_no
                                                , company_code_com, company_name_com_th, company_name_com_en
                                                , CONCAT(company_address_num, ' ' + company_address_dis, ' ' + company_address_can, ' ' + company_address_cou, ' ' + company_zip_code) as company_address
                                                , CONCAT(company_tel_home, ' ' + company_tel_phone, ' ' + company_tel_message) as company_tel
                                                , company_note
                                                , company_name_com, company_tax_id, company_office, company_branch, company_email_1, company_email_2, company_type, company_busi_type, company_web, company_fb_page
                                       FROM     tb_hrm_master_company
                                       WHERE    company_flg = 0
                                   </sql>.Value
        Dim myCommand As New SqlDataAdapter(sql_select, ConnectionStrings)
        Dim dt As New DataTable("dt1")
        myCommand.Fill(dt)
        grid_show_company.DataSource = dt
        grid_show_company.DataBind()

    End Sub

    Protected Sub load_business_type()

        Dim sql As String = <sql>
                                SELECT      business_id, business_type
                                FROM        tb_hrm_business_type
                                WHERE       business_status = '<%= type.Value %>'
                            </sql>
        Dim dt_type As DataTable = db.GetDataTable(sql)

        busi_type.DataSource = dt_type
        busi_type.DataBind()

    End Sub

    Private Sub busi_type_Callback(sender As Object, e As CallbackEventArgsBase) Handles busi_type.Callback
        load_business_type()


    End Sub

    Private Sub CallbackPanel_GridView_Callback(sender As Object, e As CallbackEventArgsBase) Handles CallbackPanel_GridView.Callback
        If e.Parameter = "delete" Then
            For i = 0 To ASPxListBox1.Items.Count - 1
                Dim sql_delete As String = <sql>
                                               update   tb_hrm_master_company set company_flg = 1
                                               WHERE    company_no = '<%= ASPxListBox1.Items(i).Text %>'
                                           </sql>.Value
                Dim connection As New SqlConnection(ConnectionStrings)
                Dim cmd As New SqlCommand(sql_delete, connection)
                connection.Open()
                cmd.ExecuteNonQuery()
                connection.Close()
            Next
        End If
        loadGrid()
    End Sub

    Private Sub grid_show_company_HtmlDataCellPrepared(sender As Object, e As ASPxGridViewTableDataCellEventArgs) Handles grid_show_company.HtmlDataCellPrepared
        Dim bEditData As ASPxButton = TryCast(grid_show_company.FindRowCellTemplateControl(e.VisibleIndex, Nothing, "bEditData"), ASPxButton)
        bEditData.ClientSideEvents.Click = "function(s, e){GetEdit('" & e.KeyValue & "@d" & e.GetValue("company_code_com") & "@d" & e.GetValue("company_name_com_th") & "@d" & e.GetValue("company_name_com_en") & "@d" & e.GetValue("company_name_com") & "@d" & e.GetValue("company_tax_id") & "@d" & e.GetValue("company_office") & "@d" & e.GetValue("company_branch") & "@d" & e.GetValue("company_address") & "@d" & e.GetValue("company_tel") & "@d" & e.GetValue("company_email_1") & "@d" & e.GetValue("company_email_2") & "@d" & e.GetValue("company_type") & "@d" & e.GetValue("company_busi_type") & "@d" & e.GetValue("company_web") & "@d" & e.GetValue("company_fb_page") & "@d" & e.GetValue("company_note") & "')}"
    End Sub
End Class
