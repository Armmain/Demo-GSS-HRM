Imports Microsoft.AspNet.SignalR

Public Class MyHub
    Inherits Hub
    Public Sub Send(name As String, message As String)
        Clients.All.broadcastMessage(name, message)
    End Sub
End Class
