Imports Microsoft.Owin
Imports Owin

<Assembly: OwinStartup(GetType(SignalRChat.Startup))>
Namespace SignalRChat
    Partial Public Class Startup
        Public Sub Configuration(app As IAppBuilder)
            ' Any connection or hub wire up and configuration should go here
            app.MapHubs()
        End Sub
    End Class
End Namespace
