Imports Microsoft.VisualBasic
Imports System.Data
Imports System.Data.SqlClient
Imports System.Configuration
Public Class ConDb
    Dim Conn As SqlConnection = New SqlConnection(dbConn())
    Public DA As SqlDataAdapter
    Public DT As DataTable
    Public Function dbConn() As String

        Return ConfigurationManager.ConnectionStrings("HRM_GSS").ConnectionString

    End Function

    Public Function GetDataTable(ByVal StrSql As String, Optional ByVal TableName As String = "Table1") As DataTable
        'Dim DA As New sqlDataAdapter(StrSql, dbConn())
        DA = New SqlDataAdapter(StrSql, dbConn())
        DT = New DataTable(TableName)
        Try
            DA.Fill(DT)
            Return DT
        Catch myerror As SqlException
            Return Nothing
        End Try

    End Function

End Class
