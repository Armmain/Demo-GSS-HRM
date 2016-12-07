Imports System.IO
Imports System.Data
Imports System.Data.SqlClient
Imports DevExpress.Web
Partial Class Master_master_add_company
    Inherits System.Web.UI.Page
    Dim ConnectionStrings As String = ConfigurationManager.ConnectionStrings("HRM_GSS").ConnectionString
    Private Const UploadDirectory As String = "~/upload_Logo_IMG/"
    Dim db As New ConDb

    Private Sub Upload_logo_FileUploadComplete(sender As Object, e As FileUploadCompleteEventArgs) Handles Upload_logo.FileUploadComplete
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
                                            INSERT INTO tb_hrm_master_company (code_com, name_com_th, name_com_en, name_com, tax_id, office, branch, address_num, address_dis, address_can, address_cou, zip_code, tel_home, tel_phone, tel_message, email_1, email_2, busi_type, type, web, fb_page, note)
                                            VALUES                            (@code_com, @name_com_th, @name_com_en, @name_com, @tax_id, @office, @branch, @address_num, @address_dis, @address_can, @address_cou, @zip_code, @tel_home, @tel_phone, @tel_message, @email_1, @email_2, @busi_type, @type, @web, @fb_page, @note)
                                      </sql>.Value
            Dim connection As New SqlConnection(ConnectionStrings)
            Using cmd As New SqlCommand(sql_inser, connection)

                With cmd.Parameters
                    .Add(New SqlParameter("@code_com", code_com.Text))
                    .Add(New SqlParameter("@name_com_th", name_com_th.Text))
                    .Add(New SqlParameter("@name_com_en", name_com_en.Text))
                    .Add(New SqlParameter("@name_com", name_com.Text))
                    .Add(New SqlParameter("@tax_id", tax_id.Text))
                    .Add(New SqlParameter("@office", branch_office.Value))
                    .Add(New SqlParameter("@branch", IIf(branch_office.Value = 1, branch_n.Text, DBNull.Value)))
                    .Add(New SqlParameter("@address_num", address_num.Text))
                    .Add(New SqlParameter("@address_dis", address_dis.Text))
                    .Add(New SqlParameter("@address_can", address_can.Text))
                    .Add(New SqlParameter("@address_cou", address_cou.Text))
                    .Add(New SqlParameter("@zip_code", zip_code.Text))
                    .Add(New SqlParameter("@tel_home", tel_home.Text))
                    .Add(New SqlParameter("@tel_phone", tel_phone.Text))
                    .Add(New SqlParameter("@tel_message", tel_message.Text))
                    .Add(New SqlParameter("@email_1", email_1.Text))
                    .Add(New SqlParameter("@email_2", email_2.Text))
                    .Add(New SqlParameter("@busi_type", busi_type.Text))
                    .Add(New SqlParameter("@type", type.Value))
                    .Add(New SqlParameter("@web", web.Text))
                    .Add(New SqlParameter("@fb_page", fb_page.Text))
                    .Add(New SqlParameter("@note", note.Text))
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
        tax_id.Text = ""
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
        note.Text = ""
    End Sub

    Private Sub Master_master_add_company_Load(sender As Object, e As EventArgs) Handles Me.Load

        If Not IsPostBack Then

            load_business_type()

        End If

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

End Class
